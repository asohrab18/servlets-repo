<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core Tags</title>
</head>
<body>
	<c:set var="currDate" value="<%=new Date()%>" />
	Current Time: ${currDate}
	<hr>
	<%
	String[] fruits = { "Apple", "Banana", "Coconut" };
	pageContext.setAttribute("someFruits", fruits);
	%>
	<h3>Fruits</h3>
	<c:forEach items="${someFruits}" var="f">
		<p>${f}</p>
	</c:forEach>
	<hr>
	<c:set var="goldMember" value="false" />
	<c:if test="${goldMember}">
		You get a special discount.
	</c:if>
	<c:if test="${not goldMember}">
		You are not eligible for any discount.
	</c:if>
	<hr>
	<c:choose>
		<c:when test="${goldMember}">
			Special discount
		</c:when>
		<c:otherwise>
			No discount
		</c:otherwise>
	</c:choose>
</body>
</html>