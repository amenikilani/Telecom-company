<%-- 
    Document   : CreerService
    Created on : Jan 20, 2018, 11:10:05 PM
    Author     : ameni
--%>
<%@ page import="com.connexion.ConnectionBD" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <title> Bienvenue Admin !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
    <%
    if (session != null) {
        if (session.getAttribute("user") != "admin") {
            response.sendRedirect("Login.jsp");

        }
    }
%>
   <form action="CreerService" method="post"  role="form">
                                          <label>ServiceID</label>

                                       <input type="text" name="ServiceID"><br>
                                        <label>Description</label>
                                  
                                            <input type="text" name="Description"><br>
                                   
                                        <label>Prix</label>
                                            <input type="text" name="Prix"><br>
                                       
                                        <label>Choisir un type de service ! </label>

                                        <SELECT name="TypeService">
                                            <OPTION value="ServiceVocal" name="ServiceVocal" id="ServiceVocal" SELECTED> Service Vocal</OPTION>
                                            <OPTION value="ServiceInternet" name="ServiceInternet" id="ServiceInternet" > Service Internet</OPTION>
                                        </SELECT><br>
                                  
                                            <label>ISP</label>
                                                <input type="text" name="ISP"><br>
                               
                                            <button  value="Submit" type="submit">Submit</button>
                                            <button type="reset">Reset</button>





                                </form>

    </body>
</html>
