<%-- 
    Document   : home
    Created on : 4 Aug, 2023, 5:56:44 PM
    Author     : kashy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String user = (String) session.getAttribute("user");
    String name = (String) session.getAttribute("name");

    if (user == null) {
        response.sendRedirect("index.html");
    }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <nav class="bg-white-800">
            <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
                <div class="relative flex h-16 items-center justify-between">
                    <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                        <!-- Mobile menu button-->
                        <button type="button" class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                            </svg>
                            <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                    </div>
                    <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                        <div class="flex flex-shrink-0 items-center">
                            <img class="h-8 w-auto" src="https://s3.resume.io/uploads/country/logo_default/2/for-light-bg.svg" alt="Your Company">
                        </div>
                        <div class="hidden sm:ml-6 sm:block">
                            <div class="flex space-x-4">
                                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                                <a href="home.jsp" class="bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium" aria-current="page">Home</a>
                                <a href="resume.jsp" class="text-gray-500 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">Resume</a>
                            </div>
                        </div>
                    </div>
                    <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                        <a href="logout.jsp" class="text-white bg-blue-700 hover:border-2 hover:bg-blue-900 rounded-md px-3 py-2 text-sm font-medium">Logout</a>

                    </div>
                </div>
            </div>
        </nav>
        <div class="mx-20 mb-2">
            <h1 class="text-xl font-bold">
                Welcome, <% out.println(name);%>
            </h1>
        </div>


        <div class="lg:flex lg:items-center lg:justify-between mx-20">
            <div class="min-w-0 flex-1">
                <h2 class="text-2xl font-bold leading-7 text-gray-900 sm:truncate sm:text-3xl sm:tracking-tight">Your Resumes</h2>
            </div>
<!--            <div class="mt-5 flex lg:ml-4 lg:mt-0">
                
                <span class="sm:ml-3">
                    <a href="resume.jsp" type="button" class="inline-flex items-center rounded-md bg-blue-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600">
                        Create New
                    </a>
                </span>
                </div>-->
            </div>
            <div class="mx-20 flex">
                <div class="flex mt-2 text-center w-52 h-80 border-2 rounded">
                    <a href="resume.jsp" class="m-auto h-16 w-16 p-2 rounded-full text-4xl bg-gray-200 align-top hover:bg-blue-600 hover:text-white">
                        +
                    </a>
                </div>
                <h1 class="m-2 text-xl font-bold">
                    New Resume<br>
                    <p class="text-base mt-2 font-normal">Create a tailored resume for each job application. <br>Double your chances of getting hired!</p>
                </h1>
                
            </div>



    </body>
</html>
