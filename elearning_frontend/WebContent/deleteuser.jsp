<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="temp.css">
<title>Delete User</title>
</head>
<body>
	<h2 align="center">Delete User</h2><br>
	<div align="center">
	<form action="deluser.jsp" method="post">
		<pre>
		Enter User ID 	 <input type="number" name="user_id" /><br>
					<input	type="submit" value="DELETE" /><br>
		</pre>
		
	</form>
	</div>
</body>
</html>