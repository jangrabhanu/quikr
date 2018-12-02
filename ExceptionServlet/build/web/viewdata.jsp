<%-- 
    Document   : viewdata
    Created on : 27 Nov, 2018, 6:02:20 PM
    Author     : bhanu
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body  {
    background-color: #F4ECF7;
}
    </style>
    <body>
        <h1>POSTED ADs!</h1>
        <table border="1" width="90%">
            <tr>
                <td>Name</td>
                <td>Email</td>
                <td>Contact Number</td>
                <td>Brand</td>
                <td>
                    Year
                </td>
                <td>
                    
                    Price
                </td>
                
            </tr>
        <%
            
            
            try
            {
                
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root",""); 
String q="select * from postad";
ResultSet rs;

PreparedStatement pst=con.prepareStatement(q);

                rs=pst.executeQuery();
                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td>
                            <%=rs.getString("email")%>
                        </td>
                        <td>
                            <%=rs.getString("number")%>
                            
                        </td>
                        <td>
                            <%=rs.getString("brand")%>
                        </td>
                        <td>
                            <%=rs.getString("year")%>
                        </td>
                        
                        <td>
                            
                            <%=rs.getString("price")%>
                        </td>
                    </tr>
                    
                    
                    <%
                }
            }
            catch(Exception e)
{
                System.out.println(e.getMessage());
            }
            
            
            
            
            
            %>
        </table>
        
        
    </body>
</html>
