<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    <ul>
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="postquestion.jsp">Discussion</a></li>
        <li><a href="complain.jsp">Complain</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="bloodavailability.jsp">Blood Availability</a></li>
        <li><a href="changepassword.jsp">Change Pwd</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<div id="user_header">
    <div id="user_logo">
        <img src="../images/logo.png" width="150" height="150"/>
    </div>
    <div id="sitetitle">
        <marquee>
        SGPGI TeleMedicine
        </marquee>
    </div>
</div>
<div id="info">
    <div id="date">
        <%
            DbManager db = new DbManager();
            String dt = db.getDate();
        %>
        Today Date : <%=dt%>
    </div>
    <div id="name">
        <%
            String userid = session.getAttribute("userid").toString();
            String query = "select patientname from patientinfo where contactno='"+userid+"'";
            ResultSet rs = db.selectQuery(query);
            String patientname="";
            if(rs.next()==true)
            {
                patientname = rs.getString(1);
            }
        %>
        Hello, <%=patientname %>
    </div>
</div>
