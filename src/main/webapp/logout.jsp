<%-- 
    Document   : logout
    Created on : 23-Oct-2014, 19:52:30
    Author     : Andrew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <h1>Confirm Logout</h1>
        <form action="${pageContext.request.contextPath}/Logout" method="post">
             <input type="submit" name="Logout" value="Logout">
             
        </form>

    </body>
</html>
