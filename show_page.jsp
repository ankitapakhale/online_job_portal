<%-- 
    Document   : show_page
    Created on : Feb 18, 2015, 6:01:06 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            String querystring=request.getQueryString();
             querystring=request.getParameter("x");
            String var_name;
            String var_mname, var_surname, var_gender, dob;
            int var_mob;

            String var_address, var_city, var_landmark;
            int var_pincode;

            int id = 0;
            
           
            try {
                String t_email = request.getParameter("tx_email");

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");

                Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

                ResultSet rs = stmt.executeQuery("SELECT seeker_id,name,middle_name,surname,gender,mobile,date_of_birth from seeker_master where email='" + querystring + "'");

                try {
                    

                    rs.next();

                    var_name = rs.getString(2);
                    var_mname = rs.getString(3);
                    var_surname = rs.getString(4);
                    var_gender = rs.getString(5);
                    var_mob = rs.getInt(6);
                    dob = rs.getString(7);

                    session.setAttribute("name", var_name);
                    session.setAttribute("mname", var_mname);
                    session.setAttribute("surname", var_surname);
                    session.setAttribute("gender", var_gender);
                    session.setAttribute("mob", var_mob);
                    session.setAttribute("dob", dob);

                } catch (Exception ex) {
                    out.println("namrata"+ex.toString());
                }
                 id = rs.getInt(1);
                session.setAttribute("s_id", id);
                
                ResultSet rs1 = stmt.executeQuery("select address,city,pincode,landmark from seeker_address where seeker_id='" + id + "'");
                try {

                    rs1.last();

                    var_address = rs1.getString(1);
                    var_city = rs1.getString(2);
                    var_pincode = rs1.getInt(3);
                    var_landmark = rs1.getString(4);

                    session.setAttribute("v_address", var_address);
                    session.setAttribute("city", var_city);
                    session.setAttribute("pincode", var_pincode);
                    session.setAttribute("landmark", var_landmark);

                } catch (Exception ex) {
                    out.println(ex.toString());
                }

                response.sendRedirect("register_update.jsp");

            } catch (Exception ex) {
                out.println(ex.toString());
            }


        %>
    </body>
</html>
