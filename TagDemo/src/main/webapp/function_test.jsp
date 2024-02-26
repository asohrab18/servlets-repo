<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core Tags</title>
</head>
<body>
	<h3>Functions Demo</h3>
	<c:set var="data" value="Malayalam" />
	<p>Length of data String = ${fn:length(data)}</p>
	<p>Lowercase of data String : ${fn:toLowerCase(data)}</p>
	<p>Uppercase of data String : ${fn:toUpperCase(data)}</p>
	<p>Does <b>${data}</b> start with <b>Mala</b>?: ${fn:startsWith(data,"Mala")}</p>
	<p>Does <b>${data}</b> start with <b>Bala</b>?: ${fn:startsWith(data,"Bala")}</p>
	<hr>
	<h3>Split Demo</h3>
	<c:set var="data" value="Apple,Banana,Coconut,Guava" />
	<c:set var="fruitsArray" value="${fn:split(data,',')}" />
	<c:forEach items="${fruitsArray}" var="f">
		<p>${f}</p>
	</c:forEach>
	<hr>
	<h3>Join Demo</h3>
	<c:set var="fruits" value="${fn:join(fruitsArray,'*')}" />
	<p>Result of joining: ${fruits}</p>
	<c:set var="fruits2" value="${fn:join(fruitsArray,'#')}" />
	<p>Result of joining: ${fruits2}</p>
	<c:set var="fruits3" value="${fn:join(fruitsArray,',')}" />
	<p>Result of joining: ${fruits3}</p>
</body>
</html>