<%-- 
    Document   : download
    Created on : Feb 22, 2015, 10:24:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
        <table>
            <tr>
            <td>
        <%
            try {
                    
               
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                
                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
             
              
               ResultSet rs1=statement.executeQuery("select file_name from filename");
               rs1.last();
              String file=rs1.getString(1);
           
              
              %>
              
            <table>
                        <tr><td>
                                <%=file%>
                    </td></tr>
            </table>
            <%
                
            } catch (Exception e) {
                out.println(e.toString());
            }
      
%>
            </td>
            </tr>
        </table>
    </body>
</html>
