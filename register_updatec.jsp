<%-- 
    Document   : personalprofilec
    Created on : Feb 14, 2015, 9:15:17 AM
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
        <form name="f1" method="post">
    <center>
        <%
            String var_name,var_mname,var_surname,var_address,var_city,var_pincode,var_landmark;
            String var_mob;
            try {
               
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                Statement stmt = con.createStatement();
                
                String  id=request.getParameter("form_id");
                int i_id=Integer.parseInt(id.trim());
                
                PreparedStatement ps = con.prepareStatement("update seeker_master set name=?,middle_name=?,surname=?,mobile=? where seeker_id='"+ i_id +"'");
                var_name=request.getParameter("txt_fname");
                var_mname=request.getParameter("txt_mname");
                var_surname=request.getParameter("txt_lname");
                var_mob=request.getParameter("txt_mob");
               
                
                 ps.setString(1,var_name);
                ps.setString(2, var_mname);
                ps.setString(3, var_surname);
                ps.setString(4,var_mob);
              
                PreparedStatement ps1 = con.prepareStatement("update seeker_address set address=?,city=?,pincode=?,landmark=? where seeker_id='"+ i_id +"'");
                var_address=request.getParameter("txt_address");
                var_city=request.getParameter("txt_city");
                var_pincode=request.getParameter("txt_pincode");
                var_landmark=request.getParameter("txt_lmark");
                
                ps1.setString(1,var_address);
                ps1.setString(2,var_city);
                ps1.setString(3,var_pincode);
               ps1.setString(4,var_landmark);
               
                
                ps.executeUpdate();
                ps1.executeUpdate();
                
                out.println(("<h2>Profile Updated Successfully!!!!</h2>"));
                
                //response.sendRedirect("academic_update.jsp");
    } catch (Exception e) {
        
        out.println(e.toString());
    }

            

        %><br>
        <a href="job_requirements.jsp"><h2>Back</h2></a>

    </center>
        </form>
</body>
</html>
