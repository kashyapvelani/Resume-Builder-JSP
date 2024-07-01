<%-- 
    Document   : LoginServer
    Created on : 18 Jul, 2023, 7:18:22 PM
    Author     : kashyap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.lang.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Validation</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");

            PreparedStatement ps = c.prepareStatement("select * from resumeuserdata");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                if (email.equals(rs.getString(2)) && pass.equals(rs.getString(3))) {
                    session.setAttribute("user", email);
                    session.setAttribute("name",rs.getString(1));
                    out.println("<script>alert('Login Successful!');</script>");}
                    
            }
            response.sendRedirect("home.jsp");

        %>
    </body>
</html>
