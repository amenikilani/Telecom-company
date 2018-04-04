<%-- 
    Document   : CreerFacture
    Created on : Jan 20, 2018, 11:09:36 PM
    Author     : ameni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Gestion de Facture !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
    <body class="bg-1">
<%
    if (session != null) {
        if (session.getAttribute("user") != "Facture") {
            response.sendRedirect("login.jsp");

        }
    }
%>
 <ul class="menu">

                            <li >
                                <a href="GestionFacture.jsp">
                              Dashboard
                                </a>
                            </li>

                            <li class ="active">
                                <a href="CreerFacture.jsp" >
                                    Creer Facture
                                </a>
                            </li>

                            <li>
                                <a href="ChercherFacture.jsp" >
                                    Chercher Facture
                                </a>
                            </li>

                            <li>
                                <a href="EnvoyerFacture.jsp" >
                                   Envoyer Facture
                                </a>
                            </li>


                            <li>
                                <a href="logout.jsp">
                                   Logout
                                </a>
                            </li>

                        </ul>
                    </li>
                </ul>
<form action="CreerFacture" method="post"  role="form">

                                        <label>NumeroSim</label>
                               
                                            <input type="text"  name="NumeroSim"><br>
                                
                                        <label>NombreUnitéConsommé</label>

                                            <input type="text" name="NombreUnitéConsommé"><br>
                             
                                        <label>Total</label>
                                   
                                            <input type="text" name="Total"><br>
                                   
                                            <button  value="Submit" type="submit">Submit</button>
                                            <button type="reset">Reset</button>
                         
                                </form>

    </body>
</html>
