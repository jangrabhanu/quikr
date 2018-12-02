<%-- 
    Document   : newjsp
    Created on : 1 Nov, 2018, 9:30:29 AM
    Author     : bhanu
--%>

<%@page import="java.sql.*"%>
<html>
<body>
<%
    String uname=request.getParameter("username");
    String pass=request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/acadview","root","");
    Statement stmt=con.createStatement();
    String query ="select * from register where email='"+uname+" and password='"+pass+"'";
    
    ResultSet rs = stmt.executeQuery("query");
    
    if(rs.next())
    {
        out.println("logged in successfully");
        %><a href="index.html">Home page</a><%
    }
        else
        out.println("Invalid username or password");
    %>
    </body>
            
</html>
