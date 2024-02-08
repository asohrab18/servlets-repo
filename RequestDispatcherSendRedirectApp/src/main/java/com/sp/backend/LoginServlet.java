package com.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("empEmail");
		String password = req.getParameter("empPassword");
		RequestDispatcher rd = null;
		PrintWriter out = null;
		if (email.equals("alam.sohrab@gmail.com") && password.equals("qwer")) {
			req.setAttribute("username", "Sohrab Alam");
			rd = req.getRequestDispatcher("/profile.jsp");
			rd.forward(req, res);
		} else {
			/**setContentType denotes the type of content to be rendered on the browser.*/
			res.setContentType("text/html");
			out = res.getWriter();
			out.println("<h3 style='color:red'>Incorrect Credentials</h3>");
			rd = req.getRequestDispatcher("/login.html");
			rd.include(req, res);
			out.close();
		}
	}
}
