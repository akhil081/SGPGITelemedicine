<%@page import="projectpackage.DbManager"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    DbManager db = new DbManager();
    String query = "delete from enquiry where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.println("<script>alert('Enquiry deleted successfully');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.println("<script>alert('Enquiry is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>