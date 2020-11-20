<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Student</title>
</head>
<body>

	<h2>Add new student information</h2>
	<label for="id">ID:</label> <br>
	<input type="text" id="id" name="id"><br>	
		
	<label for="name">Name:</label><br>
	<input type="text" id="name" name="name"> <br>
		
	<label for="dept">Department:</label><br>
	<input type="text" id="department" name="dept"> <br>
				
	<label for="science">Science:</label><br>
	<input type="text" id="science" name="science"> <br>
			
	<label for="math">Mathematics:</label><br>
	<input type="text" id="math" name="math"> <br>
			
	<input type="submit" value="Submit">
	
	<form action="AddStudent" method="get">
		<input type="submit" value="Add">
	</form>

		<a target="_blank" href="student.jsp">Go to view student info.</a>
</body>
</html>