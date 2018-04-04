package com.bean;
import com.connexion.ConnectionBD;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Properties;


public class EnvoiEmail {
    public static void EnvoiEmail ( String host, String port,
                                   final String userName, final String password, Integer NumeroSim) throws AddressException,
            MessagingException {

        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host",host);
        properties.put("mail.smtp.port",port);
        properties.put("mail.smtp.auth","true");
        properties.put("mail.smtp.starttls.enable", "true");
        String Email="";


        ConnectionBD Con = new ConnectionBD();
        Con.driver();
        Con.OpenConnexion();
        ResultSet rs= Con.selectExec("Select Email from Abonnée INNER JOIN SimMobile ON  SimMobile.NumeroSim='"+NumeroSim+"' AND SimMobile.NumRegistrationAbonnée=Abonnée.CIN" +
                "  UNION " +
                "Select Email from Abonnée INNER JOIN SimFixe ON SimFixe.NumeroSim ='"+NumeroSim+"' AND SimFixe.NumRegistrationAbonnée=Abonnée.CIN");

       // try {
           // while(rs.next()) {
               // Email =(rs.getString("kilaniameni2@gmail.com"));
                Email="kilaniameni2@gmail.com";
         //   }
        /*} catch (SQLException e) {
            e.printStackTrace();
        }*/


        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName,password);
            }
        };


        Session session = Session.getInstance(properties, auth);

        Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = new InternetAddress[0];
        toAddresses = new InternetAddress[]{ new InternetAddress(Email) };

        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject("Facturation ");
        msg.setSentDate(new Date());

       // ResultSet rechfact = Facture.ChercherFacture(NumeroSim);

        String text="you have to pay";

       /* try {
            while(rechfact.next())
            {
                text =
                        "SIM : "+rechfact.getString("NumeroSim")+"\n"+
                                "Service Internet: "+rechfact.getString("TypeServiceInternet")+"\n"+
                                "Service vocal : "+rechfact.getString("TypeServiceVocal")+"\n"+
                                "Nombre Unité consommé : "+rechfact.getString("NombreUnitéconsommé")+"\n"+
                                "Date Facture: "+rechfact.getString("DateFacture")+"\n"+
                                "Total : "+rechfact.getString("Total")+"\n"+
                                "Expiration Date : "+rechfact.getString("DateExpiration")+"\n";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }*/



        msg.setText(text);

        // sends the e-mail
        Transport.send(msg);
    }
}