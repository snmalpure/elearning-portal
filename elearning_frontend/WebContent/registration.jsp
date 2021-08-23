<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Registration</title>
</head>
<body>
	<h2 align="center">Sign Up</h2><br>
	<hr>
	<div align="center">
	<form action="register" method="POST">
	<pre>
		User ID	 		<input type="number" name="id" /><br>
		Name   	 		<input type="text" name="username" /><br>
		Phone	 		<input type="number" name="phone" /><br>
		Email	 		<input type="email" name="email" /><br>
		Address  		<input type="text" name="address" /><br>
		Registration Date 	<input type="date" name="date" /><br>
		Password	 	<input type="password" name="password" /><br>
		Photo 			<input type="text" name="photo" /><br>
			 			<input type="submit" value="Sign Up" /><br>
	</pre>
	</form>
	</div>
</body>
</html>