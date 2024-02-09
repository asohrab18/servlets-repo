<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<h3>My Home</h3>
	<%
	String username = (String) session.getAttribute("username");
	%>
	<%=username%> is at home.<br /><br />
	<a href="profile.jsp">Profile</a> &nbsp;&nbsp;
	<a href="about-us.jsp">About Us</a> &nbsp;&nbsp;
	<a href="logout">Log out</a>
</body>
</html>