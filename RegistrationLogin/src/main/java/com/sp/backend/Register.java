package com.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registration")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("empName");
		String email = req.getParameter("empEmail");
		String password = req.getParameter("empPassword");
		String gender = req.getParameter("empGender");
		String city = req.getParameter("empCity");
		PrintWriter out = resp.getWriter();
		try {
			Connection con = DBConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"Insert into registration (name, email, password, gender, city) values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, gender);
			ps.setString(5, city);
			int count = ps.executeUpdate();
			if (count > 0) {
				resp.setContentType("text/html");
				out.println("<h3 style = 'color:green'>User registered successfully.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			} else {
				resp.setContentType("text/html");
				out.println("<h3 style = 'color:red'>User not registered due to some error.</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<h3 style = 'color:red'>Exception occurred: " + e.getMessage() + "</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
	}
}
