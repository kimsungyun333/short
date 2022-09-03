package com.steeve.project.controller;

import com.steeve.project.dto.SalesInfo;
import com.steeve.project.dto.SalesUserInfo;
import com.steeve.project.service.SalesInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;

@Controller
public class SalesInfoController {

    @Autowired
    SalesInfoService salesInfoService;

    @GetMapping("/getSalesInfo.do")
    @ResponseBody
    public SalesInfo test(){
        return salesInfoService.getSalesInfo();
    }

    @PostMapping("/getSalesInfo.do")
    @ResponseBody
    public SalesInfo test(SalesInfo salesInfo){
        return salesInfoService.getSalesInfo();
    }

}
