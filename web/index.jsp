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
        <title>SGPGITelemedine</title>
    </head>
    <body onload="moveslider()" bgcolor="#f2f2f2">
        <form>
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main" style="">
                        <img style="margin-top: 100px;margin-left: 10%" height="275px" width="80%" src="images/p1.png"/>
                        <img style="margin-top: 50px;margin-left: 10%" height="275px" width="80%" src="images/p2.png"/>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
