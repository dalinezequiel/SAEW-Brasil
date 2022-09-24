package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.sae.dao.IntervencaoDAO;
import com.sae.model.AtributoModel;

/**
 * Servlet implementation class IntervencaoExclusaoServlet
 */
public class IntervencaoExclusaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IntervencaoExclusaoServlet() {
		super();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		atr.setAnyArrayString(request.getParameter("exclusao").trim().split("%", 2));

		// EXCLUINDO A INTERVENÇÃO
		atr.setVarInt(Integer.parseInt(atr.getAnyArrayString()[0].trim()));
		this.tratamentoDoPossivelErro(IntervencaoDAO.deleteIntervencaoById(atr.getVarInt()), request, response);
	}

	// TRATAMENTO DO ERRO AO DELETAR INTERVENÇÃO DO PACIENTE
	protected void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/intervencoes_consult.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
