package com.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("empEmail");
		String password = req.getParameter("empPassword");
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		RequestDispatcher rd = null;
		try {
			Connection con = DBConnectionProvider.getConnection();
			String query = "SELECT * FROM registration WHERE email = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				HttpSession session = req.getSession();
				session.setAttribute("username", rs.getString("name"));
				out.println("<h3 style = 'color:green'>User logged-in successfully.</h3>");
				rd = req.getRequestDispatcher("/profile.jsp");
			} else {
				out.println("<h3 style = 'color:red'>Email id & password did not match.</h3>");
				rd = req.getRequestDispatcher("/login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h3 style = 'color:red'>Exception occurred: " + e.getMessage() + "</h3>");
			rd = req.getRequestDispatcher("/login.jsp");
		}
		rd.include(req, resp);
	}
}
