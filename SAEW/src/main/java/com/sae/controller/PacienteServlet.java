package com.sae.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;

import com.sae.dao.PacienteDAO;
import com.sae.model.*;
/**
 * Servlet implementation class PacienteServlet
 */
public class PacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PacienteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PacienteModel pat = new PacienteModel();
		pat.setIdPaciente(Integer.parseInt(request.getParameter("cod_pacnt")));
		pat.setPaciente(request.getParameter("paciente"));
		pat.setDataNascimento(Date.valueOf(request.getParameter("data_nascimento")));
		pat.setLeito(Integer.parseInt(request.getParameter("leito")));
		pat.setQueixaPrincipal(request.getParameter("queixa_principal"));
		pat.setDataInternacao(Date.valueOf(request.getParameter("data_internacao")));
		pat.setDataRegisto(Date.valueOf(LocalDate.now()));
		
		if(PacienteDAO.cadastroDePaciente(pat)) {
			response.sendRedirect("jsp/diagnostico.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
	}

}
