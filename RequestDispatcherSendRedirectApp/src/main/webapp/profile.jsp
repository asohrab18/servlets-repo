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
	String username = (String) session.getAttribute("username");
	%>
	Welcome, <%=username%>!<br /><br />
	<a href="home.jsp">Home</a> &nbsp;&nbsp;
	<a href="about-us.jsp">About Us</a> &nbsp;&nbsp;
	<a href="logout">Log out</a>
</body>
</html>