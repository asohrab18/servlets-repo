<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>
<c:set var="myName" value='<%= request.getParameter("username") %>' />
<c:set var="myEmail" value='<%= request.getParameter("email") %>' />
<c:set var="i" value='<%= request.getParameter("num") %>' />
<h3>${myEmail}</h3>
<p>Welcome,  ${myName}</p>
<p>Hello,  ${myName}</p>
<p>Bye,  ${myName}</p>
<h3>${myEmail}</h3>
<p>Hello,  ${myName}</p>
<p>Hello,  ${myName}</p>
<h3>${myEmail}</h3>
<hr>
<p>Number = ${i}</p>
<p>(Number + 10) = ${i + 10}</p>
<p>(Number - 10) = ${i - 10}</p>
<p>(Number * 10) = ${i * 10}</p>
<p>(Number / 10) = ${i / 10}</p>
<p>(Number % 10) = ${i % 10}</p>
</body>
</html>