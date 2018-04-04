package com.servlet;


import com.bean.Facture;
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ameni
 */
@WebServlet(name = "ChercherFacture", urlPatterns = {"/ChercherFacture"})
public class ChercherFacture extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer NumeroSim = Integer.valueOf(request.getParameter("NumeroSim"));
        ResultSet rs =Facture.ChercherFacture(NumeroSim);
        request.getSession().setAttribute("rs", rs);
        request.getRequestDispatcher("AfficherFacture.jsp").forward(request, response);
    }


}