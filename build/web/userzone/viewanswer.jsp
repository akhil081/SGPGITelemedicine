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
        <form>
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 95%;min-height: 500px;height: auto;margin: 0 auto;margin-top: 50px;background-color: cyan;box-shadow: 5px 5px 10px navy;border-radius: 50px 0px 50px 0px; ">
                        <h1 style="text-align: center;color: navy;">Answers</h1>
                    <table style="width: 95%; margin: 0 auto;" border="1">
                        <tr>
                            <th>Answer</th>
                            <th>Answered By</th>
                            <th>Posted Date</th>
                        </tr>
                        <%
                            int qid = Integer.parseInt(request.getParameter("qid"));
                            query = "select answertext,answeredby,posteddt from answer where qid='"+qid+"'";
                            rs = db.selectQuery(query);
                            while(rs.next())
                            {
                        %>   
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                        </tr>
                        <%
                            }
                        %>
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