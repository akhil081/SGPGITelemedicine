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
        <title>Feedback</title>
    </head>
    <body>
        <form action="usercode/feedbackcode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 50%;min-height: 250px;height: auto; margin: 0 auto;margin-top: 100px;background-color: cyan;border-radius: 50px 0px 50px 0px;box-shadow: 5px 5px 10px navy;" >
                    <table style="margin: 0 auto; width: 70%;height: 200px; ">
                        <tr>
                            <td colspan="2" style="color: brown;font-size: 40px;text-align: center; font-family: Comic Sans MS;">Feedback Form</td>
                        </tr>
                        <tr>
                            <td>Feedback Text : </td>
                            <td><textarea name="feedbacktext" required="" cols="30" rows="5"></textarea></td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="patientname" value="<%=patientname%>"/></td>
                            <td><input type="submit" value="Submit Feedback"/></td>
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