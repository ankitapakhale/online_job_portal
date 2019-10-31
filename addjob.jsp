<%-- 
    Document   : addjob
    Created on : Feb 2, 2015, 7:25:30 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
        <form name="frm_addjob" method="post" action="addjobc.jsp">
            <center>
                <h1>Post New Job Requirement!!!!!</h1>
                <hr>
            <table>
                <tr>
                    <td>
                        Job Location:
                    </td>
                     <td>
                         <select name="txt_location" multiple="">
                        <option>Select</option>
                        <option>Chennai</option>
                        <option>Mumbai</option>
                        <option>Kolkata</option>
                        <option>Delhi</option>
                        <option>Bangalore</option>
                        <option>Pune</option>
                        <option>Hyderabad</option> 
                        <option>Cochin</option>
                        <option>Ahmedabad</option>
                        <option>Noida</option>
                        <option>Chandigarh</option>
                        <option>Any</option>

                    </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Key Skills:
                    </td>
                     <td>
                         <select name="ddl_skills" multiple="">
                             <option>Select</option>
                             <option>C</option>
                             <option>C++</option>
                             <option>Java</option>
                             <option>Asp.net</option>
                             <option>PHP</option>
                             <option>Servlet</option>
                              
                         </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Functional Area:
                    </td>
                     <td>
                         <select name="ddl_functional_area" multiple="">
                             <option>Select</option>
                             <option>Any</option>
                             <option>IT-Software-computer programming</option>
                             <option>IT-Computer Hardware</option>
                             <option>HR/Administration</option>
                             <option>IT-Software-Mobile</option>
                             <option>IT-Software-DBA/Datawarehousing</option>
                             <option>IT-Software-QA & Testing</option>
                             <option>IT-Software-Network Administration/Security</option>
                             <option>IT-Software-Internet Technologies</option>
                             <option>IT-Software-others</option>
                             <option>IT-Computer Software</option>
                             <option>IT-Computer-Hardware-Telecom</option>
                             <option>IT-Computer-Hardware-Technical Support/Staff</option>
                             <option>Pharma/Healthcare</option>
                             <option>Accounts/Finance/Tax/CS/Audit</option>
                             <option>Architecture/Interior Design</option>
                             <option>Banking/Inssurance</option>
                             <option>Other</option>
                             
                         </select>
                    </td>
                </tr>
                 <tr>
                    <td>
                        Job Description:
                    </td>
                      <td>
                    <textarea rows="4" cols="20" name="txt_desc"></textarea><br>
                </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                      <td>
                          <input type="" name="txt_email" value="<%= session.getAttribute("r_email")%>"  disabled=""> 
                          <input type="hidden" name="h_email" value="<%= session.getAttribute("r_email") %>"> 
                </td>
                </tr>
                <tr>
                    <td>
                        Company Name:
                    </td>
                     <td>
                         <input type="text" name="txt_company_name">
                    </td>
                </tr>
                <tr>
                    <td>
                        Company Address:
                    </td>
                     <td>
                         <input type="text" name="txt_company_address">
                    </td>
                </tr>
                <tr>
                    <td>
                        Experience:
                    </td>
                     <td>
                         <select name="ddl_exp" multiple="">
                             <option>select</option>
                             <option>0</option>
                             <option>1</option>
                             <option>2</option>
                             <option>3</option>
                             <option>4</option>
                             <option>5</option>
                             <option>6</option>
                             <option>7</option>
                             <option>8</option>
                             <option>9</option>
                             <option>10</option>
                             <option>11</option>
                             <option>12</option>
                             <option>13</option>
                             <option>14</option>
                             <option>15</option>
                             <option>16</option>
                             <option>17</option>
                             <option>18</option>
                             <option>19</option>
                             <option>20</option>
                         </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Qualification:
                    </td>
                     <td>
                         <select name="txt_qualification" multiple="">
                                <option>Select</option>
                                <option>BSC</option>
                                <option>B.E</option>
                                <option>BMS</option>
                                <option>B.A</option>
                                <option>B.COM</option>
                                <option>MSC</option>
                                <option>M.E</option>
                                <option>M.A</option>
                                <option>LLB</option>
                                <option>MCA</option>
                                <option>MBA</option>
                                <option>M.COM</option>
                                <option>B.Arch</option>
                                <option>B.Ed</option>
                                <option>MS</option>
                                <option>PhD/Doctorate</option>
                                <option>CA</option>
                                <option>CS</option>
                                <option>MBBS</option>
                            </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Role:
                    </td>
                     <td>
                         <input type="text" name="txt_role">
                    </td>
                </tr>
                 <tr>
                    <td>
                        Date Of Upload:
                    </td>
                     <td>
                         <input type="text" name="txt_date">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Post New Job"> </td>
                    <td><a href="posted_requirement.jsp">View Posted Requirement</a>
                    <a href="view_candidates.jsp">View Applied Candidate</a></td>
                   
                </tr>
            </table>
                
            </center>
        </form>
    </body>
</html>
