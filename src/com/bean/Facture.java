package com.bean;

import com.connexion.ConnectionBD;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.ZoneId;

public class Facture {
    Integer NumeroSim;
    String NombreUnitéConsommé;
    Integer Total;
    String DateFacture;
    String Date;
    String DateExpiration;

    public Facture(Integer NumeroSim , String NombreUnitéConsommé , Integer Total)
    {

        ZoneId z = ZoneId.of( "Europe/Paris" );
        this.DateFacture = LocalDate.now( z ).toString();
        this.NumeroSim = NumeroSim;
        this.NombreUnitéConsommé = NombreUnitéConsommé;
        this.Total = Total;
        this.DateExpiration=LocalDate.now( z ).plusMonths(3).toString();
    }

    public void CreerFacture()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs = Con.updateExec("INSERT INTO Facture(NumeroSim,NombreUnitéConsommé,DateFacture,Total,DateExpiration) VALUES ('"+this.NumeroSim+"','"+this.NombreUnitéConsommé+"','"+this.DateFacture+"','"+this.Total+"','"+this.DateExpiration+"'); ");
        Con.closeConnection();
    }

    public static ResultSet ChercherFacture(Integer NumeroSim)
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        ResultSet rs= Con.selectExec("Select * from Facture WHERE Facture.NumeroSim ='"+NumeroSim+"' ");
        return rs;
    }

}