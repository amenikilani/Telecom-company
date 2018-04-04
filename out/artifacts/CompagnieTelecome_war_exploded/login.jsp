<%-- 
    Document   : login
    Created on : Jan 19, 2018, 10:32:07 PM
    Author     : ameni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
   <body>
                <h1><strong>Bienvenue</strong></h1>
                <h5>Compagnie de télécommunication</h5>

                <form action="Login" method="post">
                        
                    <input type="text"  name="username" placeholder="Username"><br>
                            <input type="password" name="password" placeholder="Password"><br>
                        <button type="submit" value="Submit">Log In</button>
                </form>
</body>
</html>

