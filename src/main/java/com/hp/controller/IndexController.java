package com.hp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/admin")
    public String admin(){
        //跳转admin.html
        return "admin/admin";
    }

    @RequestMapping("/front")
    public String front(){
        //跳转index.html
        return "front/home_index";
    }
}
