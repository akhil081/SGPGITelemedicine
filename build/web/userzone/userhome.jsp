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
        <title>User Home</title>
    </head>
    <body>
        <form>
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<%
    }
%>