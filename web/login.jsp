<%-- 
    Document   : index
    Created on : 16 Jul, 2018, 5:25:22 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/generalstyle.css" rel="stylesheet" />
        <link href="css/menu.css" rel="stylesheet" />
        <script src="js/slider.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body onload="moveslider()" bgcolor="#e5ebff">
        <form action="generalcode/logincode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <div style="border-radius: 20px;height: 250px; width: 50%; background-color: bisque;margin: 0 auto;margin-top: 100px;box-shadow: 3px 3px 5px;">
                        <table style="width: 80%;height: 200px;margin: 0 auto;">
                            <th colspan="2" style="color: blue;font-size: 40px;">LOGIN</th>
                            <tr>
                                <td style="text-align: right;">User Id : </td>
                                <td><input type="text" name="userid" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Password : </td>
                                <td><input type="password" name="password" required=""/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" value="Login"/></td>
                            </tr>
                        </table>
                        </div>    
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
