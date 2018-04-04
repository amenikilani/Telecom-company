package com.bean;

import com.connexion.ConnectionBD;

/**
 *
 * @author ameni
 */
public class SimFixe extends Sim{
    Integer NumeroSim;
    String Localisation ;
    static int i=111111;
    public SimFixe(Integer CIN) {
        super(CIN);
        i+=1;
        this.NumeroSim= Integer.valueOf(("71"+i));
        this.Localisation = Localisation;
    }
    public void CreerSim()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO SimFixe (NumeroSim,Localisation,NumAbonnée)VALUES ('"+this.NumeroSim+"','"+this.Localisation+"','"+this.CIN+"'); ");
        Integer rs2= Con.updateExec("INSERT INTO NumeroSim (NumeroSim) VALUES ('"+this.NumeroSim+"'); ");
        Con.closeConnection();
    }

}