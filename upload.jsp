<%-- 
    Document   : upload
    Created on : Mar 2, 2015, 1:23:00 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
        
    <center>
        <%
            try {
                // String email=request.getParameter("h_email");
                
                String mail=session.getAttribute("mail").toString();
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");

                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master");

                
                int ID = 0;
                try {
                    rs.last();
                    ID = rs.getInt("temp");

                    //ID = ID + 1;
                } catch (Exception ex1) {
                    out.println("Error in Retriving " + ex1.toString());
                }
                    
                String name=request.getParameter("txt_resume");
                PreparedStatement ps = con.prepareStatement("insert into filename values(?,?,'"+ name +"')");
                 ps.setInt(1, ID);
               ps.setString(2,mail);
            //   ps.setString(3,name);

                ps.executeUpdate();
                
                response.sendRedirect("message.jsp");

            } catch (Exception e) {
                out.println(e.toString());
            }

        %><br>
    </center>
        
        


       
    </body>
</html>
