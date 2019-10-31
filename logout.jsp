<%-- 
    Document   : logout
    Created on : Feb 17, 2015, 9:15:59 PM
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
        <form action="login.jsp">
        <%
            response.sendRedirect("login.jsp");
            %>
        </form>
    </body>
</html>
