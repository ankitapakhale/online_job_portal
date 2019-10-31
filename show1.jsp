<%-- 
    Document   : show1
    Created on : Feb 18, 2015, 9:28:18 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String var_qualification;
            String var_university,var_year_passing,var_mks_obtained,var_grade;
            
             String var_exam,var_authorized,var_max_marks,var_obtained_marks,var_date_certificate;
             
             
             int id=0;
             try {
                  
                String t_email=request.getParameter("tx_email");
               
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\.:1433;databaseName=job_portal1", "sa", "abcd1234");
                 
                    
                     Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                    
                    
                    ResultSet rs = stmt.executeQuery("SELECT qualification,university,year_of_passing,mks_obtained,grade_obtained from seeker_academic where seeker_id='"+ id +"'");
                   
                   
  
                 try{
                      id=rs.getInt(1);
                       session.setAttribute("s_id",id);
                   
                     rs.last();
                    
                     var_qualification=rs.getString(2);
                     var_university=rs.getString(3);
                     var_year_passing=rs.getString(4);
                    var_mks_obtained=rs.getString(5);
                     var_grade=rs.getString(6);
                     
                     
                     
                      session.setAttribute("qualification", var_qualification);
                      session.setAttribute("university",var_university);
                      session.setAttribute("year_of_passing",var_year_passing);
                      session.setAttribute("marks",var_mks_obtained);
                      session.setAttribute("grade",var_grade);
                     
                      
                       }catch(Exception ex){out.println(ex.toString());
                       }
                      
                       ResultSet rs1=stmt.executeQuery("select exam_name,authorised_by,max_mks,obtained_mks,date_on_certificate from seeker_extra_certificate where seeker_id='"+ id +"'");
                     try{ 
                         id=rs1.getInt(1);
                       session.setAttribute("s_id",id);
                   
                         rs1.last();
                     
                      var_exam=rs1.getString(2);
                     var_authorized=rs1.getString(3);
                     var_max_marks=rs1.getString(4);
                    var_obtained_marks=rs1.getString(5);
                    var_date_certificate=rs1.getString(6);
                    
                      session.setAttribute("exam",var_exam);
                      session.setAttribute("authorized",var_authorized);
                      session.setAttribute("max_mks",var_max_marks);
                      session.setAttribute("obtained_mks",var_obtained_marks);
                      session.setAttribute("date_certificate",var_date_certificate);
                      
                    }catch(Exception ex){out.println(ex.toString());}
                    
                    
                      
                 response.sendRedirect("register_update.jsp"); 
                 
                 }catch(Exception ex){out.println(ex.toString());}
                 
        
                 
                  
                    
             
               
            %>
    </body>
</html>
