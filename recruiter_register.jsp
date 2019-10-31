<%-- 
    Document   : recruiter_register
    Created on : Jan 21, 2015, 8:22:34 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
              function validateForm() {
            
             var x = document.forms["frm_recruiter_register"]["txt_email"].value;
            if (x == null || x == "") {
                alert("email must be filled out");
                return false;
            }
            
             var x = document.forms["frm_recruiter_register"]["txt_pwd"].value;
            if (x == null || x == "") {
                alert("password must be filled out");
                return false;
            }
            
             var x = document.forms["frm_recruiter_register"]["txt_cpwd"].value;
            if (x == null || x == "") {
                alert("confirm password must be filled out");
                return false;
            }
        
        
        
            var x = document.forms["frm_recruiter_register"]["txt_name"].value;
            if (x == null || x == "") {
                alert("First Name must be filled out");
                return false;
            }
        
            
             var x = document.forms["frm_recruiter_register"]["txt_mname"].value;
            if (x == null || x == "") {
                alert("Middle Name must be filled out");
                return false;
            }
        
         var x = document.forms["frm_recruiter_register"]["txt_surnamename"].value;
            if (x == null || x == "") {
                alert("Last Name must be filled out");
                return false;
            }
            
            
            
             var x = document.forms["frm_register"]["txt_mobile"].value;
            if (x == null || x == "") {
                alert("Mobile must be filled out");
                return false;
            }
            
            
           
        }
        
    
        function allLetter(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                return true;
            }
            else
            {
                document.getElementById("name_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("name_msg").style.color = "red";
                return false;
            }
        }
        function allLetter1(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                return true;
            }
            else
            {
                document.getElementById("name1_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("name1_msg").style.color = "red";
                return false;
            }
        }

        function allLetter2(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                return true;
            }
            else
            {
                document.getElementById("name2_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("name2_msg").style.color = "red";
                return false;
            }
        }

        function allnumeric(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
                //alert('Your Registration number has accepted....');
                document.frm_register.txt_mob.focus();
                return true;
            }
            else
            {
                document.getElementById("mob_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("mob_msg").style.color = "red";
                document.frm_register.txt_mob.focus();
                return false;
            }
        }

        function email()
        {
            x = document.forms["frm_recruiter_register"]["txt_email"].value;
            var atpos = x.indexOf("@");
            var dotpos = x.lastIndexOf(".");
            document.getElementById("email_msg").innerHTML = ("");
            if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length)
            {   // alert("plz provide valid email address");
                document.getElementById("email_msg").innerHTML = ("Not a valid e-mail address");
                 document.getElementById("email_msg").style.color = "red";
                returnvalue = false;
            }


        }
            
        </script>
    </head>
    <body bgcolor="#CCEEFF">
        <form name="frm_recruiter_register" method="post" action="recruiter_registerc.jsp">
        <center>
        <h1>Recruiter Registration</h1>
        
        <table>
            
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <input type="text" name="txt_name" onkeyup="allLetter(document.frm_recruiter_register.txt_name)" >
                </td>
                <td>
                        <div id="name_msg"></div>
                    </td>
            </tr>
             <tr>
                <td>
                    Middle Name:
                </td>
                <td>
                    <input type="text" name="txt_mname" onkeyup="allLetter1(document.frm_recruiter_register.txt_mname)">
                </td>
                <td>
                        <div id="name1_msg"></div>
                    </td>
            </tr>
             <tr>
                <td>
                    Surname:
                </td>
                <td>
                    <input type="text" name="txt_surname" onkeyup="allLetter2(document.frm_recruiter_register.txt_surname)">
                </td>
                <td>
                        <div id="name2_msg"></div>
                    </td>
            </tr>
             <tr>
                <td>
                    Email:
                </td>
                <td> 
                    <input type="text" name="txt_email" onkeyup="email(document.frm_recruiter_register.txt_email)">
                </td>
                <td>
                        <div id="email_msg"></div>
                    </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td> 
                    <input type="password" name="txt_pwd">
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td> 
                    <input type="password" name="txt_cpwd">
                </td>
            </tr>
           
            
            
            <tr>
                <td>
                    Mobile:
                </td>
                <td>
                    <input type="text" name="txt_mobile" maxlength="10" onkeyup="allnumeric(document.frm_recruiter_register.txt_mobile)">
                </td>
                <td>
                        <div id="mob_msg"></div>
                    </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="btn_submit">
                    <input type="Reset" name="reset">
                </td>
               
            </tr>
            
        </table>
    </center>
        </form>
    </body>
</html>
