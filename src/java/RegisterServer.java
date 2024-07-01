/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.lang.Thread;

/**
 *
 * @author kashy
 */
@WebServlet(urlPatterns = {"/RegisterServer"})
public class RegisterServer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType ("text/html");
        PrintWriter out=response.getWriter();
        
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
            
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
            String cpass=request.getParameter("cpassword");
            
            PreparedStatement ps=c.prepareStatement("INSERT INTO RESUMEUSERDATA VALUES(?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            
            if(pass.equals(cpass))
            {
                ps.executeUpdate();
                response.sendRedirect("index.html");
            }
        } 
        
        catch (Exception e) {
            out.println(e);
        }
    }
}
