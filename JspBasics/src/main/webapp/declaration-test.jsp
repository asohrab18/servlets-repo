<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Declaration</title>
</head>
<body>
	<h3>JSP Declaration</h3>
	<%!String changeToLowerCase(String input) {
		return input.toLowerCase();
	}%>

	Lower case of 'HELLO WORLD' is: '<%= changeToLowerCase("HELLO WORLD")%>'


</body>
</html>