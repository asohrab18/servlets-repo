<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	<%
	String name = "Gagan Sharma";
	out.println("Hello, " + name + "!<br/><br/>");

	session.setAttribute("company", "Smart Programming");
	session.setAttribute("citizenship", "Indian");
	%>
	<hr>
	<form action="output.jsp">
		<input type="text" name="name1" placeholder="Enter name" /> 
		<input type="submit" value="Click Me" />
	</form>
</body>
</html>