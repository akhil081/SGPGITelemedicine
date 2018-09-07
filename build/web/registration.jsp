<%-- 
    Document   : index
    Created on : 16 Jul, 2018, 5:25:22 PM
    Author     : lenovo
--%>

<%@page import="projectpackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/generalstyle.css" rel="stylesheet" />
        <link href="css/menu.css" rel="stylesheet" />
        <script src="js/slider.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body onload="moveslider()" bgcolor="#e5ebff">
        <form action="generalcode/registrationcode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <div style="margin: 0 auto;margin-top: 50px;background-color: bisque;width: 90%;height: 650px;box-shadow: 3px 3px 5px;border-radius: 20px;">
                        <table style="width: 85%;height: 600px; margin: 0 auto;">
                            <th colspan="2" style="color: blue;font-size: 40px;">REGISTRATION</th>
                            <tr></tr>
                            <tr></tr>
                            <tr>
                                <td style="text-align: right;">Patient Name : </td>
                                <td><input type="text" name="patientname" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Gender : </td>
                                <td><input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female</td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Father Name : </td>
                                <td><input type="text" name="fathername" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Address 1 :</td>
                                <td><textarea name="address1"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Address 2 :</td>
                                <td><textarea name="address2"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Disease : </td>
                                <td><textarea name="disease"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Referred by :</td>
                                <td><textarea name="referedby"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Hospital Name :</td>
                                <td><textarea name="hospitalname"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Contact Number : </td>
                                <td><input type="number" name="contactno" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Email Address : </td>
                                <td><input type="email" name="emailaddress" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Enter Aadhaar Number : </td>
                                <td><input type="number" name="adharno" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Password : </td>
                                <td><input name="password" type="password" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Confirm Password : </td>
                                <td><input name="confirmpassword" type="password" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Captcha Code :</td>
                                <td><% 
                                        CaptchaGenerator cg = new CaptchaGenerator();
                                        String capcode = cg.getCode();
                                    %>
                                    <h3><%= capcode %></h3>
                                    <input type="hidden" name="capcode" value="<%=capcode %>"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">Enter Captcha Code :</td>
                                <td><input type="text" name="captchacode" required=""/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" value="Register"/></td>
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
