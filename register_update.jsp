-<%-- 
    Document   : viewprofile
    Created on : Feb 12, 2015, 10:58:37 PM
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
        <form name="frm_update_profile" action="register_updatec.jsp" method="post">
            <center>
                <table>
                    <tr>
                        <td align="center">
                           Update Your Profile:
                        </td>

                    </tr>
                    
                    <tr>   
                        <td>
                            <h2>
                                <i>Personal Details</i><br>
                                <hr>
                            </h2>
                        </td>
                    <tr>
                       
                        <td>
                            <input type="hidden" value="<%=session.getAttribute("s_id")%>" name="form_id">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            First Name:
                        </td>
                        <td align="right">
                            <input type="text" name="txt_fname" value="<%= session.getAttribute("name") %>"  onkeyup="AllowAlphabet()">
                        </td>
                        <td>
                        <td><div id="namemessage"></div></td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Middle Name:
                        </td>
                        <td>
                            <input type="text" name="txt_mname" value="<%= session.getAttribute("mname") %>" onkeyup="AllowAlphabet1()">
                        </td>

                        <td><div id="namemessage"></div></td>

                    </tr>
                    <tr>
                        <td>
                            Surname:
                        </td>
                        <td>
                            <input type="text" name="txt_lname" value="<%= session.getAttribute("surname") %>"  onkeyup="AllowAlphabet2()"><br>
                        </td>
                        <td><div id="namemessage"></div></td>
                    </tr>
                    <tr>
                        <td> Address:</td>
                        <td>
                            <input type="text" name="txt_address" value="<%= session.getAttribute("v_address") %>"><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City:
                        </td>
                        <td>
                            <input type="text" name="txt_city" value="<%= session.getAttribute("city") %>">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Pin code:
                        </td>
                        <td>
                            <input type="text" name="txt_pincode" value="<%= session.getAttribute("pincode") %>">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Landmark:
                        </td>
                        <td>
                            <input type="text" name="txt_lmark"value="<%= session.getAttribute("landmark") %>">
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Gender:
                        </td>
                        <td align="right">
                            <input type="text" name="txt_gender" value="<%= session.getAttribute("gender")%>" disabled>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Mobile:
                        </td>
                        <td>
                            <input type="text" name="txt_mob" value="<%= session.getAttribute("mob")%>" onkeyup="phonenumber(txt_mobile)">
                        </td>
                        <td><div id="namemessage"></div></td>
                    </tr>

                     <tr>
                        <td>
                            Date Of Birth:
                        </td>
                        <td>
                            <input type="text" name="txt_date" value="<%= session.getAttribute("dob")%>" disabled>

                        </td>
                    </tr>

                    <br><br>
                    <tr>
                        <td>
                            <input type="submit" value="UPDATE">
                           
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label name="lbl_msg"></label>

                        </td>
                    </tr>

                </table>

            </center>
        
        </form>
        

           
            
    </body>
</html>
