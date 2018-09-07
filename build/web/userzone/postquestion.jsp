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
        <form action="usercode/postquestioncode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 50%;height: 200px;margin: 0 auto;margin-top: 50px;background-color: cyan;box-shadow: 5px 5px 10px navy;border-radius: 50px 0px 50px 0px;">
                    <table style="margin: 0 auto; width: 50%;">
                        <tr>
                            <td colspan="2" style="text-align: center;font-size: 30px;color: blue;">Discussion Forum</td>
                        </tr>
                        <tr>
                            <td>Question : </td>
                            <td><textarea name="questiontext" required="" rows="5" cols="20"></textarea></td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="patientname" value="<%=patientname%>"/></td>
                            <td><input type="submit" value="Post Question"/></td>
                        </tr>
                    </table>
                    </div>        
                            <br/><br>
                            <div style="width: 95%;min-height: 350px;height: auto; margin: 0 auto;margin-top: 30px;background-color: cyan;box-shadow: 5px 5px 10px navy;border-radius: 50px 0px 50px 0px;">        
                                <h1 style="text-align: center;color: navy;">Questions Posted</h1>
                        <table border="1px" style="width: 95%;margin: 0 auto;border-collapse: collapse;">
                        <tr>
                            <th>Q.Id</th>
                            <th>Question</th>
                            <th>Posted By</th>
                            <th>Posted Date</th>
                            <th>Post Answer</th>
                            <th>View Answer</th>
                        </tr>
                        <%
                            rs = db.selectQuery("select * from question");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><a href="postanswer.jsp?qid=<%=rs.getInt(1)%>">Post</a></td>
                            <td><a href="viewanswer.jsp?qid=<%=rs.getInt(1)%>">View</a></td>
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