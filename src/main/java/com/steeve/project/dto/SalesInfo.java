package com.steeve.project.dto;

import java.util.Arrays;

public class SalesInfo {
	
	private SalesUserInfo salesUserInfo;
	private String[] salesProduct;
	
	public SalesUserInfo getSalesUserInfo() {
		return salesUserInfo;
	}
	public void setSalesUserInfo(SalesUserInfo salesUserInfo) {
		this.salesUserInfo = salesUserInfo;
	}
	public String[] getSalesProduct() {
		return salesProduct;
	}
	public void setSalesProduct(String[] salesProduct) {
		this.salesProduct = salesProduct;
	}
	
	@Override
	public String toString() {
		return "SalesInfo [salesUserInfo=" + salesUserInfo + ", salesProduct=" + Arrays.toString(salesProduct) + "]";
	}
	
	
}
