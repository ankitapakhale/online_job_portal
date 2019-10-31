<%-- 
    Document   : search_job
    Created on : Feb 17, 2015, 7:08:58 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#CCEEFF">
        <form name="frm_search" action="search_code.jsp" method="post">
        <center>
        <table>
            <h2>
                Search Your Jobs From Here........
            </h2>
                
           
            <tr>
                <td>
                    Job Location:
                </td>
                <td>
                    <select name="ddl_location">
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
                         <select name="ddl_skills">
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
                        Experience:
                    </td>
                     <td>
                         <select name="ddl_exp">
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
                    <input type="submit" name="btn_search" value="Search">
                </td>
            </tr>
        </table>
         </center>
        </form>
    </body>
</html>
