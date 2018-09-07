<%-- 
    Document   : logout
    Created on : 22 Jul, 2018, 5:09:24 PM
    Author     : lenovo
--%>
<%
    session.invalidate();
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
            }
        </script>
    </head>
    <body onload="logout()" bgcolor="black">
        
    </body>
</html>
