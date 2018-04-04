package com.servlet;

import com.bean.EnvoiEmail;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



public class EnvoyerMail extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        Integer NumeroSim = Integer.valueOf(request.getParameter("NumeroSim"));

        String resultMessage = "";

        try {
            EnvoiEmail.EnvoiEmail(host, port, user, pass, NumeroSim);
            resultMessage = "email envoyé avec succés !!!!";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "erreuuuur: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }
    }
}
