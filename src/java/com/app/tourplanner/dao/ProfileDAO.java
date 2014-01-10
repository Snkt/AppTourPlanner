/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.dao;

import com.app.tourplanner.domainobjects.Profile;
import java.util.List;
import org.springframework.context.annotation.Bean;

/**
 *
 * @author sanket
 */
public interface ProfileDAO {
    public Profile getProfile(String username,String password );
    public void addProfile(Profile profile);
    public List<Profile> getAllProfiles();
}
