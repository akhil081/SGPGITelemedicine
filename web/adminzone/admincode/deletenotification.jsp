<%@page import="projectpackage.DbManager"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    DbManager db = new DbManager();
    String query = "delete from notification where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.println("<script>alert('Notification deleted successfully');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.println("<script>alert('Notification is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>