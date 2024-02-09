<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
</head>
<body>
	<h3>About Us</h3>
	<%
	String username = (String) session.getAttribute("username");
	%>
	<%=username%> is a Software Engineer (Lead L4) in HTC Global.<br /><br />
	<a href="home.jsp">Home</a> &nbsp;&nbsp;
	<a href="profile.jsp">Profile</a> &nbsp;&nbsp;
	<a href="logout">Log out</a>
</body>
</html>