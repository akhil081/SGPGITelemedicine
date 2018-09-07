<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String query = "select usertype from login where userid='"+userid+"' and password='"+password+"'";
    DbManager db = new DbManager();
    ResultSet rs = db.selectQuery(query);
    if(rs.next())
    {
            // out.println("<script>alert('Valid User');</script>");
             String usertype = rs.getString("usertype");
            if(usertype.equals("user"))
            {
                //out.println("<h1>You are user</h1>");
                session.setAttribute("userid",userid);
                response.sendRedirect("../userzone/userhome.jsp");
            }
            else if(usertype.equals("admin"))
            {
                //out.println("<h1>You are admin</h1>");
                session.setAttribute("adminid",userid);
                response.sendRedirect("../adminzone/adminhome.jsp");
            } 
    }
    else
    {
        //out.println("<script>alert('Invalid User');</script>");
        out.print("<script>alert('Invalid User');window.location.href='../login.jsp'</script>");
    }
%>
    