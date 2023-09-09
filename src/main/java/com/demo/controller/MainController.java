package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/")
    public String viewHome(){
        return "home";
    }
    @RequestMapping("/addEmployee")
    public String addEmployee() {
        return "addEmployee";
    }
}
