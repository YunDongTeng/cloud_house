package com.cloud.house.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String list(Model model){
        model.addAttribute("name","Spark");
        return "index";
    }

    @GetMapping("/400")
    public String paramErrorPage(){
        return "error/400";
    }

    @GetMapping("/403")
    public String accessError(){
        return "error/403";
    }
    @GetMapping("/404")
    public String notFoundError(){
        return "error/404";
    }
    @GetMapping("/500")
    public String serverError(){
        return "error/500";
    }
    @GetMapping("/logout")
    public String logout(){
        return "logout";
    }
}
