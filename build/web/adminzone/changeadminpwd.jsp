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
        <title>Change Password</title>
    </head>
    <body>
        <form action="admincode/changeadminpwdcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <div style="border-radius: 0px 50px 0px 50px;margin: 0 auto;margin-top: 100px;width: 70%;min-height: 200px;height: auto;background-color: cyan;box-shadow: 5px 5px 10px navy;">
                    <h1 style="color: blue;text-align: center;">Change Password</h1>
                    <table style="width: 70%;margin: 0 auto;">
                        <tr>
                            <td>Old Password :</td>
                            <td><input type="password" name="oldpassword" required=""/></td>
                        </tr>
                        <tr>
                            <td>New Password : </td>
                            <td><input type="password" name="newpassword" required=""/></td>
                        </tr>
                        <tr>
                            <td>Confirm Password : </td>
                            <td><input name="confirmpassword" type="password" required=""/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Change Password"/></td>
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