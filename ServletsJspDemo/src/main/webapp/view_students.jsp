<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
	<h3>Students List</h3>
	<c:forEach items="${students_list}" var="tempStudent">
		<p>${tempStudent}</p>
	</c:forEach>
</body>
</html>