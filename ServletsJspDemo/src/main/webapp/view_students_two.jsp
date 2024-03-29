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
	<h3>Students Table</h3>
	<table border="1" style="border-collapse: collapse;">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
		</tr>
		<c:forEach items="${students_list}" var="tempStudent">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>${tempStudent.email}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>