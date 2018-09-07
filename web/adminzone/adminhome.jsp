<%-- 
    Document   : adminhome
    Created on : 21 Jul, 2018, 5:37:33 PM
    Author     : lenovo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
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
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <link href="../css/admin_menu_1.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
    </head>
    <body>
        <form action="admincode/savenotification.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                <div style="height: 200px;width: 50%;margin: 0 auto;margin-top: 50px;background-color: cyan;border-radius: 40px 0px 40px 0px;box-shadow: 5px 5px 10px navy;">
                    <h1 style="color: blue;text-align: center;">Notification Management</h1>
                    <table style="margin: 0 auto; width: 70%;">
                        <tr>
                            <td>Enter Notification : </td>
                            <td><textarea name="notificationtext" required=""></textarea></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                    </div>
                    <br/><br/>
                    <div style="min-height: 400px;height: auto;width: 90%;margin: 0 auto;margin-top: 50px;border-radius: 0px 40px 0px 40px;background-color: cyan;box-shadow: 5px 5px 10px navy;">
                        <h1 style="color: navy;text-align: center;">Notifications</h1>
                    <table border="1" style="width: 90%;margin: 0 auto;border-collapse: collapse;">
                        <tr>
                            <th>Id</th>
                            <th>Notification</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager db = new DbManager();
                            String query = "select * from notification";
                            ResultSet rs = db.selectQuery(query);
                            while(rs.next())
                            {
                        %>   
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><a href="admincode/deletenotification.jsp?id=<%=rs.getInt(1)%>"> Delete</a></td>
                        </tr>
                        <%
                            }
                        %>
                    </table>       
                    </div>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
       
    </body>
</html>
<%
    }
%>        