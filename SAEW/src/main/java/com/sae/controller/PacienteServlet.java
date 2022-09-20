package com.sae.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import com.sae.dao.DiagnosticoDAO;
import com.sae.dao.PacienteDAO;
import com.sae.dao.PerfusaoTissularDAO;
import com.sae.model.*;

/**
 * Servlet implementation class PacienteServlet
 */
public class PacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PacienteModel pat = null;
	private DiagnosticoModel diag = null;
	private ArrayList<String> lista = null;
	private PerfusaoTissularModel ptModel = null;
	private ArrayList<PerfusaoTissularModel> listaPt = null;
	private AtributoModel atr = null;

	public PacienteServlet() {
		super();
		pat = new PacienteModel();
		listaPt = PerfusaoTissularDAO.listaPerfusaoTissular();
		ptModel = new PerfusaoTissularModel();
		diag = new DiagnosticoModel();
		lista = new ArrayList<String>();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		atr.setAnyArrayString(request.getParameterValues("diagnostico"));
		atr.setVarString(request.getParameter("salva_paciente"));

		if (atr.getAnyArrayString() != null) {
			for (int i = 0; i < atr.getAnyArrayString().length; i++) {
				lista.add(atr.getAnyArrayString()[i]);
			}
		}

		if (request.getParameter("perfusao") != null) {
			lista.add(request.getParameter("perfusao"));
		}

		if (!lista.isEmpty()) {
			if (atr.getVarString().equals("Sim")) {
				tratamentoDoPossivelErro(this.dado_paciente(diag, pat, request, response), request, response);
				lista.clear();

			} else {
				tratamentoDoPossivelErro(this.dado_diagnostico(diag, request, response), request, response);
				lista.clear();
			}
		} else {
			tratamentoDoPossivelErro(false, request, response);
		}
	}

	// DADDOS DO DIAGNÓSTCO
	public boolean dado_diagnostico(DiagnosticoModel diag, HttpServletRequest request, HttpServletResponse response) {
		boolean rsp = false;
		ptModel.setNomeModel("Perfusão tíssular");
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

	// DADDOS DO PACIENTE
	public boolean dado_paciente(DiagnosticoModel diag, PacienteModel pat, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		boolean rsp = false;
		pat.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt").trim()));
		pat.setPaciente(request.getParameter("paciente"));
		pat.setDataNascimento(Date.valueOf(request.getParameter("data_nascimento")));
		pat.setLeito(Integer.parseInt(request.getParameter("leito")));
		pat.setQueixaPrincipal(request.getParameter("queixa_principal"));
		pat.setDataInternacao(Date.valueOf(request.getParameter("data_internacao")));
		pat.setDataRegisto(Date.valueOf(LocalDate.now()));

		if (PacienteDAO.cadastroDePaciente(pat)) {
			// DADDOS DO DIAGNOSTICO PARA SER CADASTRADO AO MESMO TEMPO QUE OS DADOS DO
			// PACIENTE SÃO CADASTRADOS TAMBÉM
			rsp = this.dado_diagnostico(diag, request, response);

		}
		return rsp;
	}

	// TRATAMENTO DO ERRO AO SALVAR OS DADOS
	public void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/diagnostico.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
