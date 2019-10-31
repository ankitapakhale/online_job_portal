<%-- 
    Document   : academic_detailsc
    Created on : Feb 2, 2015, 6:20:22 AM
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
                    String a=request.getParameter("txt_qualification");
                session.setAttribute("qual",a);
                
                 String b=request.getParameter("ddl_skills");
                session.setAttribute("skills",b);
                
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                
                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master");
                
                int ID = 0;
                try {
                    rs.last();
                    ID = rs.getInt("temp");

                    // ID=ID+1;
                } catch (Exception ex1) {
                    out.println("Error in Retriving " + ex1.toString());
                }
                
               

                

                PreparedStatement ps = con.prepareStatement("insert into seeker_academic values(?,?,?,?,?,?,?"
                        + ")");
                
                ps.setInt(1, ID);
                ps.setString(2, request.getParameter("txt_qualification"));
                ps.setString(3, request.getParameter("txt_board"));
                ps.setString(4, request.getParameter("txt_date"));
                ps.setString(5, request.getParameter("txt_mks"));
                ps.setString(6, request.getParameter("txt_grade"));
                ps.setString(7, request.getParameter("ddl_skills"));
                
                
                
               ResultSet rs1 = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master"); 
               
                
                
                PreparedStatement ps1 = con.prepareStatement("insert into seeker_extra_certificate values(?,?,?,?,?,?"
                        +")");
                ps1.setInt(1, ID);
                ps1.setString(2, request.getParameter("txt_exam_name"));
                ps1.setString(3, request.getParameter("txt_authorised"));
                ps1.setString(4, request.getParameter("txt_max_mks"));
                ps1.setString(5, request.getParameter("txt_obtained_mks"));
                ps1.setString(6, request.getParameter("txt_date_certificate"));
                
                

                
                ResultSet rs2 = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master"); 
                 
                
                

                PreparedStatement ps2 = con.prepareStatement("insert into seeker_experience values(?,?,?,?,?,?)");
                ps2.setInt(1, ID);
                ps2.setString(2, request.getParameter("txt_comp_name"));
                ps2.setString(3, request.getParameter("txt_date_from"));
                ps2.setString(4, request.getParameter("txt_date_to"));
                ps2.setString(5, request.getParameter("txt_reason"));
                ps2.setString(6, request.getParameter("txt_salary"));
                
                

                ps.executeUpdate();
                ps1.executeUpdate();
                ps2.executeUpdate();
                
                
              

                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                out.println(("<h2>Please Fill All The Details</h2>"));
            }
      
%>
<br>
            <a href="academic_details.jsp"><h2>Back</h2></a>
    </center>
    </body>
</html>
