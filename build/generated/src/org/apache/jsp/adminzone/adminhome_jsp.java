package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/adminzone/adminheader.jsp");
    _jspx_dependants.add("/adminzone/adminfooter.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {    

      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"../css/adminstyle.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"../css/admin_menu_1.css\" rel=\"stylesheet\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form>\n");
      out.write("            <div id=\"a_outer\">\n");
      out.write("                ");
      out.write("<div id=\"a_menu\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"#\">Notification</a></li>\n");
      out.write("        <li><a href=\"#\">User Mgmt</a></li>\n");
      out.write("        <li><a href=\"#\">Enquiry</a></li>\n");
      out.write("        <li><a href=\"#\">Feedback</a></li>\n");
      out.write("        <li><a href=\"#\">Complain</a></li>\n");
      out.write("        <li><a href=\"#\">Change Pwd</a></li>\n");
      out.write("        <li><a href=\"#\">Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"a_header\">\n");
      out.write("    <div id=\"a_logo\">\n");
      out.write("        <img src=\"../images/logo.png\" width=\"150\" height=\"150\"/>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"a_sitetitle\">\n");
      out.write("        SGPGI Telemedicine\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("                <div id=\"a_container\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write("<div id=\"a_footer\">\n");
      out.write("    <div id=\"a_lfooter\">\n");
      out.write("        Copyright &copy; to SGPGI Telemedicine\n");
      out.write("    </div>\n");
      out.write("    <div id=\"a_rfooter\">\n");
      out.write("        Developed By  : Akhil\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>    \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    }

      out.write("        ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
