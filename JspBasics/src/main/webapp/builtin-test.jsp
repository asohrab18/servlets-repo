<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.jsp.models.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Built-in Objects</title>
</head>
<body>
	Request User Agent: <%=request.getHeader("User-Agent")%><br/><br/>
	Request Language: <%=request.getLocale()%><br/><br/>
	
</body>
</html>