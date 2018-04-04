package com.servlet;


import com.bean.Service;
import com.bean.ServiceInternet;
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
@WebServlet(name = "CreerService", urlPatterns = {"/CreerService"})
public class CreerService extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {   Integer ServiceID = Integer.parseInt(request.getParameter("ServiceID")) ;
        String Description=request.getParameter("Description");
        float Prix = Float.parseFloat(request.getParameter("Prix"));
        String TypeService =request.getParameter("TypeService");
        String ISP =request.getParameter("ISP");

        if(TypeService.equals("ServiceInternet"))
        {
            ServiceInternet service =new ServiceInternet(ServiceID ,Description,Prix,ISP);
            service.CreerServiceInternet();
            System.out.println("hiiiiii");
            response.sendRedirect("Administrateur.jsp");
        }

        else if (TypeService.equals("ServiceVocal"))
        {
            Service service = new Service(ServiceID ,Description,Prix);
            service.CreerService();
            response.sendRedirect("Administrateur.jsp");
        }
    }


}