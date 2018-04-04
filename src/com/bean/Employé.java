package com.bean;

abstract class Employé extends Personne {

    String MotDePass;
    Integer numService;

    public Employé(Integer CIN , String Nom, String Prénom, String Adresse, String Email, String MotDePass, Integer numService)
    {   super(CIN,Nom,Prénom,Adresse,Email);
        this.MotDePass = MotDePass;
        this.numService = numService;
    }

}