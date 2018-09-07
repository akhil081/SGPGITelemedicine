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
        <title>Discussion Forum</title>
    </head>
    <body>
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 70%;min-height: 500px;height: auto; background-color: cyan;margin: 0 auto;margin-top: 50px;box-shadow: 5px 5px 10px navy;border-radius: 0px 50px 0px 50px;">
                    <table style="width: 70%;margin: 0 auto;">
                        <tr>
                            <td colspan="2" style="color: blue;text-align: center;font-size: 40px;">Discussion Forum</td>
                        </tr><br/><br/>
                        <tr>
                            <td>Your Answer : </td>
                            <td><textarea name="answertext" required="" rows="10" cols="30"></textarea></td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="patientname" value="<%=patientname%>"/>
                                <%
                                    int qid = Integer.parseInt(request.getParameter("qid"));
                                %>
                                <input type="hidden" name="qid" value="<%=qid%>"/>
                            </td>
                            <td><input type="submit" value="Post Answer"/></td>
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