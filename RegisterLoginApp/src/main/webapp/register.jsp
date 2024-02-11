<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h1>Registration</h1>
	<form action="registration" method="post">
		Name: <input type="text" name="empName" /><br /> <br /> 
		Email: <input type="text" name="empEmail" /><br /> <br /> 
		Password: <input type="password" name="empPassword" /><br /> <br /> 
		Gender: <input type="radio" name="empGender" value="Male" />Male 
				<input type="radio" name="empGender" value="Female" />Female<br /><br /> 
		City: <select name="empCity">
				<option>Select City</option>
				<option>Delhi</option>
				<option>Mumbai</option>
				<option>Pune</option>
				<option>Bangalore</option>
			</select><br /><br /> 
		<input type="submit" value="Register" />
	</form>
</body>
</html>