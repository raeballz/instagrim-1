<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <div id="wrapper">

        <header>
            <h1>InstaGrim!
                <div id="searchBox">
                   
                <form method="POST" action="UserDataAccess">
                <input type ="text" name="SearchTerm">
                <input type ="submit" name="submitSearch">
                
                </form></div>
            </h1>
            <h2>Your world in Black and White</h2>
        </header>
        <nav>
            <ul>
                <ul><a href="upload.jsp">Upload</a></ul>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) 
                        {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) 
                            {
                    %>

                            <ul><a href="/Instagrim/Images/<%= UserName %>">Your Images</a></ul>
                            <ul><a href="logout.jsp">Logout</a></ul>
                          <%}
                        }
                        else
                        {
                          %> 
                            <ul><a href="register.jsp">Register</a></ul>
                            <ul><a href="login.jsp">Login</a></ul>
                      <%}%>
            </ul>
        </nav>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </footer>
    </div>
    </body>
</html>
