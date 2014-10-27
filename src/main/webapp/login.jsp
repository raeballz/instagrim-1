<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
 <div id="wrapper">

        <header>
        <h1>InstaGrim ! </h1>
                        <div id="searchBox">
                   
                <form method="POST" action="UserDataAccess">
                <input type ="text" name="SearchTerm">
                <input type ="submit" name="submitSearch">
                
                </form></div>
        <h2>Your world in Black and White</h2>
        </header>
        <nav>
            <ul>
                <ul><a href="/Instagrim/Images/majed">Sample Images</a></ul>
            </ul>
        </nav>
       
        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Login"> 
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </div>

    </body>
</html>
