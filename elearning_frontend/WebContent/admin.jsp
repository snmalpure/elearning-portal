<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="temp.css">
<title>Admin Page</title>
</head>
<body>
<h2 align="center">Welcome Admin!</h2>
<hr>
	<p>
	<a href="course.jsp" class="button">ADD COURSE</a>
	<a href="feedbackview.jsp" class="button">VIEW FEEDBACKS</a>
	<a href="contactview.jsp" class="button">VIEW CONTACTS</a>
	<a href="deletecourse.jsp" class="lo-button"> DELETE COURSE</a>
	<a href="deleteuser.jsp" class="lo-button"> DELETE USER</a>
	<a href="logout.jsp" class="log-button">LOG OUT</a>
	</p>
	<h3 align="center">Information of All Users</h3>
	<table border="5" align="center" class="table table-dark">
	<tr>
	<th>User ID</th>
	<th>Name</th>
	<th>Phone No.</th>
	<th>Email</th>
	<th>Address</th>
	<th>Reg. Date</th>
	<th>Password</th>
	<th>Photo</th>
	</tr>
	
<%try{
	rs = st.executeQuery("select * from user");
	while(rs.next()) {
%>
		<tr>
			<td><%=rs.getInt("user_id") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getLong("phone_no") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("address") %></td>
			<td><%=rs.getString("reg_date") %></td>
			<td><%=rs.getString("password") %></td>
			<td><%=rs.getString("upload_photo") %></td>
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