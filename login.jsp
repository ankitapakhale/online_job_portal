<%-- 
    Document   : login
    Created on : Jan 20, 2015, 10:56:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@include file="header.html" %>
         

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
 
        <form name="frm_login" method="post" action="checklogin.jsp">
            <center>
                <table>
                        <tr>
                            <td> <h2><i>JobSeeker Login<i></h2><br><hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 Email:
                            </td>
                            <td>
                                <input type="text" name="txt_email"><br>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                 Password:
                            </td>
                            <td>
                                <input type="password" name="txt_pwd"><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                              <input type="submit"><br><br><br> 
                            </td>
                        </tr>
                        <tr>
                            <td><a href="register.jsp">Register Here!!!</a></td>
                            <td><a href="changepassword.jsp">Forgot Password</a></td>
                          
                        </tr>
                        
                           
                        </table>  
                        </center>
                        </form>

    </body>
</html>
