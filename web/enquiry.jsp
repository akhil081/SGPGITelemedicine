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
        <title>Enquiry</title>
    </head>
    <body  onload="moveslider()" bgcolor="#e5ebff">
        <form action="generalcode/enquirycode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <div style="border-radius: 20px;height: 400px;width: 70%;background-color: bisque;box-shadow: 3px 3px 5px;margin: 0 auto;margin-top: 100px;">
                        <table  style="margin-top: 80px; width: 80%; height: 350px; margin: 0 auto;">
                            <tr>
                                <td colspan="2" style="font-size: 40px;color: blue;text-align: center;">Enquiry Form</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Enter Your Name : </td>
                                <td><input type="text" name="name" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Select Gender : </td>
                                <td><input type="radio" name="gender" value="Male"/>Male
                                <input type="radio" name="gender" value="Female"/>Female</td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Enter Address : </td>
                                <td><textarea name="address"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Enter Contact Number : </td>
                                <td><input type="number" name="contactno" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Enter Email Address : </td>
                                <td><input type="email" name="emailaddress" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: center">Enter Enquiry Text : </td>
                                <td><textarea name="enquirytext"></textarea></td>
                            </tr>
                            <tr>
                                <td>&nbsp</td>
                                <td><input type="submit" value="Submit"/></td>
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
