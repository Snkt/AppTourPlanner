/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.controllers;

import com.app.tourplanner.dao.ProfileDAO;
import com.app.tourplanner.domainobjects.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
//        Profile profile = profileDAO.getProfile("admin", "111");
//        if (profile == null) {
//            System.out.println("not matched");
//            return "login";
//        } else {
//            System.out.println("matched"+profile.getUserName());
//            return "login";
//        }
        return "login";
    }
    
    @ResponseBody
    @RequestMapping(value = "loginauth.do")
    public String loginAuth(@RequestParam(value = "username")String username,
        @RequestParam(value = "password")String password){
        System.out.println("username "+username +" passwd "+password);
        Profile profile = profileDAO.getProfile(username, password);
        if (profile == null) {
            System.out.println("not matched");
 //           return new ModelAndView("login", "", profileDAO);
            return "fail";
        } else {
            System.out.println("matched"+profile.getUserName());
 //           return new ModelAndView("login", "", profileDAO);
            return "success";
        }
    }
}
