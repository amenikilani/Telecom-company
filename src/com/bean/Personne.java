package com.bean;


import com.connexion.ConnectionBD;

public class Personne {
    Integer CIN;
    String Nom;
    String Prénom;
    String Adresse;
    String Email;

    public Personne(Integer CIN,String Nom, String Prénom, String Adresse, String Email) {
        this.CIN=CIN;
        this.Nom=Nom;
        this.Prénom=Prénom;
        this.Adresse= Adresse;
        this.Email=Email;
    }

    public void CreerAbonnée()
    {
        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        Integer rs= Con.updateExec("INSERT INTO Abonnée(CIN,Nom,Prénom,Adresse,Email)VALUES ('"+this.CIN+"','"+this.Nom+"','"+this.Prénom+"','"+this.Email+"','"+this.Adresse+"'); ");
        Con.closeConnection();
    }



}