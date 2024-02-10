<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Output</title>
</head>
<body>
	<%
	String name = request.getParameter("name1");
	out.println("Welcome, " + name + "!<br/>");

	String company = (String) session.getAttribute("company");
	String citizenship = (String) session.getAttribute("citizenship");
	out.println("Company: " + company + "<br/>");
	out.println("Citizenship: " + citizenship);
	%>
</body>
</html>