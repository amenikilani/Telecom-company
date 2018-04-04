package com.bean;

import com.connexion.ConnectionBD;
/**
 *
 * @author ameni
 */
public class SimMobile extends Sim {
    Integer NumeroSim;
    String TypeConnexion;
    String TypeInternet;
    String TypePayement;
    Integer NumServiceInternet;
    Integer NumServiceVocal;
    static int i=111111;
    public SimMobile(Integer CIN , String TypeConnexion,String TypeInternet,String TypePayement,Integer NumServiceInternet,Integer VocalServiceNum) {
        super(CIN);
        i+=1;
        this.NumeroSim=Integer.valueOf(("20"+i));
        this.TypeConnexion=TypeConnexion;
        this.TypeInternet= TypeInternet;
        this.TypePayement=TypePayement;
        this.NumServiceInternet=NumServiceInternet;
        this.NumServiceVocal=NumServiceVocal;
    }

    //--------------------------------------
    public void CreerSim()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO SimMobile (NumeroSim,TypeConnexion,TypeInternet,TypePayement,NumServiceVocal,NumServiceInternet,NumRegistrationAbonnée) VALUES ('"+this.NumeroSim+"','"+this.TypeConnexion+"','"+this.TypeInternet+"','"+this.TypePayement+"','"+this.NumServiceVocal+"','"+this.NumServiceInternet+"','"+this.CIN+"'); ");
        Integer rs2= Con.updateExec("INSERT INTO NumeroSim (NumeroSim,TypeServiceInternet,TypeServiceVocal) VALUES ('"+this.NumServiceInternet+"','"+this.NumServiceVocal+"'); ");
        Con.closeConnection();
    }




}