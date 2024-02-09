<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scripting Tags</title>
</head>
<body>
	<%!int a = 10;
	String name = "Sohrab Alam";

	int square() {
		return a * a;
	}%>

	<%
	out.println("a = " + a);
	out.println("<br/>Name: " + name);
	out.println("<br/>square of " + a + " = " + +square());

	int b = 20;
	if (b < 100) {
		out.println("<br/>" + b + " is smaller than 100");
	} else {
		out.println("<br/>" + b + " is greater than 100");
	}
	for (int i = 1; i <= 5; i++) {
		out.println("<br/>i = " + i);
	}
	%>
	<hr>
	a = <%=a%><br /> 
	Name: <%=name%><br /> 
	square of a = <%=square()%><br /> 
	Current Date: <%=LocalDateTime.now()%><br /> 
	Random Number =	<%=Math.random()%><br />
</body>
</html>