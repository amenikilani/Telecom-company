<%-- 
    Document   : CreerSim
    Created on : Jan 20, 2018, 10:58:35 PM
    Author     : ameni
--%>
<%@ page import="com.connexion.ConnectionBD" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.bean.Service" %>
<%@ page import="com.bean.ServiceInternet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Bienvenue Admin !</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
<body >
<%
    if (session != null) {
        if (session.getAttribute("user") != "Contrat") {
            response.sendRedirect("login.jsp");

        }
    }
%>
<ul class="menu">

    <li >
        <a href="GestionContrat.jsp">
            Dashboard
        </a>
    </li>

    <li >
        <a href="creerAbonnée.jsp" >
            Creer Abonnée
        </a>
    </li>

    <li class ="active">
        <a href="creerSim.jsp" >
            Creer Service
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
<form action="CreerSim" method="post"  role="form">


    <label >Abonnée CIN </label>

    <input type="text"  name="CIN">

    <label>Choisir un type de service !</label>

    <SELECT name="TypeSim">
        <OPTION id="Fixe" SELECTED> Fixe</OPTION>
        <OPTION id="Mobile" > Mobile</OPTION>
    </SELECT>


    <label>Localisation</label>

    <input type="text" name="Localisation">


    <label>Choisir un type de connection !</label>
    <SELECT  name="TypeConnexion">
        <OPTION id="3G" SELECTED> 3G</OPTION>
        <OPTION id="4G" > 4G</OPTION>
    </SELECT>

    <label>Choisir un type d'Internet ! </label>
    <SELECT name="TypeInternet">
        <OPTION id="type1" SELECTED> type1</OPTION>
        <OPTION id="type2" > type2</OPTION>
        <OPTION id="type3" > type3</OPTION>
    </SELECT>

    <label>Choisir un type de payement ! </label>
    <SELECT name="TypePayment">
        <OPTION id="cash" SELECTED> cash</OPTION>
        <OPTION id="paypal" > paypal</OPTION>
        <OPTION id="check" > check</OPTION>
    </SELECT>

    <label >Choisir un type de service ! </label>
    <SELECT name="SIMServiceType">
        <OPTION id="Internet" SELECTED> Internet</OPTION>
        <OPTION id="Vocal" > Vocal</OPTION>
        <OPTION id="lesDeux" > Les deux </OPTION>
    </SELECT>
<%--

    <SELECT name="SIMPaymentType1">
        <%
            ResultSet rs1 = ServiceInternet.getData();
            while(rs1.next()){ %>
        <OPTION value=<%= rs1.getString(1) %> > <%= rs1.getString(2) %></OPTION>
        <% } %>
    </SELECT>



    <SELECT name="SIMPaymentType2">
        <%
            ResultSet rs2 = Service.getData();
            while(rs2.next()){ %>
        <OPTION value= <%=rs2.getString(1) %> > <%= rs2.getString(2) %></OPTION>
        <% } %>
    </SELECT>

    <SELECT name="SIMPaymentType3">
        <%
            ResultSet rs4 = ServiceInternet.getData();
            while(rs4.next()){ %>
        <OPTION value=<%= rs4.getString(1) %> > <%= rs4.getString(2) %></OPTION>
        <% } %>

    </SELECT>

    <SELECT name="SIMPaymentType4">
        <%
            ResultSet rs7 = Service.getData();
            while(rs7.next()){ %>
        <OPTION value=<%= rs7.getString(1) %> > <%= rs7.getString(2) %></OPTION>
        <% } %>
    </SELECT>
--%>
    <button  value="Submit" type="submit">Submit</button>
    <button type="reset">Reset</button>

</form>
</body>
</html>