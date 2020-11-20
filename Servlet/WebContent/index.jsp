<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Index</title>
</head>
<body>
	<h1>Student Info</h1>
	<p>Please enter your ID and password<p>
	<form  action = "Login" method = "post">
		<label for="id">AdminID:</label> <br>
		<input type = "text" id = "id" name = "id"><br>
		
		<label for="password">Password:</label><br>
		<input type="text" id="password" name="password"> <br> <br>
		
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>
