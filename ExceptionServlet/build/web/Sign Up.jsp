<%-- 
    Document   : Sign Up
    Created on : 14 Nov, 2018, 10:03:54 AM
    Author     : bhanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
 System.out.println("registered");
String email=request.getParameter("email"); 
String password=request.getParameter("password"); 


Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into register values ('"+email+"','"+password+"')"); 
out.println("Registered"); 
%>
</body>
</html>