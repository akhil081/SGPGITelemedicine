<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="left">
    <marquee direction="up" height="600">
    <%
        DbManager db = new DbManager();
        ResultSet rs = db.selectQuery("select * from notification");
        while(rs.next()==true)
        {
    %>
    <div style="width: 90%;min-height: 140px;height: auto;margin: 0 auto;background-color: bisque;text-align: center;">
    <p><b>Notification</b></p>
    <p><%=rs.getString(2)%></p>
    <p><b>Posted Date</b></p>
    <p><%=rs.getString(3)%></p>
    <hr/>
    <%
        }
    %>
    </marquee>
</div>