<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriptlet</title>
</head>
<body>
	<h3>JSP Scriptlet</h3>
	<%
	for (int i = 1; i <= 5; i++) {
		out.println("I like JSP: " + i + "<br/>");
	}
	%>
</body>
</html>