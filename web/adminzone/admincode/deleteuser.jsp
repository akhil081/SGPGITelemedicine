<%@page import="projectpackage.DbManager"%>
<%
    String userid = request.getParameter("userid");
    DbManager db = new DbManager();
    String query = "delete from login where userid='"+userid+"'";
    if(db.executeNonQuery(query))
    {
        out.println("<script>alert('User deleted successfully');window.location.href='../usermgmt.jsp';</script>");
    }
    else
    {
        out.println("<script>alert('User is not deleted');window.location.href='../usermgmt.jsp';</script>");
    }
%>