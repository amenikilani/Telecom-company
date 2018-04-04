<%-- 
    Document   : CreerAbonnée
    Created on : Jan 20, 2018, 1:53:20 AM
    Author     : ameni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Gestion des Contrat :</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
<body>
<%
    if (session != null) {
        if (session.getAttribute("user") != "Contrat") {
            response.sendRedirect("login.jsp");

        }
    }
%>
   <form action="CreerAbonnée" method="post" role="form">

                                    <div class="form-group">
                                        <label>CIN</label>
                                      
                                            <input type="text" name="CIN"><br>
                                    
                                        <label>Nom</label>
                                      
                                            <input type="text" name="Nom"><br>
                                   
                                        <label>Prénom</label>
                                       
                                            <input type="text" name="Prénom"><br>
                                        
                                        <label  >Adresse</label>
                                   
                                            <input type="text"  name="Adresse" ><br>
                                  
                                        <label >Email</label>
                                       
                                            <input type="text"  name="Email"><br>
                                 
                                            <button  value="Submit" >Submit</button>
                                            <button type="reset" >Reset</button>
                                

                                </form>
    </body>
</html>
