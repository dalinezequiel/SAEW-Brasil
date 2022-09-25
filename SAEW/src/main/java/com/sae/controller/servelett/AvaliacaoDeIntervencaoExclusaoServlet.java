package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.sae.dao.AvaliacaoDeIntervencaoDAO;
import com.sae.model.AtributoModel;

/**
 * Servlet implementation class AvaliacaoDeIntervencaoExclusaoServlet
 */
public class AvaliacaoDeIntervencaoExclusaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AvaliacaoDeIntervencaoExclusaoServlet() {
		super();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		atr.setAnyArrayString(request.getParameter("exclusao").trim().split("%", 2));
		// EXCLUINDO A AVALIAÇÃO DA INTERVENÇÃO
		atr.setVarInt(Integer.parseInt(atr.getAnyArrayString()[0].trim()));
		this.tratamentoDoPossivelErro(AvaliacaoDeIntervencaoDAO.deleteAvaliacaoDeIntervencaoById(atr.getVarInt()),
				request, response);
	}

	// TRATAMENTO DO ERRO AO DELETAR INTERVENÇÃO DO PACIENTE
	protected void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/avaliacao_intervencao_consult.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
