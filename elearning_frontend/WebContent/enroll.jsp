<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="temp.css">
<title>Enroll Course</title>
</head>
<body>
	<h1>Courses available for you</h1>
	<table border="5" class="table table-dark" align="center">
	<tr>
	<th>Course ID</th>
	<th>Course Name</th>
	<th>Course Description</th>
	<th>Course Fees</th>
	<th>Course Resources</th>
	</tr>
<% int id = (int)request.getSession().getAttribute("user_id"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs;
try{
	rs = st.executeQuery("select * from course where course_id NOT IN (select course_id from usercourse where user_id='"+id+"')");
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
	<br>	
	<form action="course_enroll.jsp" method="post">
		<pre>
		Enter Course ID  	<input type="number" name="course_id" /><br>
						<input	type="submit" value="ENROLL" /><br>
		</pre>
		
	</form>

</body>
</html>