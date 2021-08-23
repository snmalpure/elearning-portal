<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 
<%
int userid = Integer.parseInt(request.getParameter("user_id"));
session.putValue("user_id",userid);
String password = request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from user where user_id='"+userid+"' and password='"+password+"'");
try{
	rs.next();
	if(rs.getString("password").equals(password) && rs.getInt("user_id") == userid)
	{
		//out.println("Welcome User " + userid + "!");
		response.sendRedirect("userview.jsp");
		
	}
	else{
		//out.println("Invalid password or username.");
		out.println(request.getAttribute("errorMessage"));
	}
}
catch (Exception e) {
e.printStackTrace();
}

ResultSet rs2 = st.executeQuery("select * from admin where admin_id='"+userid+"' and password='"+password+"'");
try{
	rs2.next();
	if(rs2.getString("password").equals(password) && rs2.getInt("admin_id") == userid)
	{
		//out.println("Welcome Admin " + userid + "!");
		response.sendRedirect("admin.jsp");
	}
	else{
		//out.println("Invalid password or username.");
		out.println(request.getAttribute("errorMessage"));
	}
}
catch (Exception e) {
e.printStackTrace();
}
out.println("<script type=\"text/javascript\">");
out.println("alert('Login Failed! Check your User ID and Password');");
out.println("location='index.jsp';");
out.println("</script>");
%>