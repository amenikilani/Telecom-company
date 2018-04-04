<%-- 
    Document   : EnvoyerFacture
    Created on : Jan 20, 2018, 11:10:46 PM
    Author     : ameni
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <title> Welcome Contractor !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
    </head>
<body>
<%
    if (session != null) {
        if (session.getAttribute("user") != "Facture") {
            response.sendRedirect("login.jsp");

        }
    }
%>
<form action="EnvoyerMail" method="post"  role="form">

                                        <label>Numero SIM</label>
                                        
                                            <input type="text" name="NumeroSim"><br>
                                       
                                            <button  value="Submit" type="submit">Submit</button>
                                            <button type="reset">Reset</button>





                                </form>