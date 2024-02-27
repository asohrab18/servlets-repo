<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="theLocale" scope="session"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.learning.i18n.resources.mylabels"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N</title>
</head>
<body>
<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
|
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
|
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
<hr>
<fmt:message key="label.greeting"/><br/><br/>
<fmt:message key="label.firstname"/>: <b><i>John</i></b><br/>
<fmt:message key="label.lastname"/>: <b><i>Doe</i></b><br/><br/>
<fmt:message key="label.welcome"/>
<hr>
Selected locale: ${theLocale}
</body>
</html>