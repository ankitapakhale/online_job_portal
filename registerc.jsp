<%-- 
    Document   : registerc
    Created on : Jan 25, 2015, 5:38:50 AM
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
                String name=request.getParameter("txt_fname");
                String mob=request.getParameter("txt_mob");
                String gender=request.getParameter("rb_gender");
                
                
                session.setAttribute("s_name",name);
                session.setAttribute("s_mob", mob);
                session.setAttribute("s_gender", gender);

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");

                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master");

                
                int ID = 0;
                try {
                    rs.last();
                    ID = rs.getInt("temp");

                    ID = ID + 1;
                } catch (Exception ex1) {
                    out.println("Error in Retriving " + ex1.toString());
                }
                    
                PreparedStatement ps = con.prepareStatement("insert into seeker_master values(?,?,?,?,?,?,?,?,?,?"
                        + ")");
                ps.setInt(1, ID);
                ps.setString(2, request.getParameter("txt_fname"));
                ps.setString(3, request.getParameter("txt_mname"));
                ps.setString(4, request.getParameter("txt_lname"));
                ps.setString(5, request.getParameter("rb_gender"));
                ps.setString(6, request.getParameter("txt_email"));
                ps.setString(7, request.getParameter("txt_pwd"));
                ps.setString(8, request.getParameter("txt_cpwd"));

                ps.setString(9, request.getParameter("txt_mob"));
                ps.setString(10, request.getParameter("txt_date"));

                ResultSet rs1 = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master");

                PreparedStatement ps1 = con.prepareStatement("insert into seeker_address values(?,?,?,?,?)");
                ps1.setInt(1, ID);
                ps1.setString(2, request.getParameter("txt_address"));
                ps1.setString(3, request.getParameter("txt_city"));
                ps1.setString(4, request.getParameter("txt_pincode"));
                ps1.setString(5, request.getParameter("txt_lmark"));

                ps.executeUpdate();
                ps1.executeUpdate();
                
                
                
              // session.setAttribute(ID,temp);

                response.sendRedirect("academic_details.jsp");

            } catch (Exception e) {
                out.println(("<h2>Please fill all the details</h2>"));
            }

        %><br>
            <a href="register.jsp"><h2>Back</h2></a>
    </center>
        
        


    </body>
</html>
