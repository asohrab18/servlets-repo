package com.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 In @WebServlet("/aaa"), using "/" is mandatory bcoz this annotation is replacement/equivalent of 
 <url-pattern>/aaa</url-pattern> tag of web.xml 
 If we do not use "/", then it will give IllegalArgumentException and server will not start.
 */
@WebServlet("/aaa")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("I am in service method of MyServlet.");
		PrintWriter out = res.getWriter();
		out.println("Hello from service method of MyServlet!");
		out.close();
	}

}
