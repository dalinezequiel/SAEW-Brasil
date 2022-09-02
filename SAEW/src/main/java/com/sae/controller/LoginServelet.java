package com.sae.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class LoginServelet
 */
//@WebServlet("/LoginServelet")
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
//		String usuario = request.getParameter("usuario");
//		String senha = request.getParameter("senha");
//		
//		response.setContentType("text/plain");
//		PrintWriter out = response.getWriter();
//		out.println("<html>");
//		out.println("<head>");
//		out.println("<title>Exemplo teste</title>");
//		out.println("</head>");
//		out.println("</body>");
//		out.println(usuario + "-" + senha);
//		out.println("</body>");
//		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.sendRedirect("jsp/menu.jsp");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		if(usuario.equals("ad") && senha.equals("sa")) {
			response.sendRedirect("jsp/menu.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
	}

}
