<%-- 
    Document   : administrateur
    Created on : Jan 19, 2018, 11:41:54 PM
    Author     : ameni
--%>
<%@ page import="com.connexion.ConnectionBD" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Bienvenue Administrateur !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
</head>
<body>

<%
    if (session != null) {
        if (session.getAttribute("user") != "admin") {
            response.sendRedirect("login.jsp");

        }
    }
%>

<
                        

                    <li class="navigation" id="navigation">
                        <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>

                        <ul class="menu">

                            <li class ="active">
                                <a href="Administrateur.jsp">
                                    <i class="fa fa-tachometer"></i> Dashboard
                                </a>
                            </li>

                            <li>
                                <a href="CreerEmployé.jsp" >
                                    <i class="fa fa-list"></i> Creer Employé
                                </a>
                            </li>

                            <li>
                                <a href="CreerService.jsp" >
                                    <i class="fa fa-list"></i> Creer Service
                                </a>
                            </li>

                            <li>
                                <a href="logout.jsp">
                                    <i class="fa fa-tint"></i> Logout
                                </a>
                            </li>


                        </ul>
                    </li>
                </ul>

            
                <h2> DataTables </h2>

 
                                <h1>Datatable d'Employés</h1>
                            
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="sort-alpha">CIN</th>
                                            <th class="sort-alpha">Nom</th>
                                            <th class="sort-alpha">Prénom</th>
                                            <th class="sort-amount">Adresse</th>
                                            <th class="sort-numeric">Email</th>
                                            <th class="sort-numeric">Role</th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        <%
                                            try
                                            {

                                                String query="select * from Employé";
                                                ConnectionBD Con = new ConnectionBD();
                                                Con.driver();
                                                Con.OpenConnexion();
                                                ResultSet rs =Con.selectExec(query);
                                                while(rs.next())
                                                {

                                        %>

                                        <tr class="odd gradeX">
                                            <td class="text-center"><%=rs.getString("CIN") %></td>
                                            <td class="text-center"><%=rs.getString("Nom") %></td>
                                            <td class="text-center"><%=rs.getString("Prénom") %></td>
                                            <td class="text-center"><%=rs.getString("Adresse") %></td>
                                            <td class="text-center"><%=rs.getString("Email") %></td>
                                            <%

                                                String Role="sdq";

                                                if (rs.getInt("NumService") == 1)
                                                {
                                                    Role ="Administrateur";
                                                }

                                                if (rs.getInt("NumService") == 2)
                                                {
                                                    Role ="Facture";
                                                }

                                                if (rs.getInt("NumService") == 3)
                                                {
                                                    Role="Contrat";
                                                }

                                            %>
                                            <td></td>
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
                                <h1> Services Vocal </h1>
                                    <table id="basicDataTable2">
                                        <thead>
                                        <tr>
                                            <th>Service ID</th>
                                            <th>Description</th>
                                            <th>Prix</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        <%
                                            try
                                            {

                                                String query="select * from ServiceVocal";
                                                ConnectionBD Con = new ConnectionBD();
                                                Con.driver();
                                                Con.OpenConnexion();
                                                ResultSet rs =Con.selectExec(query);
                                                while(rs.next())
                                                {

                                        %>

                                        <tr>
                                            <td><%=rs.getString("ServiceID") %></td>
                                            <td><%=rs.getString("Description") %></td>
                                            <td><%=rs.getString("Prix") %></td>
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
                                <h1>Services Internet</h1>
                                    <table id="basicDataTable2">
                                        <thead>
                                        <tr>
                                            <th>ServiceID</th>
                                            <th>Description</th>
                                            <th>Prix</th>
                                            <th>ISP</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                    <%
                                            try
                                            {
                                                String query="select * from ServiceInternet";
                                                ConnectionBD Con = new ConnectionBD();
                                                Con.driver();
                                                Con.OpenConnexion();
                                                ResultSet rs =Con.selectExec(query);
                                                while(rs.next())
                                                {

                                        %>
                                        <tr >
                                            <td><%=rs.getString("ServiceID") %></td>
                                            <td><%=rs.getString("Description") %></td>
                                            <td><%=rs.getString("Prix") %></td>
                                            <td><%=rs.getString("ISP") %></td>

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