package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.List;
import java.util.Arrays;

public final class resumegenerator_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
 
    String user = (String) session.getAttribute("user");
    String name = (String) session.getAttribute("name");
    
    if (user == null) {
        response.sendRedirect("index.html");
    }

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");

    PreparedStatement ps = c.prepareStatement("select * from resumedetails where email=?");
    ps.setString(1, user);
    
    ResultSet rs = ps.executeQuery();
    rs.next();
    
//    ResultSetMetaData rsmd=rs.getMetaData();
//    out.println(rsmd.getColumnCount());
    String email=rs.getString(1);
    String fullname=rs.getString(2);
    String designation=rs.getString(3);
    Long phone=rs.getLong(4);
    String location=rs.getString(5);
    String linkedin=rs.getString(6);
    String github=rs.getString(7);
    String skills=rs.getString(8);
    String hobbies=rs.getString(9);
    String about=rs.getString(10);
    String project_title=rs.getString(11);
    String project_about=rs.getString(12);
    String company_name=rs.getString(13);
    String w_duration=rs.getString(14);
    String job_title=rs.getString(15);
    String job_location=rs.getString(16);
    String job_description=rs.getString(17);
    String ssc_college_name=rs.getString(18);
    String ssc_duration=rs.getString(19);
    String ssc_board=rs.getString(20);
    Double ssc_percentage=rs.getDouble(21);
    String hsc_college_name=rs.getString(22);
    String hsc_duration=rs.getString(23);
    String hsc_board=rs.getString(24);
    Double hsc_percentage=rs.getDouble(25);
    String bachelors_college_name=rs.getString(26);
    String bachelors_duration=rs.getString(27);
    String bachelors_degree=rs.getString(28);
    Double bachelors_cgpa=rs.getDouble(29);
    
    

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>CV</title>\n");
      out.write("    <link href=\"https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"flex justify-center content-center\">\n");
      out.write("    <!-- outer container -->\n");
      out.write("    <div class=\"border border-gray-300 rounded-sm shadow-lg py-10 px-10 w-4/5 mt-10 mb-10\">\n");
      out.write("        <!-- header (profile) -->\n");
      out.write("        <header>\n");
      out.write("            <!-- social icons-->\n");
      out.write("            <ul class=\"flex flex-wrap justify-end gap-2\">\n");
      out.write("                <!-- linkedin -->\n");
      out.write("                <li>\n");
      out.write("                    <a href=");
      out.print(linkedin );
      out.write("\n");
      out.write("                        class=\"bg-blue-600 p-2 font-semibold text-white inline-flex items-center space-x-2 rounded\"\n");
      out.write("                        target=”_blank”>\n");
      out.write("                        <svg class=\"w-5 h-5 fill-current\" role=\"img\" viewBox=\"0 0 256 256\"\n");
      out.write("                            xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("                            <g>\n");
      out.write("                                <path\n");
      out.write("                                    d=\"M218.123122,218.127392 L180.191928,218.127392 L180.191928,158.724263 C180.191928,144.559023 179.939053,126.323993 160.463756,126.323993 C140.707926,126.323993 137.685284,141.757585 137.685284,157.692986 L137.685284,218.123441 L99.7540894,218.123441 L99.7540894,95.9665207 L136.168036,95.9665207 L136.168036,112.660562 L136.677736,112.660562 C144.102746,99.9650027 157.908637,92.3824528 172.605689,92.9280076 C211.050535,92.9280076 218.138927,118.216023 218.138927,151.114151 L218.123122,218.127392 Z M56.9550587,79.2685282 C44.7981969,79.2707099 34.9413443,69.4171797 34.9391618,57.260052 C34.93698,45.1029244 44.7902948,35.2458562 56.9471566,35.2436736 C69.1040185,35.2414916 78.9608713,45.0950217 78.963054,57.2521493 C78.9641017,63.090208 76.6459976,68.6895714 72.5186979,72.8184433 C68.3913982,76.9473153 62.7929898,79.26748 56.9550587,79.2685282 M75.9206558,218.127392 L37.94995,218.127392 L37.94995,95.9665207 L75.9206558,95.9665207 L75.9206558,218.127392 Z M237.033403,0.0182577091 L18.8895249,0.0182577091 C8.57959469,-0.0980923971 0.124827038,8.16056231 -0.001,18.4706066 L-0.001,237.524091 C0.120519052,247.839103 8.57460631,256.105934 18.8895249,255.9977 L237.033403,255.9977 C247.368728,256.125818 255.855922,247.859464 255.999,237.524091 L255.999,18.4548016 C255.851624,8.12438979 247.363742,-0.133792868 237.033403,0.000790807055\">\n");
      out.write("                                </path>\n");
      out.write("                            </g>\n");
      out.write("                        </svg>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <!-- github -->\n");
      out.write("                    <a href=");
      out.print(github );
      out.write("\n");
      out.write("                        class=\"bg-gray-700 p-2 font-medium text-white inline-flex items-center space-x-2 rounded\"\n");
      out.write("                        target=”_blank”>\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\"\n");
      out.write("                            aria-hidden=\"true\" role=\"img\" class=\"w-5\" preserveAspectRatio=\"xMidYMid meet\"\n");
      out.write("                            viewBox=\"0 0 24 24\">\n");
      out.write("                            <g fill=\"none\">\n");
      out.write("                                <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"\n");
      out.write("                                    d=\"M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385c.6.105.825-.255.825-.57c0-.285-.015-1.23-.015-2.235c-3.015.555-3.795-.735-4.035-1.41c-.135-.345-.72-1.41-1.23-1.695c-.42-.225-1.02-.78-.015-.795c.945-.015 1.62.87 1.845 1.23c1.08 1.815 2.805 1.305 3.495.99c.105-.78.42-1.305.765-1.605c-2.67-.3-5.46-1.335-5.46-5.925c0-1.305.465-2.385 1.23-3.225c-.12-.3-.54-1.53.12-3.18c0 0 1.005-.315 3.3 1.23c.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23c.66 1.65.24 2.88.12 3.18c.765.84 1.23 1.905 1.23 3.225c0 4.605-2.805 5.625-5.475 5.925c.435.375.81 1.095.81 2.22c0 1.605-.015 2.895-.015 3.3c0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z\"\n");
      out.write("                                    fill=\"currentColor\" />\n");
      out.write("                            </g>\n");
      out.write("                        </svg>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <div class=\"flex justify-between items-center\">\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"bg-cover bg-no-repeat rounded-full h-52 w-52\"\n");
      out.write("                        style=\"background-image: url(../bootstrap/dog.jpg)\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"grid justify-items-end\">\n");
      out.write("                    <h1 class=\"text-7xl font-extrabold\">\n");
      out.write("                        ");
      out.print(fullname );
      out.write("\n");
      out.write("                    </h1>\n");
      out.write("                    <p class=\"text-xl mt-5\">Aspiring \n");
      out.write("                    ");
      out.print(designation );
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- detailed info -->\n");
      out.write("        <main class=\"flex gap-x-10 mt-10\">\n");
      out.write("            <div class=\"w-2/6\">\n");
      out.write("                <!-- contact details -->\n");
      out.write("                <strong class=\"text-xl font-medium\">Contact Details</strong>\n");
      out.write("                <ul class=\"mt-2 mb-10\">\n");
      out.write("                    <li class=\"px-2 mt-1\"><strong class=\"mr-1\">Phone </strong>\n");
      out.write("                        <a href=\"tel:");
      out.print(phone );
      out.write("\" class=\"block\">+91 ");
      out.print(phone );
      out.write("</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"px-2 mt-1\"><strong class=\"mr-1\">E-mail </strong>\n");
      out.write("                        <a href=\"mailto:");
      out.print(email );
      out.write("\" class=\"block\">");
      out.print(email );
      out.write("</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"px-2 mt-1\"><strong class=\"mr-1\">Location</strong><span class=\"block\">\n");
      out.write("                        ");
      out.print(location );
      out.write("\n");
      out.write("                        </span></li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <!-- skills -->\n");
      out.write("                ");
 String[] skillset=skills.split(", ");
                
      out.write("\n");
      out.write("                <strong class=\"text-xl font-medium\">Skills</strong>\n");
      out.write("                <ul class=\"mt-2 mb-10\">\n");
      out.write("                    ");
 for(int i=0;i<skillset.length;i++)
                    {
                        out.println("<li class='px-2 mt-1'>"+skillset[i] +"</li>");
                    }
                    
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                \n");
      out.write("                ");
 String[] hobbyset=hobbies.split(", ");
                
      out.write("\n");
      out.write("                <strong class=\"text-xl font-medium\">Interests & Hobbies</strong>\n");
      out.write("                <ul class=\"mt-2\">\n");
      out.write("                    ");
 for(int i=0;i<hobbyset.length;i++)
                    {
                        out.println("<li class='px-2 mt-1'>"+hobbyset[i] +"</li>");
                    }
                    
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- info -->\n");
      out.write("            <div class=\"w-4/6\">\n");
      out.write("                <section>\n");
      out.write("                    <!-- about me -->\n");
      out.write("                    <h2 class=\"text-2xl pb-1 border-b font-semibold\">About</h2>\n");
      out.write("                    <p class=\"mt-4 text-sm\">\n");
      out.write("                        ");
      out.print(about );
      out.write("\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                </section>\n");
      out.write("                <section>\n");
      out.write("                    <!-- projects -->\n");
      out.write("                    <h2 class=\"text-2xl mt-6 pb-1 border-b font-semibold\">Projects</h2>\n");
      out.write("                    <ul class=\"mt-1\">\n");
      out.write("                        <li class=\"py-2\">\n");
      out.write("                            <div class=\"flex justify-between my-1\">\n");
      out.write("                                <strong>");
      out.print(project_title );
      out.write("</strong>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                            <p class=\"text-sm\">\n");
      out.write("                                ");
      out.print(project_about );
      out.write("\n");
      out.write("                            </p>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </section>\n");
      out.write("                <section>\n");
      out.write("                    <!-- work experiences -->\n");
      out.write("                    <h2 class=\"text-2xl mt-6 pb-1 border-b font-semibold\">Work Experiences</h2>\n");
      out.write("                    <ul class=\"mt-2\">\n");
      out.write("                        <li class=\"pt-2\">\n");
      out.write("                            <p class=\"flex justify-between text-md font-semibold\"><strong class=\"text-base\">");
      out.print(company_name );
      out.write("</strong>");
      out.print(w_duration );
      out.write("</p>\n");
      out.write("                            <p class=\"flex justify-between text-base font-semibold\">");
      out.print(job_title );
      out.write("<small class=\"text-base\">");
      out.print(job_location );
      out.write("</small></p>\n");
      out.write("                            <p class=\"text-justify text-sm\">\n");
      out.write("                                ");
      out.print(job_description );
      out.write("\n");
      out.write("                            </p>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </section>\n");
      out.write("                <section>\n");
      out.write("                    <!-- education -->\n");
      out.write("                    <h2 class=\"text-2xl mt-6 pb-1 border-b font-semibold\">Education</h2>\n");
      out.write("                    <ul class=\"mt-2\">\n");
      out.write("                        <li class=\"pt-2\">\n");
      out.write("                            <p class=\"flex justify-between text-sm\"><strong class=\"text-base\">\n");
      out.write("                                ");
      out.print(ssc_college_name );
      out.write("\n");
      out.write("                                </strong>");
      out.print(ssc_duration );
      out.write("</p>\n");
      out.write("                            <p class=\"flex justify-between text-sm\">SSC<small>");
      out.print(ssc_percentage );
      out.write(" %</small></p>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"pt-2\">\n");
      out.write("                            <p class=\"flex justify-between text-sm\"><strong class=\"text-base\">\n");
      out.write("                                ");
      out.print(hsc_college_name );
      out.write("\n");
      out.write("                                </strong>");
      out.print(hsc_duration );
      out.write("</p>\n");
      out.write("                            <p class=\"flex justify-between text-sm\">HSC<small>");
      out.print(hsc_percentage );
      out.write(" %</small></p>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"pt-2\">\n");
      out.write("                            <p class=\"flex justify-between text-sm\"><strong class=\"text-base\">\n");
      out.write("                                ");
      out.print(bachelors_college_name );
      out.write("\n");
      out.write("                                </strong>");
      out.print(bachelors_duration );
      out.write("</p>\n");
      out.write("                            <p class=\"flex justify-between text-sm\">");
      out.print(bachelors_degree );
      out.write("<small>CGPA ");
      out.print(bachelors_cgpa );
      out.write("</small></p>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </section>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("        <!-- short lines to introduce myself -->\n");
      out.write("        <footer class=\"mt-6\">\n");
      out.write("            <p class=\"bg-gray-600 text-white text-center text-xs pt-2\">The best way to predict the future is to\n");
      out.write("                create it. <small>- AbrahamLincoln</small>\n");
      out.write("            </p>\n");
      out.write("            <p class=\"bg-gray-600 text-white text-center text-sm pb-2\">I am creating my future by learning new things\n");
      out.write("                and\n");
      out.write("                making small progresses everyday.</p>\n");
      out.write("        </footer>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
