<%-- 
    Document   : userhome
    Created on : 21 Jul, 2018, 5:33:12 PM
    Author     : lenovo
--%>
<%
    if(session.getAttribute("userid")==null)
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
        <link href="../css/userstyle.css" rel="stylesheet"/>
        <link href="../css/user_menu.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <form action="usercode/changepasswordcode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="margin: 0 auto; margin-top: 100px; height: 250px;width: 400px;background-color: cyan;border-radius: 50px 0px 50px 0px; box-shadow: 5px 5px 10px navy;;">
                        <table style="width: 80%; height: 200px; margin: 0 auto;">
                        <tr>
                            <td colspan="2" style="text-align: center;color: brown;font-size: 35px; font-family: Comic Sans MS;">Change Password</td>
                        </tr>
                        <tr>
                            <td>Old Password : </td>
                            <td><input type="password" name="oldpassword" required=""/></td>
                        </tr>
                        <tr>
                            <td>New Password : </td>
                            <td><input type="password" name="newpassword" required=""/></td>
                        </tr>
                        <tr>
                            <td>Confirm Password : </td>
                            <td><input type="password" name="confirmpassword" required=""/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Change Password"/></td>
                        </tr>
                    </table>
                    </div>    
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<%
    }
%>