package com.bean;

import com.connexion.ConnectionBD;


import java.sql.ResultSet;
public class Service {
    String Description;
    float Prix;
    Integer ServiceID ;

    public  Service(Integer ServiceID ,String Description , float Prix)
    {   this.ServiceID = ServiceID ;
        this.Prix = Prix ;
        this.Description = Description ;
    }

    public String getDescription()
    {
        return Description;
    }

    public float getPrix()
    {
        return Prix;
    }

    public void CreerService()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO ServiceVocal(ServiceID,Description,Prix)VALUES ('"+this.ServiceID+"','"+this.Description+"','"+this.Prix+"'); ");
        Con.closeConnection();
    }

    public static ResultSet getData()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        ResultSet rs= Con.selectExec("SELECT ServiceID,Description,Prix FROM Service ;");
        return rs;

    }


}