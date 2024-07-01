<%-- 
    Document   : resumeformsubmit
    Created on : 6 Aug, 2023, 7:38:21 PM
    Author     : kashy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.lang.*,java.util.List,java.util.Arrays"  %>


<%
    String user = (String) session.getAttribute("user");
    String name = (String) session.getAttribute("name");

    if (user == null) {
        response.sendRedirect("index.html");
    }
    
    String email=request.getParameter("floating_email");
    String fullname=request.getParameter("floating_name");
    String designation=request.getParameter("floating_designation");
    Long phone=Long.parseLong(request.getParameter("floating_phone"));
    String location=request.getParameter("floating_location");
    String linkedin=request.getParameter("linkedinLink");
    String github=request.getParameter("GithubLink");
    String skills=request.getParameter("skills");
    
    String hobbies=request.getParameter("hobbies");
//    String[] hobbiesList = hobbies.split(",");
    
    String about=request.getParameter("about");
    String project_title=request.getParameter("project_title");
    String project_about=request.getParameter("project_about");
    String company_name=request.getParameter("company_name");
    String w_duration=request.getParameter("w_duration");
    String job_title=request.getParameter("job_title");
    String job_location=request.getParameter("job_location");
    String job_description=request.getParameter("job_description");
    String ssc_college_name=request.getParameter("ssc_college_name");
    String ssc_duration=request.getParameter("ssc_duration");
    String ssc_board=request.getParameter("ssc_board");
    Double ssc_percentage=Double.parseDouble(request.getParameter("ssc_percentage"));
    String hsc_college_name=request.getParameter("hsc_college_name");
    String hsc_duration=request.getParameter("hsc_duration");
    String hsc_board=request.getParameter("hsc_board");
    Double hsc_percentage=Double.parseDouble(request.getParameter("hsc_percentage"));
    String bachelors_college_name=request.getParameter("bachelors_college_name");
    String bachelors_duration=request.getParameter("bachelors_duration");
    String bachelors_degree=request.getParameter("bachelors_degree");
    Double bachelors_cgpa=Double.parseDouble(request.getParameter("bachelors_cgpa"));
    
    
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
    
    PreparedStatement ps = c.prepareStatement("insert into resumedetails values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    
    ps.setString(1, email);
    ps.setString(2, fullname);
    ps.setString(3, designation);
    ps.setLong(4, phone);
    ps.setString(5,location);
    ps.setString(6, linkedin);
    ps.setString(7, github);
    ps.setString(8, skills);
    ps.setString(9, hobbies);
    ps.setString(10, about);
    ps.setString(11, project_title);
    ps.setString(12, project_about);
    ps.setString(13, company_name);
    ps.setString(14, w_duration);
    ps.setString(15, job_title);
    ps.setString(16, job_location);
    ps.setString(17, job_description);
    ps.setString(18, ssc_college_name);
    ps.setString(19, ssc_duration);
    ps.setString(20, ssc_board);
    ps.setDouble(21, ssc_percentage);
    ps.setString(22, hsc_college_name);
    ps.setString(23, hsc_duration);
    ps.setString(24, hsc_board);
    ps.setDouble(25, hsc_percentage);
    ps.setString(26, bachelors_college_name);
    ps.setString(27, bachelors_duration);
    ps.setString(28, bachelors_degree);
    ps.setDouble(29, bachelors_cgpa);
    
    if(user.equals(email))
    {
        ps.executeUpdate();
        out.println("<script>alert('Data Added Successfully');</script>");
        response.sendRedirect("home.jsp");
    }
    else
    {
        out.println("<script>alert('Cannot Enter Other User Data');</script>");
        response.sendRedirect("resume.jsp");
    }
    
    
%>