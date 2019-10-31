<%-- 
    Document   : apply_job
    Created on : Feb 13, 2015, 11:44:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="header.html" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body bgcolor="#CCEEFF">
        <form action="1.jsp" method="post">

            <center>
                 <input type="" name="txt_email" value="<%= session.getAttribute("s_email") %>" disabled>
                          <input type="hidden" name="h_email" value="<%= session.getAttribute("s_email") %>">

                <%
                   
                    try {
                        String email1=request.getParameter("h_email");
                         String id=request.getParameter("txt_id");
                            session.setAttribute("ID",id);
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                        Statement stmt = con.createStatement();
                        PreparedStatement ps = con.prepareStatement("SELECT * from add_job where job_id=?");
                        ps.setString(1, request.getParameter("txt_id"));
                        ResultSet rs = ps.executeQuery();
                        
                         

                        out.println("<table border=1>");

                        while (rs.next()) {
                            int job_id = rs.getInt(1);
                            String job_location = rs.getString(2);
                            String key_skills = rs.getString(3);
                            String functional_area = rs.getString(4);
                            String job_description = rs.getString(5);
                            String email = rs.getString(6);
                            String company_name = rs.getString(7);
                            String company_address = rs.getString(8);
                            String experience = rs.getString(9);
                            String qualification = rs.getString(10);
                            String role = rs.getString(11);
                            String date_of_upload = rs.getString(12);
                            
                            
                            

                %>
                <table>

                    <tr><td>Job Id:</td><td><%=job_id%></td></tr>
                    <tr><td></td><td><input type="hidden" name="txt_id" value="<%=job_id%>"</td></tr>
                    <tr><td>Job Location:</td><td><%=job_location%></td></tr>
                    <tr><td>Key Skills:</td> <td><%=key_skills%></td></tr>
                    <tr> <td>Functional Area:</td><td><%=functional_area%></td></tr>
                    <tr><td>Job Description:</td><td><%=job_description%></td></tr>
                    <tr><td>Email:</td><td><%=email%></td></tr>
                    <tr><td>Company Name:</td><td><%=company_name%></td></tr>
                    <tr><td>Company Address:</td><td><%=company_address%></td></tr>
                    <tr><td>Experience:</td><td><%=experience%></td></tr>
                    <tr><td>Qualification:</td> <td><%=qualification%></td></tr>
                    <tr><td>Role:</td><td><%=role%></td></tr>
                    <tr><td>Job Posted On:</td><td><%=date_of_upload%></td></tr>

                    <tr>
                        <td><input type="submit" name="btn_submit" value="Apply Job" onclick="message()"></td>
                    </tr>
                    </table>
                    
                   
                    <%}
                      

                        } catch (Exception e) {
                            out.println(("No Jobs Found!!!"));
                        }

                    %><br>
                    <a href="job_requirements.jsp"><h2>Back</h2></a>
                
            </center>

        </form>

    </body>
</html>
