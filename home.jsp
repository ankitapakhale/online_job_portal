<%-- 
    Document   : demo
    Created on : Feb 23, 2015, 1:33:32 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
        <form>

            <div>
                <center>
                    <table>

                        <tr>
                            <td>
                                <p ><h2>Job seekers...we will help you to find suitable JOB!!!</p></h2><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="search_job.jsp"><h2>Search JOB From Here...</h2></a>
                            </td>
                        </tr>

                    </table>
                </center>

                <table align="left" height="50" width="50">
                    <tr>
                        <td>
                            <h2>Recruiter..</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="recruiter_register.jsp"><i>REGISTER</i></a><br>
                            <a href="recruiter_login.jsp"><i>LOGIN</i></a><br>
                        </td>
                    </tr>

                </table>
                <table align="right">
                    <tr>
                        <td>
                            <h2>
                                Job Seeker..
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="register.jsp"><i>REGISTER</i></a><br>
                            <a href="login.jsp"><i>LOGIN</i></a>
                        </td>
                    </tr>
                </table>


            </div>
        </form>
    </body>
</html>
