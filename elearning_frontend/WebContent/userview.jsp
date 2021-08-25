<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<% int id = (int)request.getSession().getAttribute("user_id"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from user where user_id='"+id+"'");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="temp.css">
<title>E-learning portal</title>
</head>
<body>

<h2 align="center">
<% try{
	rs.next();
	out.println("Welcome " + rs.getString("name") + "!");
}catch (Exception e) {
	e.printStackTrace();
	}%>
</h2>
<hr>
<a href="contact.jsp" class="user-button">ADD CONTACT</a>
<a href="enroll.jsp" class ="user-button">ENROLL COURSE</a>
<a href="feedback.jsp" class="user-button">ADD FEEDBACK</a>
<a href="logout.jsp" class="logout-button">LOG OUT</a><br>

<h3 align="center">You have enrolled in these courses</h3><br>
<table border="5" align="center" class="table table-dark">
	<tr>
	<th>Course ID</th>
	<th>Course Name</th>
	<th>Course Description</th>
	<th>Course Fees</th>
	<th>Course Resources</th>
	</tr>

<%try{
	rs = st.executeQuery("select * from course where course_id IN (select course_id from usercourse where user_id='"+id+"')");
	while(rs.next()) {
%>
		<tr>
			<td><%=rs.getInt("course_id") %></td>
			<td><%=rs.getString("c_name") %></td>
			<td><%=rs.getString("c_desp") %></td>
			<td><%=rs.getDouble("c_fees") %></td>
			<td><%=rs.getString("c_resource") %></td>
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