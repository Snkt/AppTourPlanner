/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.tourplanner.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author sanket
 */
@Controller
public class TestController {
    @RequestMapping(value = "welcome.do")
    public String welcomePage(){
        return "welcome";
    }
}
