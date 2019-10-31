<%-- 
    Document   : changepassword
    Created on : Mar 18, 2015, 10:37:55 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
    <center>
        <form name="frm_pwd" method="post" action="">
            <table>
                <tr>
                    <td align="center">
                        <h2> <u> Change Password From Here...</u></h2>
                    </td>
                </tr>
                <tr>
                    <td align="left">New Password: <input type="text" name="txt_pwd"></td>
                    <td></td></tr>

                <tr><td align="left"> Confirm Password:<input type="text" name="txt_cpwd"></td>
                    <td> </td></tr>

            </table>
        </form>
    </center>
</body>
</html>
