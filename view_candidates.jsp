<%-- 
    Document   : view_candidates
    Created on : Feb 20, 2015, 11:50:12 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">

    <center>

        <form name="frm_view" action="candidate_CR.jsp" method="post">
            <h2><u><i>Applied Candidate Details....</i></u></h2>
                


            <%
                String email = request.getParameter("txt_email");
                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                    Statement stmt = con.createStatement();

                    ResultSet rs = stmt.executeQuery("Select seeker_id from applied_candidate");

                    //out.println("<table border=1>");
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                        Statement stmt1 = con1.createStatement();

                        ResultSet rs1 = stmt1.executeQuery("Select name,gender,email,mobile,date_of_birth from seeker_master where seeker_id='" + id + "'");
                        
                        rs1.next();
                        String n = rs1.getString(1);
                        String g = rs1.getString(2);
                        String e = rs1.getString(3);
                        String contact = rs1.getString(4);
                        String dob = rs1.getString(5);
                        
                        ResultSet rs2=stmt1.executeQuery("select qualification,key_skills,mks_obtained from seeker_academic where seeker_id='" + id + "' ");
                        
                        rs2.next();
                        String qual=rs2.getString(1);
                        String skills=rs2.getString(2);
                        String mks=rs2.getString(3);
                        
                        ResultSet rs3=stmt1.executeQuery("select job_id from applied_candidate where seeker_id='" + id + "'");
                        rs3.next();
                        int id1=rs3.getInt(1);
            %>
            <table>
                <tr><td>Job Id:</td><td><input type=""value="<%=id1%>"disabled></td></tr>
                <td><input type="hidden" name="h_id" value="<%=id1%>"></td>
                
                <tr><td>Email:</td><td><input type="" value="<%= e%>" disabled=""></td></tr>
                <td><input type="hidden" name="h_email" value="<%= e%>"></td>
                
                   <tr> <td>Name:</td><td><input type="" value="<%= n%>" disabled=""></td></tr>
                   <td><input type="hidden" name="h_name" value="<%= n%>"></td>
                   
                <tr> <td>Gender:</td><td><input type="" value="<%= g%>" disabled=""></td></tr>
                <td><input type="hidden" name="h_gen" value="<%= g%>"></td>
                
                 <tr><td>Qualification:</td> <td><input type="" value="<%=qual%>" disabled=""></td>
                <td><input type="hidden" name="h_qual" value="<%=qual%>"</td>
                
                 <tr><td>Marks:</td> <td><input type="" value="<%= mks%>" disabled=""</td>
                <td><input type="hidden" name="h_mks" value="<%= mks%>"</td>

                
                <tr><td>Key Skills:</td> <td><input type="" value="<%= skills%>" disabled=""</td>
                <td><input type="hidden" name="h_skills" value="<%= skills%>"</td>
                
                 <tr><td>DOB:</td> <td><input type="" value="<%= dob%>" disabled=""></td>
                <td><input type="hidden" name="h_dob" value="<%= dob%>"></td>
                
                <tr><td>Mobile:</td><td><input type=""value="<%= contact%>" disabled=""></td></tr>
                <td><input type="hidden" name="h_mob" value="<%= contact%>"></td>
                
               
                
               
                
                
                
               
                </tr>
                <tr><td><input type="submit" value="Confirm" name="btn_c" formaction="candidate_CR.jsp"></td>
                    <td><input type="submit" value="Reject" name="btn_r" formaction="home.jsp"></td></tr>
                <hr>
            </table>


            <%}

                    out.println("</table>");

                } catch (Exception e) {
                    out.println(e.toString());
                }


            %>



            </table> 

        </form>
    </center>
</body>
</html>
