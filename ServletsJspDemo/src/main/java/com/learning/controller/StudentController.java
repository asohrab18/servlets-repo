package com.learning.controller;

import java.io.IOException;
import java.util.List;

import com.learning.model.Student;
import com.learning.service.StudentDataUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student-info")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Student> students = StudentDataUtil.getStudents();
		request.setAttribute("students_list", students);

		RequestDispatcher rd = request.getRequestDispatcher("/view_students_two.jsp");
		rd.forward(request, response);
	}

}
