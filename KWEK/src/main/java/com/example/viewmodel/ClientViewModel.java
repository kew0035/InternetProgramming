package com.example.viewmodel;


import com.example.Model.Client;
import com.example.Model.FitnessProgram;

public class ClientViewModel {

    // Basic client details
    private String name;
    private String email;
    private String gender;
    private double height;
    private double weight;
    private double bmi;
    private String bmiCategory;
    private String className;
	private String role;

    // For managing multiple fitness programs
    private FitnessProgram[] program;

    // Constructor for initializing from a single Client object
    public ClientViewModel(Client client) {
        this.name = client.getName();
        this.email = client.getEmail();
        this.gender = client.getGender();
        this.height = client.getHeight();
        this.weight = client.getWeight();
        this.bmi = client.getBmi();
        this.bmiCategory = client.getBmiCategory();
        this.className = client.getClassName();
        this.setRole(client.getRole());
        this.program = client.getProgram();  // For profile details where programs might be shown
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getBmi() {
        return bmi;
    }

    public void setBmi(double bmi) {
        this.bmi = bmi;
    }

    public String getBmiCategory() {
        return bmiCategory;
    }

    public void setBmiCategory(String bmiCategory) {
        this.bmiCategory = bmiCategory;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public FitnessProgram[] getProgram() {
        return program;
    }

    public void setProgram(FitnessProgram[] program) {
        this.program = program;
    }

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
    
}
