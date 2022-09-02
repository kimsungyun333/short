package com.steeve.project.controller;

import com.steeve.project.dto.SalesInfo;
import com.steeve.project.dto.SalesUserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;

@Controller
public class SalesInfoController {
    @GetMapping("/salesajax")
    public String salesajax(){
        return "salesajax";
    }

    @PostMapping("/salesajax")
    @ResponseBody
    public SalesUserInfo test(@RequestBody SalesUserInfo salesUserInfo){
        System.out.println("salesUserInfo ="+salesUserInfo);


        return salesUserInfo;
    }


}
