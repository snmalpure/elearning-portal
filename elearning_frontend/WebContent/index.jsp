<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="temp.css">
<title>E-learning portal</title>
</head>
<body>
	
	<form action="login.jsp" method="post">
		<pre>
		User ID 	: 	<input type="number" name="user_id" /><br>
		Password 	:	<input type="password" name="password" /><br>
						<input	type="submit" value="Login" /><br>
		</pre>
		
		<p> New User? Click on Sign Up to register!<br>
			<a href="registration.jsp" class="button">Sign Up</a>
	</form>

</body>
</html>