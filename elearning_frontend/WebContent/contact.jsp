<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Contact</title>
</head>
<body>
	<h2 align="center">Contact Admin</h2><br>
	<hr>
	<div align="center">
	<form action="contact" method="POST">
	<pre>
		User ID		 <input type="number" name="userId" /><br>
		User Name   	 <input type="text" name="name" /><br>		
		Email		 <input type="email" name="email" /><br>
		Phone		 <input type="number" name="phone" /><br>
		Message	 	 <input type="text" name="message" /><br>
		Contact ID	 <input type="number" name="contactId" /><br>
				  	 <input type="submit" value="Submit" /><br>
	</pre>
	</form>
	</div>
</body>
</html>