package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/generalmaster/head.jsp");
    _jspx_dependants.add("/generalmaster/left.jsp");
    _jspx_dependants.add("/generalmaster/foot.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"css/generalstyle.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/menu.css\" rel=\"stylesheet\" />\n");
      out.write("        <script src=\"js/slider.js\" type=\"text/javascript\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"moveslider()\">\n");
      out.write("        <form>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                ");
      out.write("<div id=\"menu\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"index.jsp\">HOME<a/></li>\n");
      out.write("        <li><a href=\"#\">VISION<a/></li>\n");
      out.write("        <li><a href=\"#\">MISSION<a/></li>\n");
      out.write("        <li><a href=\"registration.jsp\">REGISTRATION<a/></li>\n");
      out.write("        <li><a href=\"login.jsp\">LOGIN<a/></li>\n");
      out.write("        <li><a href=\"enquiry.jsp\">ENQUIRY<a/></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"header\">\n");
      out.write("    <div id=\"logo\">\n");
      out.write("        <img src=\"images/logo.png\"/>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"banner\">\n");
      out.write("        <img src=\"images/b3.jpg\" />\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"slider\">\n");
      out.write("    <img id=\"slide\" width=\"1000\" height=\"250\"/>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div id=\"container\">\n");
      out.write("                    ");
      out.write("<div id=\"left\"></div>");
      out.write("\n");
      out.write("                    <div id=\"main\">\n");
      out.write("                        <table style=\"width: 80%;height: 200px;margin: 0 auto;\">\n");
      out.write("                            <th colspan=\"2\" style=\"color: blue;font-size: 25px;\">LOGIN</th>\n");
      out.write("                            <tr>\n");
      out.write("                                <td style=\"text-align: right;\">User Id : </td>\n");
      out.write("                                <td><input type=\"number\" name=\"userid\" required=\"\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td style=\"text-align: right;\">Password : </td>\n");
      out.write("                                <td><input type=\"password\" name=\"password\" required=\"\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td><input type=\"submit\" value=\"Login\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                    ");
      out.write("<div id=\"footer\">\n");
      out.write("    <div id=\"lfooter\"></div>\n");
      out.write("    <div id=\"rfooter\"></div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
