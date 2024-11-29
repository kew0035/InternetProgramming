package com.example.Model;

public class Activity {
	private String name;
	private int date;
	private String location;
	
	public Activity(String name, int date, String location) {
		this.name = name;
		this.date = date;
		this.location = location;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

}


