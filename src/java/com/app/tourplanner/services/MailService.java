/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

/**
 *
 * @author sanket
 */
@Service(value = "mailService")
public class MailService {
    @Autowired
    private MailSender mailSender;
    @Autowired
    private SimpleMailMessage alertMailMessage;
    
    public void sendMail(String from, String to, String subject, String body) {
        
        SimpleMailMessage message = new SimpleMailMessage();
         
        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(body);
        mailSender.send(message);
        
    }
    
    public void sendAlertMail(String alert) {
        
        SimpleMailMessage mailMessage = new SimpleMailMessage(alertMailMessage);
        mailMessage.setText(alert);
        mailSender.send(mailMessage);
        
    }
    
}
