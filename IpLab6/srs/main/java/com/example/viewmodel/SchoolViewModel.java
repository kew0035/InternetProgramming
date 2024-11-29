package com.example.viewmodel;

import com.example.Model.Activity;
import com.example.Model.School;

public class SchoolViewModel {

    // Basic client details
    private String name;
    private String email;
    private double totalStudent;
    private double student;
    private double grade;
    private String gradeCategory;
    private String className;
	private String role;

    // For managing multiple fitness programs
    private Activity[] activity;

    // Constructor for initializing from a single Client object
    public SchoolViewModel(School school) {
        this.name = school.getName();
        this.email = school.getEmail();
        this.totalStudent = school.getTotalStudent();
        this.student = school.getStudent();
        this.grade = school.getGrade();
        this.gradeCategory = school.getGradeCategory();
        this.className = school.getClassName();
        this.setRole(school.getRole());
        this.activity = school.getActivity();  // For profile details where programs might be shown
    }

    public SchoolViewModel(String name2, int date, String location) {
		// TODO Auto-generated constructor stub
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

    public void setGrade(double grade) {
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

    public void setClassName(String className) {
        this.className = className;
    }

    public Activity[] getActivity() {
        return activity;
    }

    public void setProgram(Activity[] activity) {
        this.activity = activity;
    }

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
    
}
