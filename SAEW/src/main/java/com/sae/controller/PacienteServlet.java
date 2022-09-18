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
import com.sae.model.*;

/**
 * Servlet implementation class PacienteServlet
 */
public class PacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PacienteModel pat = new PacienteModel();
	private DiagnosticoModel diag = new DiagnosticoModel();
	private ArrayList<String> lista = new ArrayList<String>();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String[] checkbox = request.getParameterValues("diagnostico");
		String salva_paciente = request.getParameter("salva_paciente");
		String perfusao = request.getParameter("perfusao");
		boolean rsp = false;

		for (int i = 0; i < checkbox.length; i++) {
			lista.add(checkbox[i]);
		}

		if (perfusao != null) {
			lista.add(perfusao);
		}

		if (salva_paciente.equals("Sim")) {
			this.dado_paciente(diag, checkbox, pat, request, response);
			lista.clear();
		} else {
			if (checkbox != null) {
				rsp = this.dado_diagnostico(diag, checkbox, request, response);
				lista.clear();
				if (rsp) {
					response.sendRedirect("jsp/diagnostico.jsp");
				} else {
					response.sendRedirect("index.jsp");
				}
			}
		}
	}

	// DADDOS DO DIAGNÓSTCO
	public boolean dado_diagnostico(DiagnosticoModel diag, String[] checkbox, HttpServletRequest request,
			HttpServletResponse response) {
		boolean rsp = false;
		for (int i = 0; i < lista.size(); i++) {

			diag.setIdDiagnostico(Integer.parseInt(request.getParameter("cod_diagt")));

			if (lista.get(i).equals("Cerebral")) {
				diag.setDiagnostico("Perfusão tíssular");
				diag.setResposta("Cerebral");
			} else {
				diag.setDiagnostico(lista.get(i));
				diag.setResposta("Sim");
			}

			diag.setObservacao(request.getParameter("obs"));
			diag.setDataUltimaActualizacao(Date.valueOf(LocalDate.now()));
			diag.setDataRegisto(Date.valueOf(LocalDate.now()));
			diag.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt")));
			diag.setPaciente(request.getParameter("paciente"));

			rsp = DiagnosticoDAO.cadastroDeDiagnostico(diag);
		}
		return rsp;
	}

	// DADDOS DO PACIENTE
	public boolean dado_paciente(DiagnosticoModel diag, String[] checkbox, PacienteModel pat,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean rsp = false;
		pat.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt")));
		pat.setPaciente(request.getParameter("paciente"));
		pat.setDataNascimento(Date.valueOf(request.getParameter("data_nascimento")));
		pat.setLeito(Integer.parseInt(request.getParameter("leito")));
		pat.setQueixaPrincipal(request.getParameter("queixa_principal"));
		pat.setDataInternacao(Date.valueOf(request.getParameter("data_internacao")));
		pat.setDataRegisto(Date.valueOf(LocalDate.now()));

		if (PacienteDAO.cadastroDePaciente(pat)) {
			// DADDOS DO DIAGNOSTICO PARA SER CADASTRADO AO MESMO TEMPO QUE OS DADOS DO
			// PACIENTE SÃO CADASTRADOS TAMBÉM
			this.dado_diagnostico(diag, checkbox, request, response);
			rsp = true;
			response.sendRedirect("jsp/diagnostico.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
		return rsp;
	}
}
