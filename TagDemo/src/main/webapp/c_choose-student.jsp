<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,com.learning.model.Student"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students (c:choose)</title>
</head>
<%
List<Student> data = new ArrayList<>();

data.add(new Student("John", "Doe", true));
data.add(new Student("Sohrab", "Alam", false));
data.add(new Student("Faraz", "Siddique", true));

pageContext.setAttribute("myStudents", data);
%>
<body>
	<h3>Students:</h3>
	<table border="1" style="border-collapse: collapse;">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Member</th>
		</tr>
		<c:forEach var="student" items="${myStudents}">
			<tr>
				<td>${student.firstName}</td>
				<td>${student.lastName}</td>
				<td>
					<c:choose>
						<c:when test="${student.goldMember}">
							Special Discount
						</c:when>
						<c:otherwise>
							No Discount
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>