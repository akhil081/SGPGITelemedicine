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
        <title>Feedback Management</title>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <div style="border-radius: 0px 50px 0px 50px;margin: 0 auto;margin-top: 100px;width: 90%;height: auto;min-height: 500px;background-color: cyan;box-shadow: 5px 5px 10px navy;">
                    <h1 style="text-align: center;color: navy;">Feedback Management</h1>
                    <br/><br/>
                    <table border="1" style="width: 90%; margin: 0 auto;border-collapse: collapse;">
                        <tr>
                            <th>SNo.</th>
                            <th>Name</th>
                            <th>Feedback Text</th>
                            <th>Feedback Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            String query = "select * from feedback";
                            DbManager db = new DbManager();
                            ResultSet rs = db.selectQuery(query);
                            int n = 0;
                            while(rs.next())
                            {
                                n++;
                        %>
                        <tr>
                            <td><%=n%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><a href="admincode/deletefeedback.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
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