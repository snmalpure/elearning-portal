<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>  
<%
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
		st.executeUpdate("delete from course where course_id='"+courseid+"'");
		//out.println("Successfully deleted " + userid + "!");
		//response.sendRedirect("admin.jsp");
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Course deleted successfully!');");
		out.println("location='admin.jsp';");
		out.println("</script>");
		
	}
	else{
		out.println("Invalid user ID");
	}
}
catch (Exception e) {
e.printStackTrace();
}
out.println("<script type=\"text/javascript\">");
out.println("alert('Invalid Course ID! Please try again.');");
out.println("location='deletecourse.jsp';");
out.println("</script>");
%>