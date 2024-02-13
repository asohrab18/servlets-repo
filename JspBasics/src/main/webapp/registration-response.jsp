<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Confirmation</title>
</head>
<body>
<b>The student is confirmed:</b> ${param.firstName} ${param.lastName}<br/><br/>
<b>Country:</b> ${param.country}<br/><br/>
<b>Gender:</b> ${param.gender}<br/><br/>
<b>Student's favorite Languages are:</b><br/><br/>
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