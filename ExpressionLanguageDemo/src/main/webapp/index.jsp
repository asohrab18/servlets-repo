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
	session.setAttribute("company", "HTC Global Services");
	request.setAttribute("empName", "Sohrab Alam");
	//out.println(session.getAttribute("company"));
	//out.println(request.getAttribute("empName"));
	%>
	<h1>${company}</h1>
	Welcome, ${requestScope.empName}<br />
	<hr>
	<form action="output.jsp">
		<input type="text" name="name1" placeholder="Enter name" /> 
		<input type="submit" value="Click Me" />
	</form>
	<hr>
	SUM = ${12+12}<br /> 
	${11 > 2 ? "Hello": "Welcome"}<br />
</body>
</html>