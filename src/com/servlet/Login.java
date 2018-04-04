package com.servlet;



import com.connexion.ConnectionBD;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Login")
public class Login extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password =request.getParameter("password");
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        ResultSet rs= Con.selectExec("SELECT NumService,CIN FROM Employé WHERE Email='" + username + "' AND MotDePass = '" + password + "';");

        try {
            if (!rs.next())
            {
                Con.closeConnection();
                response.sendRedirect("login.jsp");
            }
            else
            {
                Integer Id= null;
                try {
                    Id = Integer.parseInt(rs.getString(2));
                } catch (SQLException e) {
                }
                switch (Integer.parseInt(rs.getString(1))) {
                    case 1:
                    {
                        Con.closeConnection();
                        HttpSession session = request.getSession(true);
                        session.setAttribute("user", "admin");
                        response.sendRedirect("Administrateur.jsp");
                        break;
                    }
                    case 2:
                    {
                        Con.closeConnection();
                        HttpSession session = request.getSession(true);
                        session.setAttribute("user", "Facture");
                        response.sendRedirect("GestionFacture.jsp");
                        break;
                    }
                    case 3 :
                    {
                        Con.closeConnection();
                        HttpSession session = request.getSession(true);
                        session.setAttribute("user", "Contrat");
                        response.sendRedirect("GestionContrat.jsp");
                        break;
                    }
                    default:
                    {
                        break ;
                    }
                }
            }
        } catch (SQLException e) {
        }

    }
}