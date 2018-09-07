package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import projectpackage.DbManager;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/userzone/userheader.jsp");
    _jspx_dependants.add("/userzone/userfooter.jsp");
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

    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"../css/userstyle.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"../css/user_menu.css\" rel=\"stylesheet\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"usercode/feedbackcode.jsp\" method=\"post\">\n");
      out.write("            <div id=\"outer\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"user_menu\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"userhome.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"#\">Discussion</a></li>\n");
      out.write("        <li><a href=\"complain.jsp\">Complain</a></li>\n");
      out.write("        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("        <li><a href=\"changepassword.jsp\">Change Pwd</a></li>\n");
      out.write("        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"user_header\">\n");
      out.write("    <div id=\"user_logo\">\n");
      out.write("        <img src=\"../images/logo.png\" width=\"150\" height=\"150\"/>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"sitetitle\">\n");
      out.write("        SGPGI TeleMedicine\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"info\">\n");
      out.write("    <div id=\"date\">\n");
      out.write("        ");

            DbManager db = new DbManager();
            String dt = db.getDate();
        
      out.write("\n");
      out.write("        Today Date : ");
      out.print(dt);
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div id=\"name\">\n");
      out.write("        ");

            String userid = session.getAttribute("userid").toString();
            String query = "select patientname from patientinfo where contactno='"+userid+"'";
            ResultSet rs = db.selectQuery(query);
            String patientname="";
            if(rs.next()==true)
            {
                patientname = rs.getString(1);
            }
        
      out.write("\n");
      out.write("        Hello, ");
      out.print(patientname );
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div id=\"user_container\">\n");
      out.write("                    <div style=\"width: 50%;margin-top: 100px; height: 250px; margin: 0 auto;background-color: cyan;box-shadow: 3px 3px 5px;\" >\n");
      out.write("                    <table style=\"margin: 0 auto; width: 70%;height: 200px; \">\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\" style=\"color: brown;font-size: 40px;text-align: center; font-family: Comic Sans MS;\">Feedback Form</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Feedback Text : </td>\n");
      out.write("                            <td><textarea name=\"feedbacktext\" required=\"\" cols=\"30\" rows=\"5\"></textarea></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"hidden\" name=\"patientname\" value=\"");
      out.print(patientname);
      out.write("\"/></td>\n");
      out.write("                            <td><input type=\"submit\" value=\"Submit Feedback\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                    </table>\n");
      out.write("                    </div>        \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write("<div id=\"user_footer\">\n");
      out.write("    <div id=\"copyright\">\n");
      out.write("        Copyright &copy; to SGPGI.\n");
      out.write("    </div>\n");
      out.write("    <div id=\"developedby\">\n");
      out.write("        Developed By : Akhil\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    }

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
