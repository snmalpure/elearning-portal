<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<form action="register" method="POST">
	<pre>
		User ID	: <input type="number" name="id" /><br>
		Name   	: <input type="text" name="username" /><br>
		Phone	: <input type="number" name="phone" /><br>
		Email	: <input type="email" name="email" /><br>
		Address : <input type="text" name="address" /><br>
		Reg Date: <input type="date" name="date" /><br>
		Password: <input type="password" name="password" /><br>
		Photo 	: <input type="text" name="photo" /><br>
				  <input type="submit" value="Sign Up" /><br>
	</pre>
	</form>
</body>
</html>