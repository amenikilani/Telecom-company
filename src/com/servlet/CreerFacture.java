package com.servlet;
import java.lang.Integer ;
import com.bean.Facture;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ameni
 */
@WebServlet(name = "CreerFacture", urlPatterns = {"/CreerFacture"})
public class CreerFacture extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer NumeroSim = Integer.valueOf(request.getParameter("NumeroSim"));
        String NombreUnitéConsommé = request.getParameter("NombreUnitéConsommé");
        Integer Total = Integer.valueOf(request.getParameter("Total"));

        Facture facture = new Facture(NumeroSim,NombreUnitéConsommé,Total);
        facture.CreerFacture();
        response.sendRedirect("GestionFacture.jsp");



    }



}