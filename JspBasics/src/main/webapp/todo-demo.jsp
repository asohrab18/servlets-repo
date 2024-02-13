<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="newItem" /> 
		<input type="submit" value="Submit" />
	</form>
	<br />
	<br />
	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		if (items == null) {
			items = new ArrayList<>();
			session.setAttribute("myToDoList", items);
		}
		//newItem should not be empty and items should not contain the newItem to avoid duplicacy
		String newItem = request.getParameter("newItem");
		if (newItem != null && !newItem.isBlank() && !items.contains(newItem.trim())) {
			items.add(newItem.trim());
		}
	%>
	<hr>
	<b>To Do List Items:</b><br/>
	<ol>
	<%
		for(String i : items){
			out.println("<li>" + i + "</li>");
		}
	%>
	</ol>
</body>
</html>