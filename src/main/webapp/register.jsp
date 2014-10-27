<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
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
                <h1>InstaGrim !                 
                <div id="searchBox">
                   
                <form method="POST" action="UserDataAccess">
                <input type ="text" name="SearchTerm">
                <input type ="submit" name="submitSearch">
                
                </form></div></h1>
                <h2>Your world in Black and White</h2>
            </header>
            <nav>
                <ul><a href="/Instagrim/Images/majed">Sample Images</a></ul>
            </nav>

            <article>
                <h3>Register as user</h3>
                <form method="POST"  action="Register">
                    <ul>
                        <li>User Name: <input type="text" name="username"></li>
                        <li>Password: <input type="password" id="password" name="password"></li>
                        <li>Verify your password: <input type="password" id ="passwordVerify" name="passwordVerify" onkeyup="checkPass();
                            return false;"></li>
                        <li>Email Address: <input type="email" name="email"></li>
                        <li>First Name: <input type ="text" name="first_name"></li>
                        <li>Second Name: <input type ="text" name="last_name"></li>
                        <li>Please enter a short user profile:<input type ="text" name="userBio"></li>
                    </ul>
                    <br>
                    <script>
                        function checkPass()
                        {

                            var password1 = document.getElementById('password');
                            var password2 = document.getElementById('passwordVerify');
                            var match = "#66cc66";
                            var noMatch = "#ff6666";

                            if (password1.value === password2.value)
                            {
                                password2.style.backgroundColor = match;
                                message.style.color = match;
                            }
                            else
                            {
                                password2.style.backgroundColor = noMatch;
                                message.style.color = noMatch;
                            }
                        }</script>
                    <input type="submit" value="Register"> 
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
