package com.steeve.project.service;

import com.steeve.project.dto.SalesInfo;
import com.steeve.project.dto.SalesUserInfo;
import org.springframework.stereotype.Service;

@Service
public class SalesInfoService {

    public SalesInfo getSalesInfo(){

        SalesUserInfo salesUserInfo = new SalesUserInfo();
        salesUserInfo.setName("박소정");
        salesUserInfo.setRegion("광명");

        String[] salesProducts = {"노트북", "모니터", "마우스"};

        SalesInfo salesInfo = new SalesInfo();
        salesInfo.setSalesUserInfo(salesUserInfo);
        salesInfo.setSalesProduct(salesProducts);

        return salesInfo;
    }
}
