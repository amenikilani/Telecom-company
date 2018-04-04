<%-- 
    Document   : CreerEmployé
    Created on : Jan 20, 2018, 10:57:58 PM
    Author     : ameni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Bienvenue Admin !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
    <body>
<%
    if (session != null) {
        if (session.getAttribute("user") != "admin") {
            response.sendRedirect("login.jsp");

        }
    }
%>

                                <form action="CreerEmployé" method="post" role="form">
                                        <label>CIN</label>
                                      
                                            <input type="text" name="CIN"> <Br>
                                        <label>Nom</label>
                                    
                                            <input type="text" name="Nom"><Br>
                                       
                                        <label>Prénom</label>
                                       
                                            <input type="text" name="Prénom"><Br>
                              
                                        <label>Adresse</label>
                                    
                                            <input type="text"  name="Adresse"><Br>
                                      
                                 
                                        <label>Email</label>
                                       
                                            <input type="text" name="Email"><Br>
                                     
                                        <label>MotDePass </label>
    
                                            <input type="password" name="MotDePass"><Br>
                                        <label>choisir un service  </label>

                                            <SELECT name="NomService">
                                                <OPTION SELECTED> Gestion de Facture 
                                                <OPTION> Gestion de Contrat
                                                <OPTION> Administrateur
                                            </SELECT><Br>

                                            <button  value="Submit" type="submit">Submit</button>
                                            <button type="reset">Reset</button>
                                        





                                </form>
    </body>
</html>
