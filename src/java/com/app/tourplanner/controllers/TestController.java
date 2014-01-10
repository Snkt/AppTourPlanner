/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.controllers;

import com.app.tourplanner.dao.ProfileDAO;
import com.app.tourplanner.domainobjects.Profile;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author sanket
 */
@Controller
public class TestController {

    @Autowired
    ProfileDAO profileDAO;

    @RequestMapping(value = "welcome.do")
    public String welcomePage() {
        Profile profile = profileDAO.getProfile("admin", "111");
        if (profile == null) {
            System.out.println("not matched");
            return "welcome";
        } else {
            System.out.println("matched"+profile.getUserName());
            return "welcome";
        }
    }
}
