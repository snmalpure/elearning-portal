<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="temp.css">
<title>View Feedbacks</title>
</head>
<body>
	<h2 align="center">Feedback given by users</h2>
	<table border="5" class="table table-dark" align="center">
	<tr>
	<th>User ID</th>
	<th>Name</th>
	<th>Email</th>
	<th>Feedback ID</th>
	<th>Feedback</th>
	</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs;
try{
	rs = st.executeQuery("select * from feedback");
	while(rs.next()) {
%>
		<tr>
			<td><%=rs.getInt("user_id") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getInt("f_id") %></td>
			<td><%=rs.getString("feedback") %></td>
		</tr>
	<%
		}
	} catch (Exception e) {
		e.printStackTrace();
		}
	%>

	</table>
</body>
</html>