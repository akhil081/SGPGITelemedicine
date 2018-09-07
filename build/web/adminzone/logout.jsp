<%-- 
    Document   : logout
    Created on : 24 Jul, 2018, 6:46:35 PM
    Author     : lenovo
--%>
<%
    session.invalidate();
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
            }
        </script>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body onload="logout()" bgcolor="black">
        
    </body>
</html>
