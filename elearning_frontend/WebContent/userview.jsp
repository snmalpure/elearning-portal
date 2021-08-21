<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<% int id = (int)request.getSession().getAttribute("user_id"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","root");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from user where user_id='"+id+"'");

try{
	rs.next();
	out.println("Your name: " + rs.getString("name"));
}catch (Exception e) {
	e.printStackTrace();
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="temp.css">
<title>E-learning portal</title>
</head>
<body>
<h1>USER</h1>
<p>
<% out.println("Hello " + id);%>
</p>
</body>
</html>