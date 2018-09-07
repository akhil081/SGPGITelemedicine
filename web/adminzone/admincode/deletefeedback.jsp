<%@page import="projectpackage.DbManager"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    DbManager db = new DbManager();
    String query = "delete from feedback where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.println("<script>alert('Feedback deleted successfully');window.location.href='../feedbackmgmt.jsp';</script>");
    }
    else
    {
        out.println("<script>alert('Feedback is not deleted');window.location.href='../feedbackmgmt.jsp';</script>");
    }
%>