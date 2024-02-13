<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Tag (c:forEach)</title>
</head>
<body>
	<%
	String[] cities = { "Bareilly", "Meerut", "New Delhi" };
	pageContext.setAttribute("myCities", cities);

	String[] fruits = { "Apple", "Banana", "Coconut", "Dates", "Guava" };
	request.setAttribute("sweetFruits", fruits);
	
	Integer[] marks = { 100, 90, 80, 70, 60 };
	request.setAttribute("examMarks", marks);
	%>
	<b>Cities:</b>
	<br />
	<c:forEach var="city" items="${myCities}">
		<p>${city}</p>
	</c:forEach>
	<hr>

	<b>Fruits:</b>
	<br />
	<c:forEach var="sf" items="${sweetFruits}">
		<p>${sf}</p>
	</c:forEach>
	<hr>
	<b>Marks:</b>
	<br />
	<c:forEach var="m" items="${examMarks}">
		<p>${m}</p>
	</c:forEach>
</body>
</html>