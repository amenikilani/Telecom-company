package com.bean;


import com.connexion.ConnectionBD;

import java.sql.ResultSet;

public class ServiceInternet extends Service{
    String ISP;

    public ServiceInternet(Integer ServiceID ,String Description, float Prix,String ISP  ) {
        super(ServiceID , Description, Prix);
        this.ISP=ISP;

    }
    public String getISP() {
        return ISP;
    }
    String Description = super.getDescription() ;

    public void CreerServiceInternet()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO ServiceInternet(ServiceID,Description,Prix,ISP)VALUES ('"+this.ServiceID+"','"+this.Description+"','"+this.Prix+"','"+this.ISP+"'); ");
        Con.closeConnection();
    }

    public static   ResultSet getData()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        ResultSet rs= Con.selectExec("SELECT ServiceID,Description FROM ServiceInternet ;");
        return rs;

    }



}