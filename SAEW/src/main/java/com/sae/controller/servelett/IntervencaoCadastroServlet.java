package com.sae.controller.servelett;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;

import com.sae.dao.*;
import com.sae.model.*;

/**
 * Servlet implementation class IntervencaoCadastroServlet
 */
public class IntervencaoCadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IntervencaoModel inter = null;
	private ArrayList<String> lista = null;
	private ArrayList<ComboBoxModel> listaComboBox = null;
	private PacienteModel pat = null;
	private ComboBoxModel comboBoxModel = null;
	private AtributoModel atr = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IntervencaoCadastroServlet() {
		super();
		inter = new IntervencaoModel();
		lista = new ArrayList<String>();
		listaComboBox = IntervencaoDAO.listaAcessoVenosoPeriferico();
		pat = new PacienteModel();
		comboBoxModel = new ComboBoxModel();
		atr = new AtributoModel();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		atr.setAnyArrayString(request.getParameterValues("intervencao"));
		atr.setVarString(request.getParameter("salva_paciente"));

		if (atr.getAnyArrayString() != null) {
			for (int i = 0; i < atr.getAnyArrayString().length; i++) {
				lista.add(atr.getAnyArrayString()[i]);
			}
		}

		if (request.getParameter("acesso_venoso_periferico") != null) {
			lista.add(request.getParameter("acesso_venoso_periferico"));
		}

		if (!lista.isEmpty()) {
			if (atr.getVarString().equals("Sim")) {
				tratamentoDoPossivelErro(this.dado_paciente(inter, pat, request, response), request, response);
				lista.clear();

			} else {
				tratamentoDoPossivelErro(this.dado_intervencao(inter, request, response), request, response);
				lista.clear();
			}
		} else {
			tratamentoDoPossivelErro(false, request, response);
		}
	}

	// DADDOS DA INTERVENÇÃO
	public boolean dado_intervencao(IntervencaoModel inter, HttpServletRequest request, HttpServletResponse response) {
		boolean rsp = false;
		comboBoxModel.setNomeComboBox("Realizar a troca de acesso venoso periférico de 72 em 72horas");
		for (int i = 0; i < lista.size(); i++) {

			inter.setIdIntervencao(Integer.parseInt(request.getParameter("cod_interv").trim()));

			if (lista.get(i).equals(listaComboBox.get(0).getComboBoxItem())) {
				inter.setIntervencao(comboBoxModel.getNomeComboBox());
				inter.setResposta(listaComboBox.get(0).getComboBoxItem());

			} else if (lista.get(i).equals(listaComboBox.get(1).getComboBoxItem())) {
				inter.setIntervencao(comboBoxModel.getNomeComboBox());
				inter.setResposta(listaComboBox.get(1).getComboBoxItem());

			} else {
				inter.setIntervencao(lista.get(i));
				inter.setResposta("Sim");
			}

			inter.setObservacao(request.getParameter("obs"));
			inter.setDataUltimaActualizacao(Date.valueOf(LocalDate.now()));
			inter.setDataRegisto(Date.valueOf(LocalDate.now()));
			inter.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt").trim()));
			inter.setPaciente(request.getParameter("paciente"));

			rsp = IntervencaoDAO.cadastroDeIntervencao(inter);
		}
		return rsp;
	}

	// DADDOS DO PACIENTE
	public boolean dado_paciente(IntervencaoModel inter, PacienteModel pat, HttpServletRequest request,
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
			// DADDOS DA INTERVENÇÃO PARA SER CADASTRADO AO MESMO TEMPO QUE OS DADOS DO
			// PACIENTE SÃO CADASTRADOS TAMBÉM
			rsp = this.dado_intervencao(inter, request, response);

		}
		return rsp;
	}

	// TRATAMENTO DO ERRO AO SALVAR OS DADOS
	public void tratamentoDoPossivelErro(boolean rsp, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (rsp) {
			response.sendRedirect("jsp/intervencoes.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}
