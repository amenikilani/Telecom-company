package com.servlet;


import com.bean.Personne;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author ameni
 */
@WebServlet(name = "CreerAbonnée", urlPatterns = {"/CreerAbonnée"})
public class CreerAbonnée extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer CIN = Integer.valueOf(request.getParameter("CIN"));
        String Nom=request.getParameter("Nom");
        String Prénom =request.getParameter("Prénom");
        String Adresse =request.getParameter("Adresse");
        String Email =request.getParameter("Email");



        Personne Abos =new Personne(CIN,Nom,Prénom,Adresse,Email);
        Abos.CreerAbonnée();
        response.sendRedirect("GestionContrat.jsp");
    }

}