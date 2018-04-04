<%-- 
    Document   : GestionContrat
    Created on : Jan 20, 2018, 1:01:44 AM
    Author     : ameni
--%>
<%@ page import="com.connexion.ConnectionBD" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
<html>
   <!DOCTYPE html>
<html>
<head>
    <title>Gestion de Contrat !</title>
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
   <ul class="menu">

                            <li class ="active">
                                <a href="#">Dashboard</a>
                            </li>

                            <li>
                                <a href="CreerAbonnée.jsp">Creer Abonnée</a>
                            </li>

                            <li>
                                <a href="CreerSim.jsp">Creer Sim</a>
                            </li>

                            <li>
                                <a href="logout.jsp"> Logout</a>
                            </li>

                        </ul>
                    </li>
                </ul>
                <table   id="basicDataTable1">
                                        
                                        <tr>
                                            <th class="sort-alpha">CIN</th>
                                            <th class="sort-alpha">Nom</th>
                                            <th class="sort-alpha">Prénom</th>
                                            <th class="sort-amount">Adresse</th>
                                            <th class="sort-numeric">Email</th>
                                        </tr>
                                        </thead

                                        <tbody>

                                        <%
                                            try
                                            {

                                                String query="select * from Abonnée";
                                                ConnectionBD Con = new ConnectionBD();
                                                Con.driver();
                                                Con.OpenConnexion();
                                                ResultSet rs =Con.selectExec(query);
                                                while(rs.next())
                                                {

                                        %>

                                        <tr >
                                            <td class="text-center"><%=rs.getString("CIN") %></td>
                                            <td class="text-center"><%=rs.getString("Nom") %></td>
                                            <td class="text-center"><%=rs.getString("Prénom") %></td>
                                            <td class="text-center"><%=rs.getString("Adresse") %></td>
                                            <td class="text-center"><%=rs.getString("Email") %></td>

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

