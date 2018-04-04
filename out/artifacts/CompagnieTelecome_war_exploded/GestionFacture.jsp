<%-- 
    Document   : GestionFacture
    Created on : Jan 20, 2018, 12:03:02 AM
    Author     : ameni
--%>
<%@ page import="com.connexion.ConnectionBD" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Gestion de Facture !</title>
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
 <strong>Gestion de facture </strong>
      <ul class="menu">

                            <li class ="active">
                                <a href="GestionFacture.jsp">
                                   Dashboard
                                </a>
                            </li>

                            <li>
                                <a href="CreerFacture.jsp" >
                                 créer une facture 
                                </a>
                            </li>

                            <li>
                                <a href="ChercherFacture.jsp" >
                                     chercher une facture 
                                </a>
                            </li>

                            <li>
                                <a href="EnvoyerFacture.jsp" >
                                     envoyer une facture
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
                 <table  id="basicDataTable1">
                                        
                                        <tr>
                                            <th class="sort-alpha">NumeroSim</th>
                                            <th class="sort-alpha">NombreUnitéConsommé</th>
                                            <th class="sort-alpha">DateFacture</th>
                                            <th class="sort-amount">Total</th>
                                            <th class="sort-numeric">DateExpiration</th>
                                        </tr>
                                        <tbody>

                                        <%
                                            try
                                            {

                                                String query="select * from Facture";
                                                ConnectionBD Con = new ConnectionBD();
                                                Con.driver();
                                                Con.OpenConnexion();
                                                ResultSet rs =Con.selectExec(query);
                                                while(rs.next())
                                                {

                                        %>

                                        <tr class="odd gradeX">
                                            <td class="text-center"><%=rs.getString("NumeroSim") %></td>
                                            <td class="text-center"><%=rs.getString("NombreUnitéConsommé") %></td>
                                            <td class="text-center"><%=rs.getString("DateFacture") %></td>
                                            <td class="text-center"><%=rs.getString("Total") %></td>
                                            <td class="text-center"><%=rs.getString("DateExpiration") %></td>

                                        </tr>

                                        <%

                                            }
                                        %>
                                        </tbody>

                                    </table>
                                    <%
                                            rs.close();
                                            Con.closeConnection();
                                        }
                                        catch(Exception e)
                                        {
                                            e.printStackTrace();
                                        }
                                    %>
</body>
</html>