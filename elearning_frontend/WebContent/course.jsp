<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Add Course</title>
</head>
<body>
<h2 align="center">Add Course</h2><br>
	<hr>
	<div align="center">
	<form action="course" method="POST">
	<pre>
		Course ID		 <input type="number" name="courseId" /><br>
		Course Name   		 <input type="text" name="courseName" /><br>		
		Description		 <input type="text" name="description" /><br>
		Course Fee		 <input type="number" name="courseFee" /><br>
		Resources	 	 <input type="text" name="resources" /><br>
				  		  <input type="submit" value="Submit" /><br>
	</pre>
	</form>
	</div>
</body>
</html>