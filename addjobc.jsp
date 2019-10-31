<%-- 
    Document   : addjobc
    Created on : Feb 6, 2015, 8:14:22 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                                
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1","sa","abcd1234");
                     

                PreparedStatement ps=con.prepareStatement("insert into add_job values(?,?,?,?,?,?,?,?,?,?,?,?"
                        + ")");
                Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                ResultSet rs=statement.executeQuery("SELECT MAX(job_id) as temp FROM add_job");
                
                
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

                ps.setInt(1,ID);
                ps.setString(2, request.getParameter("txt_location"));
            ps.setString(3,request.getParameter("ddl_skills"));
            ps.setString(4,request.getParameter("ddl_functional_area"));
            ps.setString(5,request.getParameter("txt_desc"));
             ps.setString(6,request.getParameter("h_email"));
             ps.setString(7,request.getParameter("txt_company_name"));
              ps.setString(8,request.getParameter("txt_company_address"));
             ps.setString(9,request.getParameter("ddl_exp"));
            ps.setString(10,request.getParameter("txt_qualification"));
            ps.setString(11,request.getParameter("txt_role"));
             ps.setString(12,request.getParameter("txt_date"));
            ps.executeUpdate();
            
            
            response.sendRedirect("posted_requirement.jsp");
             
                
                
           

            }catch(Exception e){
            out.println(e.toString());
            }
           
            %>
    </body>
</html>
