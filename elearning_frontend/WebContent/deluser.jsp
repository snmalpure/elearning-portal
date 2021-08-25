<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>  
<%
int userid = Integer.parseInt(request.getParameter("user_id"));
session.putValue("user_id",userid);

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from user where user_id='"+userid+"'");
try{
	rs.next();
	if(rs.getInt("user_id") == userid)
	{
		st.executeUpdate("delete from user where user_id='"+userid+"'");
		//out.println("Successfully deleted " + userid + "!");
		//response.sendRedirect("admin.jsp");
		out.println("<script type=\"text/javascript\">");
		out.println("alert('User deleted successfully!');");
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
out.println("alert('Invalid User ID! Please try again.');");
out.println("location='deleteuser.jsp';");
out.println("</script>");
%>