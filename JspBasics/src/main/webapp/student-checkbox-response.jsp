<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation</title>
</head>
<body>
	The student is confirmed: ${param.firstName} ${param.lastName}
	<br /><br />
	Student's favorite Languages are:<br/><br/>
	<%
		String[] lang = request.getParameterValues("favoriteLanguage");
		if (lang != null && lang.length > 0) {
			for (int i = 0; i < lang.length; i++) {
	%>
				<%=lang[i]%><br />
	<%
			}
	 	}
	%>
</body>
</html>