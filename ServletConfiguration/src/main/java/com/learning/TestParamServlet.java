package com.learning;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/param-info")
public class TestParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		ServletContext ctx = getServletContext();
		String maxCartSize = ctx.getInitParameter("max-shopping-cart-size");
		String teamName = ctx.getInitParameter("project-team-name");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p>Max Cart Size: "+maxCartSize+"</p>");
		out.println("<p>Team Name: "+teamName+"</p>");
		out.println("</body></html>");
		out.close();
	}

}
