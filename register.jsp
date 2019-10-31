

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>
<%@include file="header.html" %>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script language="javascript">
        function validateForm() {
            
             var x = document.forms["frm_register"]["txt_email"].value;
            if (x == null || x == "") {
                alert("email must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_pwd"].value;
            if (x == null || x == "") {
                alert("password must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_cpwd"].value;
            if (x == null || x == "") {
                alert("confirm password must be filled out");
                return false;
            }
        
        
        
            var x = document.forms["frm_register"]["txt_fname"].value;
            if (x == null || x == "") {
                alert("First Name must be filled out");
                return false;
            }
        
            
             var x = document.forms["frm_register"]["txt_mname"].value;
            if (x == null || x == "") {
                alert("Middle Name must be filled out");
                return false;
            }
        
         var x = document.forms["frm_register"]["txt_lname"].value;
            if (x == null || x == "") {
                alert("Last Name must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_address"].value;
            if (x == null || x == "") {
                alert("Address must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_city"].value;
            if (x == null || x == "") {
                alert("City must be filled out");
                return false;
            }
            
            
             var x = document.forms["frm_register"]["txt_pincode"].value;
            if (x == null || x == "") {
                alert("Pincode must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_lmark"].value;
            if (x == null || x == "") {
                alert("Landmark must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["rb_gender"].value;
            if (x == null || x == "") {
                alert("Gender must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_mob"].value;
            if (x == null || x == "") {
                alert("Mobile must be filled out");
                return false;
            }
            
             var x = document.forms["frm_register"]["txt_date"].value;
            if (x == null || x == "") {
                alert("Date must be filled out");
                return false;
            }
           
        }
        
    
        function allLetter(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("name_msg").innerHTML = "";
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
                document.getElementById("name1_msg").innerHTML = "";
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
                document.getElementById("name2_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("name2_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("name2_msg").style.color = "red";
                return false;
            }
        }

        function allLetter3(inputtxt)
        {
            var letters = /^[A-Za-z]+$/;
            if (inputtxt.value.match(letters))
            {
                document.getElementById("name3_msg").innerHTML ="";
                return true;
            }
            else
            {
                document.getElementById("name3_msg").innerHTML = ("plz enter alphabets only");
                document.getElementById("name3_msg").style.color = "red";
                return false;
            }
        }
        function allnumeric(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
               document.getElementById("mob_msg").innerHTML ="";
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

        function allnumeric1(inputtxt)
        {
            var numbers = /^[0-9]+$/;
            if (inputtxt.value.match(numbers))
            {
                document.getElementById("pincode_msg").innerHTML ="";
                document.frm_register.txt_pincode.focus();
                return true;
            }
            else
            {
                document.getElementById("pincode_msg").innerHTML = ("plz enter only numbers");
                document.getElementById("pincode_msg").style.color = "red";
                document.frm_register.txt_pincode.focus();
                return false;
            }
        }

        function email()
        {
            x = document.forms["frm_register"]["txt_email"].value;
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
        
        
            function Validategender(){
                document.getElementById("gender_msg").innerHTML=("");
                if ( ( register.gender[0].checked == false ) && ( register.gender[1].checked == false ) ) 
                {
                    document.getElementById("gender_msg").innerHTML=( "Please choose your Gender: Male or Female" );
                    document.getElementById("gender_msg").style.color="red"; 
                }
                return false;
            }

    </script>
</head>
<body bgcolor="#CCEEFF">
    <form name="frm_register" method="post" action="registerc.jsp" onsubmit="validateForm()" >

        <center>
            <table>
                <tr>
                    <td align="center">
                        <h3><i><u>Sign Up For New Account!!!</u></i></h3>
                    </td>

                </tr>
                <tr>
                    <td>
                        <h2>
                            <i>Login Details</i><br>
                            <hr>
                        </h2>
                    </td>

                </tr>
                <tr>
                    <td>
                        Email Id:
                    </td>
                    <td align="right">
                        <input type="email" name="txt_email" onkeyup="email(document.frm_register.txt_email)" >
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
                        <input type="password" name="txt_pwd" maxlength="8" onkeyup="checkPassword(str)"  >
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirm Password:
                    </td>
                    <td>
                        <input type="password" name="txt_cpwd" maxlength="8"><br>
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
                        First Name:
                    </td>
                    <td align="right">
                        <input type="text" name="txt_fname" onkeyup="allLetter(document.frm_register.txt_fname)">
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
                        <input type="text" name="txt_mname" onkeyup="allLetter1(document.frm_register.txt_mname)">
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
                        <input type="text" name="txt_lname" onkeyup="allLetter2(document.frm_register.txt_lname)"><br>
                    </td>
                    <td>
                        <div id="name2_msg"></div>
                    </td>
                </tr>
                <tr>
                    <td> Address:</td>
                    <td>
                        <textarea rows="4" cols="20" name="txt_address"></textarea><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        City:
                    </td>
                    <td>
                        <input type="text" name="txt_city" onkeyup="allLetter3(document.frm_register.txt_city)">
                    </td>
                    <td>
                        <div id="name3_msg"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Pin code:
                    </td>
                    <td>
                        <input type="text" name="txt_pincode" onkeyup="allnumeric1(document.frm_register.txt_pincode)">
                    </td>
                    <td>
                        <div id="pincode_msg"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Landmark:
                    </td>
                    <td>
                        <input type="text" name="txt_lmark" onkeyup="allLetter(document.frm_register.txt_lmark)">
                    </td>
                </tr>

                <tr>
                    <td>
                        Gender:
                    </td>
                    <td align="right">
                        <input type="radio" name="rb_gender" value="Male">Male
                        <input type="radio" name="rb_gender" value="Female" onmousewheel="Validategender(document.frm_register.rb_gender)">Female
                    </td>
                    <td>
                        <div id="gender_msg"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile:
                    </td>
                    <td>
                        <input type="text" name="txt_mob" maxlength="10" onkeyup=" allnumeric(document.frm_register.txt_mob)">
                    </td>
                    <td>
                        <div id="mob_msg"></div>
                    </td>

                </tr>

                <tr>
                    <td>
                        Date Of Birth:
                    </td>
                    <td>
                        <input type="date" name="txt_date">

                    </td>

                </tr>

                <br><br>
                <tr>
                    <td>
                        <input type="submit" value="NEXT">
                        <input type="reset" value="RESET">
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

