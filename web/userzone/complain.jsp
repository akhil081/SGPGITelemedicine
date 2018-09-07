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
        <title>Complain</title>
    </head>
    <body>
        <form action="usercode/complaincode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 50%;min-height: 320px;height: auto; margin: 0 auto;margin-top: 100px; background-color: cyan;box-shadow: 5px 5px 10px navy;border-radius: 0px 50px 0px 50px;" >
                    <table style="margin: 0 auto;width: 70%; height: 300px;">
                        <tr>
                            <td colspan="2" style="color: brown; font-size: 40px;text-align: center;font-family: Comic Sans MS;">Complain Form</td>
                        </tr>
                        <tr>
                            <td>Subject : </td>
                            <td><textarea name="subject" required="" rows="3" cols="20"></textarea></td>
                        </tr>
                        <tr>
                            <td>Complain Text : </td>
                            <td><textarea name="complaintext" required="" rows="5" cols="20"></textarea></td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="patientname" value="<%=patientname%>"/></td>
                            <td><input type="submit" value="Submit"/></td>
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