<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import ="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Tag (c:forEach)</title>
</head>
<body>
	<%
		String[] cities = { "Bareilly", "Meerut" };
		pageContext.setAttribute("myCities", cities);

		List<String> fruits = Arrays.asList("Apple", "Banana");
		request.setAttribute("sweetFruits", fruits);
		
		Integer[] marks = { 100, 90 };
		request.setAttribute("examMarks", marks);
		
		List<Integer> rollNumbers = Arrays.asList(1, 2);
		request.setAttribute("serialNumbers", rollNumbers);

	%>
	<h3>Cities:</h3>
	<c:forEach var="city" items="${myCities}">
		<p>${city}</p>
	</c:forEach>
	<hr>
	<h3>Fruits:</h3>
	<c:forEach var="f" items="${sweetFruits}">
		<p>${f}</p>
	</c:forEach>
	<hr>
	<h3>Marks:</h3>
	<c:forEach var="m" items="${examMarks}">
		<p>${m}</p>
	</c:forEach>
	<hr>
	<h3>Roll Numbers:</h3>
	<c:forEach var="sno" items="${serialNumbers}">
		<p>${sno}</p>
	</c:forEach>
</body>
</html>