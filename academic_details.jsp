<%-- 
    Document   : uploadurresume
    Created on : Jan 31, 2015, 6:11:00 AM
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
        <script language="javascript">
            function validateForm() {
            
             var x = document.forms["frm_academic_details"]["txt_qualification"].value;
            if (x == null || x == "") {
                alert("Qualificatio must be filled out");
                return false;
            }
            
             var x = document.forms["frm_academic_details"]["txt_board"].value;
            if (x == null || x == "") {
                alert("Board must be filled out");
                return false;
            }
            
             var x = document.forms["frm_academic_details"]["txt_date"].value;
            if (x == null || x == "") {
                alert("Date password must be filled out");
                return false;
            }
        
        
        
            var x = document.forms["frm_academic_details"]["txt_mks"].value;
            if (x == null || x == "") {
                alert("Marks must be filled out");
                return false;
            }
        
            
             var x = document.forms["frm_academic_details"]["txt_grade"].value;
            if (x == null || x == "") {
                alert("Grade must be filled out");
                return false;
            }
        
         
           
        }
        
        function allLetter(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("board_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("board_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("board_msg").style.color = "red";
                return false;
            }
        }
        
         function allLetter1(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("grade_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("grade_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("grade_msg").style.color = "red";
                return false;
            }
        }
        
        
         function allLetter2(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                
                document.getElementById("exam_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("exam_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("exam_msg").style.color = "red";
                return false;
            }
        }
        
         function allLetter3(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("authorized_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("authorized_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("authorized_msg").style.color = "red";
                return false;
            }
        }
        
         function allLetter4(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("comp_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("comp_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("comp_msg").style.color = "red";
                return false;
            }
        }
         function allnumeric(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
                document.getElementById("mks_msg").innerHTML ="";
                document.frm_register.txt_mob.focus();
                return true;
            }
            else
            {
                document.getElementById("mks_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("mks_msg").style.color = "red";
                document.frm_register.txt_mob.focus();
                return false;
            }
        }
         function allnumeric1(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
                document.getElementById("max_mks_msg").innerHTML ="";
                document.frm_register.txt_mob.focus();
                return true;
            }
            else
            {
                document.getElementById("max_mks_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("max_mks_msg").style.color = "red";
                document.frm_register.txt_mob.focus();
                return false;
            }
        }
         function allnumeric2(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
               document.getElementById("obtained_mks_msg").innerHTML ="";
                document.frm_register.txt_mob.focus();
                return true;
            }
            else
            {
                document.getElementById("obtained_mks_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("obtained_mks_msg").style.color = "red";
                document.frm_register.txt_mob.focus();
                return false;
            }
        }
        
         function allnumeric3(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
               document.getElementById("salary_msg").innerHTML ="";
                document.frm_register.txt_mob.focus();
                return true;
            }
            else
            {
                document.getElementById("salary_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("salary_msg").style.color = "red";
                document.frm_register.txt_mob.focus();
                return false;
            }
        }
        </script>
            
            
    </head>
    <body bgcolor="#CCEEFF">
        <form name="frm_academic_details" method="post" action="academic_detailsc.jsp" onsubmit="validateForm()">
            <center>

                <table>
                    <tr>
                        <td>
                            <h2>
                                <i>Academic Details</i><br>
                                <hr>
                            </h2>
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
                            University/Board:
                        </td>
                        <td>
                            <input type="text" name="txt_board" onkeyup="allLetter(document.frm_academic_details.txt_board)">
                        </td>
                        <td>
                            <div id="board_msg">
                                
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Year Of Passing:
                        </td>
                        <td>

                            <select name="txt_date" multiple="">
                                <option>Select</option>
                                <option>1980</option>

                                <option>1981</option>

                                <option>1982</option>

                                <option>1983</option>

                                <option>1984</option>

                                <option>1985</option>

                                <option>1986</option>

                                <option>1987</option>

                                <option>1988</option>

                                <option>1989</option>

                                <option>1990</option>

                                <option>1991</option>

                                <option>1992</option>

                                <option>1993</option>

                                <option>1994</option>

                                <option>1995</option>

                                <option>1996</option>

                                <option>1997</option>

                                <option>1998</option>

                                <option>1999</option>

                                <option>2000</option>

                                <option>2001</option>

                                <option>2002</option>

                                <option>2003</option>

                                <option>2004</option>

                                <option>2005</option>

                                <option>2006</option>

                                <option>2007</option>

                                <option>2008</option>

                                <option>2009</option>

                                <option>2010</option>

                                <option>2011</option>

                                <option>2012</option>

                                <option>2013</option>

                                <option>2014</option>
                                <option>2015</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Marks Obtained:</td>
                        <td>
                            <input type="text" name="txt_mks" onkeyup="allnumeric(document.frm_academic_details.txt_mks)"><br>
                        </td>
                        <td>
                            <div id="mks_msg">
                                
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Grade Obtained:
                        </td>
                        <td>
                            <input type="text" name="txt_grade" onkeyup="allLetter1(document.frm_academic_details.txt_grade)">
                        </td>
                         <td>
                            <div id="grade_msg"> </div>
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
                            <h2>
                                <i>Extra Certificate(Not Compulsory)</i><br>
                                <hr>
                            </h2>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Exam Name:
                        </td>
                        <td align="right">
                            <input type="text" name="txt_exam_name" onkeyup="allLetter2(document.frm_academic_details.txt_exam_name)">
                        </td>
                        <td>
                            <div id="exam_msg"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Authorized BY:
                        </td>
                        <td>
                            <input type="text" name="txt_authorised" onkeyup="allLetter3(document.frm_academic_details.txt_exam_name)">
                        </td>
                        <td>
                            <div id="authorized_msg">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Maximum Marks:
                        </td>
                        <td>
                            <input type="text" name="txt_max_mks" onkeyup="allnumeric1(document.frm_academic_details.txt_max_mks)">
                        </td>
                        <td>
                            <div id="max_mks_msg"></div>
                        </td>
                    </tr>
                    <tr>
                        <td> Marks Obtained:</td>
                        <td>
                            <input type="text" name="txt_obtained_mks" onkeyup="allnumeric2(document.frm_academic_details.txt_obtained_max)"><br>
                        </td>
                        <td>
                            <div id="obtained_mks_msg"></div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Date On Certificate:
                        </td>
                        <td>
                            <input type="date" name="txt_date_certificate">
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <td>
                            <h2>
                                <i>Experience(Not Compulsory)</i><br>
                                <hr>
                            </h2>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Company Name:
                        </td>
                        <td>
                            <input type="text" name="txt_comp_name" onkeyup="allLetter4(document.frm_academic_details.txt_comp_name)">
                        </td>
                        <td>
                            <div id="comp_msg">
                                
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Date From:
                        </td>
                        <td>
                            <input type="date" name="txt_date_from">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Date To:
                        </td>
                        <td>
                            <input type="date" name="txt_date_to">
                        </td>
                    </tr>
                    <tr>
                        <td> Reason for Resignation:</td>

                        <td>
                            <textarea rows="4" cols="4" name="txt_reason"></textarea><br>
                        </td>

                    </tr>


                    <tr>
                        <td>
                            Salary Drawn:
                        </td>
                        <td>
                            <input type="text" name="txt_salary" onkeyup="allnumeric3(document.frm_academic_details.txt_salary)">
                        </td>
                        <td>
                            <div id="salary_msg"></div>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td>
                            <input type="submit" value="NEXT">

                        </td>
                    </tr> 
                </table>
            </center>
        </form>


    </body>
</html>
