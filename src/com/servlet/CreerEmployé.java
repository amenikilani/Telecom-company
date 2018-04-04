package com.servlet;

import com.bean.Administrateur;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ameni
 */
@WebServlet(name = "CreerEmployé", urlPatterns = {"/CreerEmployé"})
public class CreerEmployé extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer NumeroService;
        Integer CIN = Integer.valueOf(request.getParameter("CIN"));
        String Nom = request.getParameter("Nom");
        String Prenom = request.getParameter("Prenom");
        String Adresse = request.getParameter("Adresse");
        String Email = request.getParameter("Email");
        String MotDePass = request.getParameter("MotDePass");
        String NomService = request.getParameter("NomService");

        switch (NomService) {
            case "Facture":
                NumeroService=2;
                break;
            case "Administrateur":
                NumeroService=1;
                break;
            default:
                NumeroService=3;
                break;
        }

        Administrateur Admin =new Administrateur(CIN,Nom,Prenom,Adresse,Email,MotDePass,NumeroService);
        Admin.CreerEmployé();
        response.sendRedirect("Administrateur.jsp");


    }


}