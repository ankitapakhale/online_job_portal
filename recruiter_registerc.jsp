<%-- 
    Document   : recruiter_registerc
    Created on : Feb 1, 2015, 9:26:36 AM
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
            try{
                                
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1","sa","abcd1234");
                
            Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                ResultSet rs=statement.executeQuery("SELECT MAX(giver_id) as temp FROM giver_master");
                
                
                int ID=0;
                try
                {
                    rs.last();
                    ID=rs.getInt("temp");
                    
                    ID=ID+1;
                }
                catch(Exception ex1)
                {
                    out.println("Error in Retriving " +ex1.toString());
                }
             

               PreparedStatement ps=con.prepareStatement("insert into giver_master values(?,?,?,?,?,?,?,?"
                        + ")");
                ps.setInt(1,ID);
                //out.println(""+ID);
                ps.setString(2, request.getParameter("txt_name"));
            ps.setString(3,request.getParameter("txt_mname"));
            ps.setString(4,request.getParameter("txt_surname"));
            ps.setString(5,request.getParameter("txt_email"));
            ps.setString(6,request.getParameter("txt_pwd"));
            ps.setString(7,request.getParameter("txt_cpwd"));
            ps.setString(8,request.getParameter("txt_mobile"));
            
            
            ps.executeUpdate();
            response.sendRedirect("recruiter_login.jsp");
             }catch(Exception e){
            out.println(("<h1>Please fill all Details</h1>"));
            }
            
            %><br>
            <a href="recruiter_register.jsp"><h2>Back</h2></a>
    </center>
    </body>
</html>
