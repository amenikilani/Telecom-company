package com.bean;

import com.connexion.ConnectionBD;
public class Administrateur extends Employé
{
    public Administrateur(Integer CIN,String Nom, String Prénom, String Adresse, String Email, String MotDePass, Integer numService) {
        super(CIN, Nom, Prénom, Adresse, Email, MotDePass, numService);
    }

    public void CreerEmployé()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO Employé(CIN,Nom,Prénom,Adresse,Email,MotDePass,numService)VALUES ('"+this.CIN+"','"+this.Nom+"','"+this.Prénom+"','"+this.Adresse+"','"+this.Email+"','"+this.MotDePass+"','"+this.numService+"'); ");
        Con.closeConnection();
    }

}
