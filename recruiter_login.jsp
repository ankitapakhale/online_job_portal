<%-- 
    Document   : recruiterlogin
    Created on : Jan 20, 2015, 11:02:10 PM
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
    <center>
        <form name="frm_recruiter_login" method="post" action="recruiter_checklogin.jsp">
        <h2><i>Recruiter Login<i></h2><br>
                    <hr>
                   <table>
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
                            <td><a href="recruiter_register.jsp">Register Here!!!</a></td>
                           
                        </tr>
                    </table>
                   
                    </form>
    </center>
    </body>
</html>
