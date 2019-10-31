<%-- 
    Document   : uploadresume
    Created on : Feb 1, 2015, 10:36:37 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
    <center>
               
                <form action="upload.jsp" method="post" enctype="multipart/form-data">
              <table>
                  
                  <%
                      
                      try{
                      String email=session.getAttribute("s_email").toString();
                      session.setAttribute("mail",email);
                      
                      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                        
                        
                        
                      
                      
                
            } catch (Exception e) {
                out.println(("<h2>Please fill all the details</h2>"));
            }
                      
                      %>
                  <tr>
                      <td>
                          <input type="" name="txt_email" value="<%= session.getAttribute("s_email") %>" disabled>
                          <input type="hidden" name="h_email" value="<%= session.getAttribute("s_email") %>">
                     
                  </tr>
                  <tr><td><h3>  Provide Your Resume Here!!!!</h3></td></tr>
                  <tr><td>
                          
                         <input type="text" name="txt_resume">You can copy paste your Resume here...</textarea></td></tr>
                  
                 
                  <tr><td> <input type="submit" value="Done"></td></tr>
                  
              </table>
        </form>
    </center>
    </body>
</html>
