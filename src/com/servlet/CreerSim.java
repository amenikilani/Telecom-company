package com.servlet;


import com.bean.SimFixe;
import com.bean.SimMobile;

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
@WebServlet(name = "CreerSim", urlPatterns = {"/CreerSim"})
public class CreerSim extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer CIN = Integer.valueOf(request.getParameter("CIN"));
        String TypeSim=request.getParameter("TypeSim");
        if(TypeSim.equals("Fixe"))
        {
            SimFixe Fsim =new SimFixe(CIN);
            Fsim.CreerSim();
        }

        else
        {
            String TypeConnexion =request.getParameter("TypeConnexion");
            String TypeInternet =request.getParameter("TypeInternet ");
            String TypePayement =request.getParameter("TypePayement");

            String TypeService =request.getParameter("TypeService");

            switch (TypeService) {
                case "Internet":
                {
                    Integer NumServiceInternet = Integer.valueOf(request.getParameter("TypePayement1"));
                    SimMobile Mbsim = new SimMobile(CIN,TypeConnexion,TypeInternet,TypePayement,NumServiceInternet,0);
                    Mbsim.CreerSim();
                    break;
                }
                case "Vocal":
                {
                    Integer NumServiceVocal = Integer.valueOf(request.getParameter("TypePayement2"));
                    SimMobile Mbsim = new SimMobile(CIN,TypeConnexion,TypeInternet,TypePayement,0,NumServiceVocal);
                    Mbsim.CreerSim();
                    break;
                }
                default:
                {
                    Integer NumServiceInternet = Integer.valueOf(request.getParameter("TypePayemen3"));
                    Integer NumServiceVocal = Integer.valueOf(request.getParameter("TypePayemen4"));
                    SimMobile Mbsim = new SimMobile(CIN ,TypeConnexion,TypeInternet , TypePayement, NumServiceInternet, NumServiceVocal);
                    Mbsim.CreerSim();
                    break;
                }
            }


        }

        response.sendRedirect("GestionContrat.jsp");




    }


}