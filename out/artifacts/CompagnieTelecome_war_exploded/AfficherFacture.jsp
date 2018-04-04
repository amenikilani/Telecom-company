<%-- 
    Document   : AfficherFacture
    Created on : Jan 20, 2018, 11:12:10 PM
    Author     : ameni
--%>

<%@page import="java.sql.ResultSet"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
 <table>
                                        <thead>
                                        <tr>
                                            <th class="sort-alpha">NumeroSim </th>
                                            <th class="sort-alpha">Nombre Unité Consommé</th>
                                            <th class="sort-alpha">DateFacture</th>
                                            <th class="sort-amount">Total</th>
                                            <th class="sort-numeric">Date Expiration</th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        <%


                                            ResultSet rs = (ResultSet) request.getSession().getAttribute("rs");
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

    </body>
</html>
