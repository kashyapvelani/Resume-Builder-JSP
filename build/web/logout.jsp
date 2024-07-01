<%-- 
    Document   : logout
    Created on : 4 Aug, 2023, 6:06:18 PM
    Author     : kashy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
		<% session.invalidate(); 
                response.sendRedirect("index.html");
                %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		
	</body>
</html>
