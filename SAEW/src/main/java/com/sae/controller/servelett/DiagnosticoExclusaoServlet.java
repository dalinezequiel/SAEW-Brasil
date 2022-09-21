package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.sae.dao.*;
import com.sae.model.AtributoModel;

/**
 * Servlet implementation class DiagnosticoExclusaoServlet
 */
public class DiagnosticoExclusaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DiagnosticoExclusaoServlet() {
		super();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		atr.setAnyArrayString(request.getParameter("exclusao").trim().split("%", 2));

		// EXCLUINDO O PACIENTE TAMBÉM
		atr.setVarInt(Integer.parseInt(atr.getAnyArrayString()[1].trim()));
		if (PacienteDAO.getExistenciaDoPacienteById(atr.getVarInt())) {
			atr.setVarInt(PacienteDAO.listaPacienteById(atr.getVarInt()).get(0).getIdPaciente());
			PacienteDAO.deletePacienteById(atr.getVarInt());
		}

		// EXCLUINDO O DIAGNÓSTICO
		atr.setVarInt(Integer.parseInt(atr.getAnyArrayString()[0].trim()));
		this.tratamentoDoPossivelErro(DiagnosticoDAO.deleteDiagnosticoById(atr.getVarInt()), request, response);
	}

	// TRATAMENTO DO ERRO AO DELETAR DIAGNÓSTICO DO PACIENTE
	protected void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/diagnostico_consult.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
