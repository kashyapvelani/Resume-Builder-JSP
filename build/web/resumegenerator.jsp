<%-- 
    Document   : resumegenerator
    Created on : 7 Aug, 2023, 12:03:03 AM
    Author     : kashy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.lang.*,java.util.List,java.util.Arrays"  %>

<% 
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
    
    
%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CV</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="flex justify-center content-center">
    <!-- outer container -->
    
    <div class="border border-gray-300 rounded-sm shadow-lg py-10 px-10 w-4/5 mt-10 mb-10">
        <!-- header (profile) -->
        <header>
            <!-- social icons-->
            <ul class="flex flex-wrap justify-end gap-2">
                <!-- linkedin -->
                <li>
                    <a href=<%=linkedin %>
                        class="bg-blue-600 p-2 font-semibold text-white inline-flex items-center space-x-2 rounded"
                        target=”_blank”>
                        <svg class="w-5 h-5 fill-current" role="img" viewBox="0 0 256 256"
                            xmlns="http://www.w3.org/2000/svg">
                            <g>
                                <path
                                    d="M218.123122,218.127392 L180.191928,218.127392 L180.191928,158.724263 C180.191928,144.559023 179.939053,126.323993 160.463756,126.323993 C140.707926,126.323993 137.685284,141.757585 137.685284,157.692986 L137.685284,218.123441 L99.7540894,218.123441 L99.7540894,95.9665207 L136.168036,95.9665207 L136.168036,112.660562 L136.677736,112.660562 C144.102746,99.9650027 157.908637,92.3824528 172.605689,92.9280076 C211.050535,92.9280076 218.138927,118.216023 218.138927,151.114151 L218.123122,218.127392 Z M56.9550587,79.2685282 C44.7981969,79.2707099 34.9413443,69.4171797 34.9391618,57.260052 C34.93698,45.1029244 44.7902948,35.2458562 56.9471566,35.2436736 C69.1040185,35.2414916 78.9608713,45.0950217 78.963054,57.2521493 C78.9641017,63.090208 76.6459976,68.6895714 72.5186979,72.8184433 C68.3913982,76.9473153 62.7929898,79.26748 56.9550587,79.2685282 M75.9206558,218.127392 L37.94995,218.127392 L37.94995,95.9665207 L75.9206558,95.9665207 L75.9206558,218.127392 Z M237.033403,0.0182577091 L18.8895249,0.0182577091 C8.57959469,-0.0980923971 0.124827038,8.16056231 -0.001,18.4706066 L-0.001,237.524091 C0.120519052,247.839103 8.57460631,256.105934 18.8895249,255.9977 L237.033403,255.9977 C247.368728,256.125818 255.855922,247.859464 255.999,237.524091 L255.999,18.4548016 C255.851624,8.12438979 247.363742,-0.133792868 237.033403,0.000790807055">
                                </path>
                            </g>
                        </svg>
                    </a>
                </li>
                <li>
                    <!-- github -->
                    <a href=<%=github %>
                        class="bg-gray-700 p-2 font-medium text-white inline-flex items-center space-x-2 rounded"
                        target=”_blank”>
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            aria-hidden="true" role="img" class="w-5" preserveAspectRatio="xMidYMid meet"
                            viewBox="0 0 24 24">
                            <g fill="none">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385c.6.105.825-.255.825-.57c0-.285-.015-1.23-.015-2.235c-3.015.555-3.795-.735-4.035-1.41c-.135-.345-.72-1.41-1.23-1.695c-.42-.225-1.02-.78-.015-.795c.945-.015 1.62.87 1.845 1.23c1.08 1.815 2.805 1.305 3.495.99c.105-.78.42-1.305.765-1.605c-2.67-.3-5.46-1.335-5.46-5.925c0-1.305.465-2.385 1.23-3.225c-.12-.3-.54-1.53.12-3.18c0 0 1.005-.315 3.3 1.23c.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23c.66 1.65.24 2.88.12 3.18c.765.84 1.23 1.905 1.23 3.225c0 4.605-2.805 5.625-5.475 5.925c.435.375.81 1.095.81 2.22c0 1.605-.015 2.895-.015 3.3c0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"
                                    fill="currentColor" />
                            </g>
                        </svg>
                    </a>
                </li>
            </ul>
            <div class="flex justify-between items-center">
                <div>
                    <div class="bg-cover bg-no-repeat rounded-full h-52 w-52"
                        style="background-image: url(../bootstrap/dog.jpg)">
                    </div>
                </div>
                <div class="grid justify-items-end">
                    <h1 class="text-7xl font-extrabold">
                        <%=fullname %>
                    </h1>
                    <p class="text-xl mt-5">Aspiring 
                    <%=designation %>
                    </p>
                </div>
            </div>
        </header>
        <!-- detailed info -->
        <main class="flex gap-x-10 mt-10">
            <div class="w-2/6">
                <!-- contact details -->
                <strong class="text-xl font-medium">Contact Details</strong>
                <ul class="mt-2 mb-10">
                    <li class="px-2 mt-1"><strong class="mr-1">Phone </strong>
                        <a href="tel:<%=phone %>" class="block">+91 <%=phone %></a>
                    </li>
                    <li class="px-2 mt-1"><strong class="mr-1">E-mail </strong>
                        <a href="mailto:<%=email %>" class="block"><%=email %></a>
                    </li>
                    <li class="px-2 mt-1"><strong class="mr-1">Location</strong><span class="block">
                        <%=location %>
                        </span></li>
                </ul>

                <!-- skills -->
                <% String[] skillset=skills.split(", ");
                %>
                <strong class="text-xl font-medium">Skills</strong>
                <ul class="mt-2 mb-10">
                    <% for(int i=0;i<skillset.length;i++)
                    {
                        out.println("<li class='px-2 mt-1'>"+skillset[i] +"</li>");
                    }
                    %>
                </ul>
                
                <% String[] hobbyset=hobbies.split(", ");
                %>
                <strong class="text-xl font-medium">Interests & Hobbies</strong>
                <ul class="mt-2">
                    <% for(int i=0;i<hobbyset.length;i++)
                    {
                        out.println("<li class='px-2 mt-1'>"+hobbyset[i] +"</li>");
                    }
                    %>
                </ul>
            </div>
            <!-- info -->
            <div class="w-4/6">
                <section>
                    <!-- about me -->
                    <h2 class="text-2xl pb-1 border-b font-semibold">About</h2>
                    <p class="mt-4 text-sm">
                        <%=about %>
                    </p>

                </section>
                <section>
                    <!-- projects -->
                    <h2 class="text-2xl mt-6 pb-1 border-b font-semibold">Projects</h2>
                    <ul class="mt-1">
                        <li class="py-2">
                            <div class="flex justify-between my-1">
                                <strong><%=project_title %></strong>
                                
                            </div>
                            <p class="text-sm">
                                <%=project_about %>
                            </p>
                        </li>
                        
                    </ul>
                </section>
                <section>
                    <!-- work experiences -->
                    <h2 class="text-2xl mt-6 pb-1 border-b font-semibold">Work Experiences</h2>
                    <ul class="mt-2">
                        <li class="pt-2">
                            <p class="flex justify-between text-md font-semibold"><strong class="text-base"><%=company_name %></strong><%=w_duration %></p>
                            <p class="flex justify-between text-base font-semibold"><%=job_title %><small class="text-base"><%=job_location %></small></p>
                            <p class="text-justify text-sm">
                                <%=job_description %>
                            </p>
                        </li>
                    </ul>
                </section>
                <section>
                    <!-- education -->
                    <h2 class="text-2xl mt-6 pb-1 border-b font-semibold">Education</h2>
                    <ul class="mt-2">
                        <li class="pt-2">
                            <p class="flex justify-between text-sm"><strong class="text-base">
                                <%=ssc_college_name %>
                                </strong><%=ssc_duration %></p>
                            <p class="flex justify-between text-sm">SSC<small><%=ssc_percentage %> %</small></p>
                        </li>
                        <li class="pt-2">
                            <p class="flex justify-between text-sm"><strong class="text-base">
                                <%=hsc_college_name %>
                                </strong><%=hsc_duration %></p>
                            <p class="flex justify-between text-sm">HSC<small><%=hsc_percentage %> %</small></p>
                        </li>
                        <li class="pt-2">
                            <p class="flex justify-between text-sm"><strong class="text-base">
                                <%=bachelors_college_name %>
                                </strong><%=bachelors_duration %></p>
                            <p class="flex justify-between text-sm"><%=bachelors_degree %><small>CGPA <%=bachelors_cgpa %></small></p>
                        </li>
                    </ul>
                </section>
            </div>
        </main>
        <!-- short lines to introduce myself -->
        <footer class="mt-6">
            <p class="bg-gray-600 text-white text-center text-xs pt-2">The best way to predict the future is to
                create it. <small>- AbrahamLincoln</small>
            </p>
            <p class="bg-gray-600 text-white text-center text-sm pb-2">I am creating my future by learning new things
                and
                making small progresses everyday.</p>
        </footer>
        <div class="py-10 ">
        <button type="submit" class="flex w-full justify-center rounded-md bg-blue-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Print</button>
    </div>
    </div>
                        
</body>

</html>

