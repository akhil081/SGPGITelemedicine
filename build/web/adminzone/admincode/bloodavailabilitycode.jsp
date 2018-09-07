<%@page import="projectpackage.DbManager"%>
<%
    // int id = Integer.parseInt(request.getParameter("id"));
    String bloodgroup = request.getParameter("bloodgroup");
    int availableunits = Integer.parseInt(request.getParameter("availableunits"));
    String bloodbankname = request.getParameter("bloodbankname");
    String query = "insert into bloodavailability (bloodgroup,availableunits,bloodbankname) values('"+bloodgroup+"','"+availableunits+"','"+bloodbankname+"')";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Details Submitted Successfully');window.location.href='../bloodavailability.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Details Submitted Successfully');window.location.href='../bloodavailability.jsp';</script>");
    }
%>