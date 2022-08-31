package com.steeve.project.dto;

public class SalesUserInfo {
	
	private String name;
	private String region;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	@Override
	public String toString() {
		return "SalesUserInfo [name=" + name + ", region=" + region + "]";
	}
	
	

}
