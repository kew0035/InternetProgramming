package com.example.Model;

import com.example.Model.Activity;

public class School {
	private String name;
	private String email;
	private String password;
	private double totalStudent;
	private double student;
	private double grade;
	private String gradeCategory;
	private String className;
	private String role;
	private Activity activity[];
	

	public School(String name, String email,String pass,String role) {
		this.name = name;
		this.password = pass;
		this.email = email;
		this.role = role;
	}
	
	public School(String name, String email, String password, double totalStudent, double student) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.totalStudent = totalStudent;
		this.student = student;
		this.role = "School Admin";
		calculatePercent();
		determineGradeCategory();
	}
	
	public School() {
		// TODO Auto-generated constructor stub
	}

	private void calculatePercent() {
		this.grade = (student/totalStudent)*100;
	}
	
	private void determineGradeCategory() {
		if (grade < 25) {
            gradeCategory = "Very Low";
            className = "text-info";
        } else if (grade < 50) {
        	gradeCategory = "Low";
            className = "text-success";
        } else if (grade < 75) {
        	gradeCategory = "Normal";
            className = "text-warning";
        } else {
        	gradeCategory = "Excellent";
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

	public double getTotalStudent() {
		return totalStudent;
	}
	public void setTotalStudent(double totalStudent) {
		this.totalStudent = totalStudent;
	}
	public double getStudent() {
		return student;
	}
	public void setStudent(double student) {
		this.student = student;
	}
	public double getGrade() {
		return grade;
	}
	public void setBmi(double grade) {
		this.grade = grade;
	}
	public String getGradeCategory() {
		return gradeCategory;
	}
	public void setGradeCategory(String gradeCategory) {
		this.gradeCategory = gradeCategory;
	}
	public String getClassName() {
		return className;
	}

	public Activity[] getActivity() {
		return activity;
	}

	public void setProgram(Activity activity[]) {
		this.activity = activity;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	

}

