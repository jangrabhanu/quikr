<%-- 
    Document   : Login1
    Created on : 15 Nov, 2018, 11:05:04 AM
    Author     : bhanu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            try{
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            String myurl="jdbc:mysql://localhost/acadview";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                String query1="select * from register where email='"+email+"' and password='"+password+"'";
                ResultSet rs=st.executeQuery(query1);
                
            if(rs.next())
                out.println("welcome " + email+ " to this website"+"<a href='index.html'>Go to Homepage</a>");
             else
                 out.println("not found");
                st.close();
            
            }
            catch(Exception e)
            {
                System.err.println("got an exception");
                System.err.println(e.getMessage());
            }
   
        %>
    </body>
</html>

