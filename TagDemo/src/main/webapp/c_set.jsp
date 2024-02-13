<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Tag (c:set)</title>
</head>
<body>
	<c:set var="currentDate" value="<%=new java.util.Date()%>" />
	<p>Time on the server is ${currentDate}</p>
	<hr>
	<c:set var="name" value="Sohrab Alam" />
	<p>${name}</p>
	<c:set var="designation" value="Lead-L4 Software Engineer" />
	<p>${designation}</p>
	<c:set var="address" value="76/85, Shahnathan, Meerut-250002" />
	<p>${address}</p>
	<c:set var="bonus" value="<%= (120000-10000) * 10/100 %>" />
	<p>Bonus = ${bonus}</p>
</body>
</html>