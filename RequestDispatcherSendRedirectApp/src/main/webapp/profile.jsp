<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
	<h3>My Profile</h3>
	<%
	String username = (String) request.getAttribute("username");
	%>
	Welcome, <%=username%>!
</body>
</html>