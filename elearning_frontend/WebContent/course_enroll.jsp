<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>  
<%
int id = (int)request.getSession().getAttribute("user_id"); 
int courseid = Integer.parseInt(request.getParameter("course_id"));
session.putValue("course_id",courseid);

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from course where course_id='"+courseid+"'");
try{
	rs.next();
	if(rs.getInt("course_id") == courseid)
	{
		st.executeUpdate("insert into usercourse(user_id, course_id) values('"+id+"', '"+courseid+"')");
		//out.println("Successfully enrolled in " + courseid + "!");
		//response.sendRedirect("userview.jsp");
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Enrolled in course successfully!');");
		out.println("location='userview.jsp';");
		out.println("</script>");
	}
	else{
		out.println("Invalid course ID");
	}
}
catch (Exception e) {
e.printStackTrace();
}

out.println("<script type=\"text/javascript\">");
out.println("alert('Course enrollment failed!');");
out.println("location='enroll.jsp';");
out.println("</script>");
%>