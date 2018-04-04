<%-- 
    Document   : ChercherFacture
    Created on : Jan 20, 2018, 11:10:59 PM
    Author     : ameni
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <title>Gestion de Facture !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
<body>
<%
    if (session != null) {
        if (session.getAttribute("user") != "Facture") {
            response.sendRedirect("login.jsp");

        }
    }
%>
<form action="ChercherFacture" method="post" role="form">

                                        <label>Numero Sim</label>
                                    
                                            <input type="text" name="NumeroSim">
                                    
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button  value="Submit" type="submit">Submit</button>
                                            <button type="reset">Reset</button>


                                </form>
    </body>
</html>
