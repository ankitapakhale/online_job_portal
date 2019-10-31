<%-- 
    Document   : newjsp
    Created on : Feb 10, 2015, 11:13:47 PM
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
        <script language="javascript">
            
        </script>
    </head>
    <body bgcolor="#CCEEFF">
        <form id="job_requirement" action="apply_job.jsp" method="post">
            
            
            <%
                String mail=session.getAttribute("email").toString();
                
                %>
            
                <a href="show_page.jsp?x=<%= mail %> "><i><u>Update Your Profile</u></i></a>
           
            <center>
                <table>
                    <tr>
                        <td>
                            Email:<input type="" name="tx_email" value="<%= session.getAttribute("email")%>" disabled>
                        </td>

                </table>
            </center>
            <center>

                <table border="1">
                <tr>
                        <th>Job Id:</th>
                        <th>Job_Location</th>
                        <th>Key_skills</th>
                        <th>Company Name</th>
                    </tr>

                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                        Statement stmt = con.createStatement();

                        ResultSet rs = stmt.executeQuery("Select job_id,job_location,key_skills,company_name from add_job");

                        //out.println("<table>");
                        while (rs.next()) {
                            int job_id = rs.getInt(1);
                            String job_location = rs.getString(2);
                            String key_skills = rs.getString(3);
                            String company_name = rs.getString(4);

                           // session.setAttribute("company",company_name);
%>
              
                    
                    <tr> 
                        <td><%=job_id%></td> 
                        <td><%=job_location%></td>
                        <td><%=key_skills%></td>
                        <td><%=company_name%></td>
                    </tr>


                    <%}
                            out.println("</table>");
                            
                           

                        } catch (Exception e) {
                            out.println(e.toString());
                        }


                    %>

                    <tr><td>
                            Enter Id:   <input type="text" name="txt_id" onkeyup="allnumeric(document.)" >
                        </td></tr>
                    <input type="submit" value="submit">

                   
                    </center>

                    </body>


                    </html>
