/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.dao.impl;

import com.app.tourplanner.hibernateutil.HibernateUtil;
import com.app.tourplanner.dao.ProfileDAO;
import com.app.tourplanner.domainobjects.Profile;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author sanket
 */
public class ProfileDAOImpl implements ProfileDAO{

    @Override
    public Profile getProfile(String username, String password) {
        Query query = HibernateUtil.getSessionFactory().openSession().createQuery("from Profile where userName='"+username+"' AND password='"+password+"'");
        Profile profile = (Profile)query.uniqueResult();
    return profile;
    
    }

    @Override
    public void addProfile(Profile profile) {
        Session session = HibernateUtil.getSessionFactory().openSession();//.saveOrUpdate(this);
        session.saveOrUpdate(profile);
        Transaction transaction = session.beginTransaction();
        transaction.commit();
        session.close();
    }

    @Override
    public List<Profile> getAllProfiles() {
        Query query = HibernateUtil.getSessionFactory().openSession().createQuery("from Profile");
        return query.list();
        
        
    }
    
}
