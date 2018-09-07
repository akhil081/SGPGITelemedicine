<%-- 
    Document   : adminhome
    Created on : 21 Jul, 2018, 5:37:33 PM
    Author     : lenovo
--%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {    
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <link href="../css/admin_menu_1.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
    </head>
    <body>
        <form action="admincode/bloodavailabilitycode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <div style="border-radius: 50px 0px 50px 0px;width: 70%;height: 200px;margin: 0 auto;margin-top: 100px;background-color: cyan;box-shadow: 5px 5px 10px navy;">
                        <h1 style="text-align: center;color: navy;">Blood Availability Form</h1>
                    <table style="width: 70%; margin: 0 auto;">
                        <tr>
                            <td>Blood Group : </td>
                            <td>
                                <select name="bloodgroup">
                                    <option>--Select--</option>
                                    <option>AB+</option>
                                    <option>AB-</option>
                                    <option>A+</option>
                                    <option>A-</option>
                                    <option>B+</option>
                                    <option>B-</option>
                                    <option>O+</option>
                                    <option>O-</option>
                                </select>
                        </option>
                            </td>
                        </tr>
                        <tr>
                            <td>Available Units : </td>
                            <td><input type="number" required="" name="availableunits"/></td>
                        </tr>
                        <tr>
                            <td>Blood Bank Name : </td>
                            <td><input name="bloodbankname" type="text" required=""/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                    </div>    
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>    
        </form>
    </body>
</html>
<%
    }
%>        