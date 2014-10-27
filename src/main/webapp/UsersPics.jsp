<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
    <div id="wrapper">
        <header>
        
        <h1>InstaGrim ! 
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
                <ul class="nav"><a href="/Instagrim/upload.jsp">Upload</a></ul>
                <ul class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></ul>
                <ul class="nav"><a href="/Instagrim/logout.jsp">Logout</a></ul>
            </ul>
        </nav>
 
        <article>
            <%
                
            LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            String Username = (String) session.getAttribute("username");
            
            String userBio = (String)request.getAttribute("userBio");
            %>
            <h1><%= Username%></h1>
            <h2>User Bio</h2>
            <p><%= userBio%></p>
            <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else 
            {
                Iterator<Pic> iterator;
                iterator = lsPics.iterator();
                while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/><%

            }
            }
        %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </div>
    </body>
</html>
