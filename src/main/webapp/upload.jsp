<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
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

        <h1>InstaGrim! 
                <div id="searchBox">
                   
                <form method="POST" action="UserDataAccess">
                <input type ="text" name="SearchTerm">
                <input type ="submit" name="submitSearch">
                
                </form></div>
        </h1>
        <h2>Your world in Black and White</h2>
        <nav>
            <ul>
                <ul class="nav"><a href="upload.jsp">Upload</a></ul>
                <ul class="nav"><a href="/Instagrim/logout.jsp">Logout</ul>
                <ul class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></ul>
            </ul>
        </nav>
 
        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
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
