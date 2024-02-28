package com.learning.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mvc-demo")
public class MvcDemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] students = {"Akhil", "Babita", "Celina", "Dinesh"};
		request.setAttribute("students_list", students);

		RequestDispatcher rd = request.getRequestDispatcher("/view_students.jsp");
		rd.forward(request, response);
	}

}
