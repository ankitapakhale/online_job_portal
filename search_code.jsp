<%-- 
    Document   : search_code
    Created on : Feb 20, 2015, 7:54:02 AM
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
    <center>
        <%
            try {

                String location = request.getParameter("ddl_location");
                String skills = request.getParameter("ddl_skills");
                String exp = request.getParameter("ddl_exp");

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");

                Statement stmt = con.createStatement();
                PreparedStatement ps = con.prepareStatement("SELECT company_name,functional_area,job_description from add_job where job_location='" + location + "'and key_skills='" + skills + "' and experience='" + exp + "'");

                /*   ps.setString(1,);
                 ps.setString(2,request.getParameter("ddl_skills"));
                 ps.setString(3,request.getParameter("ddl_exp"));*/
                
                
                ResultSet rs = ps.executeQuery();
                
                    String name;
                    String functional_area;
                    String desc;
                
                while (rs.next())
                {
                    
                        name=rs.getString(1);
                       functional_area=rs.getString(2);
                        desc=rs.getString(3);
                    
                      
        %>
        <h2><u><i>Available Jobs.....</i></u></h2>
        <table>  
            
            <tr> <td><label>Company Name:</label><%= name %></td> </tr>
            <tr> <td><label>Functional Area:</label><%= functional_area %></td> </tr>
            <tr> <td><label>Description:</label><%= desc %></td> </tr>
            <tr><td><a href="job_requirements.jsp">Apply Job:</a></td></tr>

        </table>


        <%}
             
            } catch (Exception e) {
                out.println("<h2>Sorry Job Not Found</h2>");
            }

            %><br>
            <br>
            <a href="search_job.jsp">No Jobs..Search Another..</a>
            

    </center>

    </body>
</html>
