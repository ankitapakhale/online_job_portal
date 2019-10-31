<%-- 
    Document   : recruiter_checklogin
    Created on : Feb 2, 2015, 7:08:45 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        try{   
            
            
                     String email=request.getParameter("txt_email");
                    session.setAttribute("r_email", email);
                    
           
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1","sa","abcd1234");
            PreparedStatement ps=con.prepareStatement("Select * from giver_master where email=? and password=?");
            ps.setString(1, request.getParameter("txt_email"));
            ps.setString(2,request.getParameter("txt_pwd"));
            ResultSet rs=ps.executeQuery();
            if(rs.next()==true)
                {
                session.setAttribute("email", rs.getString(5));
                session.setAttribute("password",rs.getString(6));
                response.sendRedirect("addjob.jsp");

                }
            else
                {
                response.sendRedirect("recruiter_login.jsp");
}
            }catch(Exception e){
                out.println(e.toString());
                }
        %>
    </body>
</html>
