package com.example.Model;

public class Client {
	private String name;
	private String email;
	private String password;
	private String gender;
	private double height;
	private double weight;
	private double bmi;
	private String bmiCategory;
	private String className;
	private String role;
	private FitnessProgram program[];
	

	public Client(String name, String email,String pass,String role) {
		this.name = name;
		this.password = pass;
		this.email = email;
		this.role = role;
	}
	
	public Client(String name, String email, String password,String gender, double height, double weight) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.height = height;
		this.weight = weight;
		this.role = "client";
		calculateBMI();
		determineBMICategory();
	}
	
	public Client() {
		// TODO Auto-generated constructor stub
	}

	private void calculateBMI() {
		this.bmi = weight/(height*height);
	}
	
	private void determineBMICategory() {
		if (bmi < 18.5) {
            bmiCategory = "Underweight";
            className = "text-info";
        } else if (bmi < 25) {
            bmiCategory = "Normal weight";
            className = "text-success";
        } else if (bmi < 30) {
            bmiCategory = "Overweight";
            className = "text-warning";
        } else if (bmi < 35) {
            bmiCategory = "Class I Obesity";
            className = "text-danger"; 
        } else if (bmi < 40) {
            bmiCategory = "Class II Obesity";
            className = "text-danger"; 
        } else {
        	bmiCategory = "Class III Obesity (Extreme Obesity)";
        	className = "text-danger"; 
        }
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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

	public FitnessProgram[] getProgram() {
		return program;
	}

	public void setProgram(FitnessProgram program[]) {
		this.program = program;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	

}
