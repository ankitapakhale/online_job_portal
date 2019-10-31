<%-- 
    Document   : candidate_CR
    Created on : Mar 1, 2015, 8:36:29 AM
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
        <%
             try{
                 
           int job_id=Integer.parseInt(request.getParameter("h_id"));
            String email=request.getParameter("h_email");
            String name=request.getParameter("h_name");
            String gender=request.getParameter("h_gen");
            String qual=request.getParameter("h_qual");
            String mks=request.getParameter("h_mks");
            String skills=request.getParameter("h_skills");
            String dob=request.getParameter("h_dob");
            String mobile=request.getParameter("h_mob");
            
       
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                
                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = statement.executeQuery("SELECT MAX(seeker_id) as temp FROM seeker_master where email='"+email +"'");
                
                int ID = 0;
                try {
                    rs.last();
                    ID = rs.getInt("temp");

                    // ID=ID+1;
                } catch (Exception ex1) {
                    out.println("Error in Retriving " + ex1.toString());
                }
                
               

                

                PreparedStatement ps = con.prepareStatement("insert into confirmed_candidate values(?,?,?,?,?,?,?,?,?,?"
                        + ")");
                
                ps.setInt(1, ID);
                ps.setInt(2,job_id);
                ps.setString(3,email);
                ps.setString(4,name);
                ps.setString(5, gender);
                ps.setString(6,qual);
                ps.setString(7,mks);
                ps.setString(8,skills);
                ps.setString(9,dob);
                ps.setString(10,mobile);
                
                ps.executeUpdate();
               // response.sendRedirect("home.jsp");
                
                
                
              //  response.sendRedirect("message.jsp");
                
                
                
                
        }catch(Exception e){
            out.println(e.toString());
}
        %>
    <center> <h2>Confirmation Successful...</h2></center>
    </body>
</html>
