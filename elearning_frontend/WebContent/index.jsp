<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>E-learning portal</title>
</head>
<body>
<h1 align="center">Welcome to e-learning portal!</h1>
	<br><hr>
	<div align="center">
	<form action="login.jsp" method="post">
		<pre>
		User ID  	<input type="number" name="user_id" /><br>
		Password 	<input type="password" name="password" /><br>
				<input	type="submit" value="Login" /><br>
		</pre>
		
		<p> New User? Click on Sign Up to register!
			<a href="registration.jsp" class="btn btn-primary">Sign Up</a>
		</p>
	</form>
	</div>
</body>
</html>