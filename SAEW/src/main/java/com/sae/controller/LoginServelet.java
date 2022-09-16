package com.sae.controller;

import jakarta.servlet.ServletException;
/*import jakarta.servlet.annotation.WebServlet;*/
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class LoginServelet
 */
 /*@WebServlet("/LoginServelet")*/
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
	
		/*DiagnosticoModel dm = new DiagnosticoModel();
		dm.setCodigo(Integer.parseInt(usuario));
		dm.setTeste(senha);
		DiagnosticoSQL.cadastroDiag(dm);*/
		
		if(usuario.equals("admin") && senha.equals("sa")) {
			HttpSession session = request.getSession();
			session.setAttribute("usuario", usuario);
			response.sendRedirect("jsp/menu.jsp");
		}
		else 
		{
			response.sendRedirect("index.jsp");
		}
	}

}
