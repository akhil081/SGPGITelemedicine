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
        <title>User Home</title>
    </head>
    <body>
        <form>
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <div style="width: 50%;min-height: 200px;height: auto;margin: 0 auto;margin-top: 150px;border-radius: 0px 50px 0px 50px;background-color: cyan;box-shadow: 5px 5px 10px navy;">
                    <table border="1" style="margin: 0 auto;width: 70%;border-collapse: collapse;">
                        <h1 style="color: navy;text-align: center;">Blood Availability</h1>
                        <tr>
                            <th>SNo.</th>
                            <th>Blood Group</th>
                            <th>Available Units</th>
                            <th>Blood Bank Name</th>
                        </tr>
                        <%
                            query = "select * from bloodavailability";
                            ResultSet ps = db.selectQuery(query);
                            int n = 0;
                            while(ps.next())
                            {
                                n++;
                        %>
                        <tr>
                            <td><%=n%></td>
                            <td><%=ps.getString(2)%></td>
                            <td><%=ps.getInt(3)%></td>
                            <td><%=ps.getString(4)%></td>
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