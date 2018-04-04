<%-- 
    Document   : logout
    Created on : Jan 20, 2018, 11:13:19 PM
    Author     : ameni
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
<%
    response.setContentType("text/html");

    session = request.getSession(false);
    session.removeAttribute("user");
    response.sendRedirect("login.jsp");
%>

</body>
</html>
