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
                    <div id="main">
                        <div style="border-radius: 20px;height: 600px;padding-top: 20px; width: 80%; background-color: bisque;margin: 0 auto;margin-top: 100px;box-shadow: 3px 3px 5px;">
                            <h1 style="color: navy; text-align: center;font-size: 50px;">Mission</h1>
                            <div style="width: 90%;font-size: 18px; color: black;margin: 0 auto;height: 400px;">The institute offers <i>DM/MCh/PDF/PDCC/and Senior Residency (Hospital Services)</i> training programs in
                                various specialties. The institute runs <i>DM (Doctorate of Medicine), M.Ch. (Magister Chirurgi), and MD
                                    (Doctor of Medicine)</i> programs, training residents in surgical and medical super specialty and specialty 
                                fields. It also runs Ph.D. programs for basic science research.
                                <b>SGPGIMS</b> pioneered the 3 year<i> DM/MCh </i>program at a time when the typical course was 2 years before MCI mandated that all such
                                training programs should be of 3 years duration. It was the first Indian Institution to start DM courses in Clinical
                                Immunology, Medical Genetics and MCh in Endocrine Surgery.
                                <b>SGPGIMS</b> has a library with more than <b>21,000</b> books and subscriptions to nearly 450 scientific journals, a
                                computer network with more than 230 computers, Internet connections, and e-mail facilities. Patient care activities are computerized.
                                There is the main auditorium, a smaller auditorium, and seminar rooms.
                                Teaching covers basic, medical, and surgical specialties, with compulsory and optional courses covering areas relevant to all
                                aspects of medicine. There is a strong emphasis on research and training in research methodology in postgraduate courses.</div>
                        </div>    
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
