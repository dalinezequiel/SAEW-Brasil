package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;

import com.sae.dao.DiagnosticoDAO;
import com.sae.dao.PerfusaoTissularDAO;
import com.sae.model.AtributoModel;
import com.sae.model.DiagnosticoModel;
import com.sae.model.PerfusaoTissularModel;

/**
 * Servlet implementation class DiagnosticoActualizacaoServlet
 */
public class DiagnosticoActualizacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DiagnosticoModel diag = null;
	private ArrayList<String> lista = null;
	private PerfusaoTissularModel ptModel = null;
	private ArrayList<PerfusaoTissularModel> listaPt = null;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DiagnosticoActualizacaoServlet() {
		super();
		listaPt = PerfusaoTissularDAO.listaPerfusaoTissular();
		ptModel = new PerfusaoTissularModel();
		diag = new DiagnosticoModel();
		lista = new ArrayList<String>();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		atr.setAnyArrayString(request.getParameterValues("diagnostico"));
		lista.clear();
		if (atr.getAnyArrayString() != null) {
			for (int i = 0; i < atr.getAnyArrayString().length; i++) {
				lista.add(atr.getAnyArrayString()[i]);
			}
		}

		if (request.getParameter("perfusao") != null) {
			lista.add(request.getParameter("perfusao"));
		}

		if (lista != null) {
			this.tratamentoDoPossivelErro(this.dado_diagnostico(diag, request, response), request, response);
		}
	}

	// DADDOS DO DIAGNÓSTCO
	public boolean dado_diagnostico(DiagnosticoModel diag, HttpServletRequest request, HttpServletResponse response) {
		boolean rsp = false;
		ptModel.setNomeModel("Perfusão tíssular");
		DiagnosticoDAO.deleteDiagnosticoById(Integer.parseInt(request.getParameter("cod_diagt").trim()));
		for (int i = 0; i < lista.size(); i++) {

			diag.setIdDiagnostico(Integer.parseInt(request.getParameter("cod_diagt").trim()));

			if (lista.get(i).equals(listaPt.get(0).getPerfusaoTissular())) {
				diag.setDiagnostico(ptModel.getNomeModel());
				diag.setResposta(listaPt.get(0).getPerfusaoTissular());

			} else if (lista.get(i).equals(listaPt.get(1).getPerfusaoTissular())) {
				diag.setDiagnostico(ptModel.getNomeModel());
				diag.setResposta(listaPt.get(1).getPerfusaoTissular());

			} else if (lista.get(i).equals(listaPt.get(2).getPerfusaoTissular())) {
				diag.setDiagnostico(ptModel.getNomeModel());
				diag.setResposta(listaPt.get(2).getPerfusaoTissular());

			} else if (lista.get(i).equals(listaPt.get(3).getPerfusaoTissular())) {
				diag.setDiagnostico(ptModel.getNomeModel());
				diag.setResposta(listaPt.get(3).getPerfusaoTissular());

			} else if (lista.get(i).equals(listaPt.get(4).getPerfusaoTissular())) {
				diag.setDiagnostico(ptModel.getNomeModel());
				diag.setResposta(listaPt.get(4).getPerfusaoTissular());

			} else {
				diag.setDiagnostico(lista.get(i));
				diag.setResposta("Sim");
			}

			diag.setObservacao(request.getParameter("obs"));
			diag.setDataUltimaActualizacao(Date.valueOf(LocalDate.now()));
			diag.setDataRegisto(Date.valueOf(LocalDate.now()));
			diag.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt").trim()));
			diag.setPaciente(request.getParameter("paciente"));

			rsp = DiagnosticoDAO.cadastroDeDiagnostico(diag);
		}
		return rsp;
	}

	// TRATAMENTO DO ERRO AO ACTUALIZAR DIAGNÓSTICO DO PACIENTE
	protected void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/diagnostico_consult.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
