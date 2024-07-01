<%-- 
    Document   : RegisterServer
    Created on : 19 Jul, 2023, 6:52:57 PM
    Author     : kashy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.* " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>Register Server</title>
    </head>
    <body>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String cpass = request.getParameter("cpassword");

            PreparedStatement ps = c.prepareStatement("INSERT INTO RESUMEUSERDATA VALUES(?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);

            if (pass.equals(cpass)) {
                ps.executeUpdate();
                response.sendRedirect("index.html");
            }
            else{
                out.println("password Not Matched");
            }
        %>
    </body>
</html>
