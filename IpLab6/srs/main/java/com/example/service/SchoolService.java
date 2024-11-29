package com.example.service;

import java.util.ArrayList;
import java.util.List;

import com.example.Model.School;
import com.example.viewmodel.SchoolViewModel;

public class SchoolService {
	// Static list to store registered users
    private static final List<School> schoolList = new ArrayList<>();
    private static boolean isEmailRegistered(String email) {
        return schoolList.stream()
                .anyMatch(existingSchool -> existingSchool.getEmail().equalsIgnoreCase(email));
    }

    
    static {
    	schoolList.add(new School("John Doe", "john.doe@example.com","admin","admin"));
    	schoolList.add(new School("Jane Smith", "jane.smith@example.com","admin","admin"));
    	schoolList.add(new School("Michael Johnson", "michael.johnson@example.com","admin","admin"));
    }

    // Add a user to the list
    public static String addSchool(School school) {
    	// Check if the email is already registered
        if (isEmailRegistered(school.getEmail())) {
            return "Email already registered!";
        }else {
        	schoolList.add(school);
        return "Client successfully registered!";
        }
    }

    // Retrieve all users
    public static List<School> getSchoolList() {
        return schoolList;
    }
    
    //convert into ClientViewModel
    public static List<SchoolViewModel>  getVMSchoolList(){
    	List<SchoolViewModel> VMSchoolList = new ArrayList<>();
    	for (School school : schoolList) {
            VMSchoolList.add(new SchoolViewModel(school));
        }
    	return VMSchoolList;
    }
    
    public static void updateSchoolRole(int schoolId, String newRole) {
    	School school = schoolList.get(schoolId);
        if (school != null) {
        	school.setRole(newRole);
        }
    }
    
    public static boolean deleteSchool(String email) {
    	School schoolToDelete = schoolList.stream()
                                          .filter(school -> school.getEmail().equals(email))
                                          .findFirst()
                                          .orElse(null);
        
        if (schoolToDelete != null) {
        	schoolList.remove(schoolToDelete);
            return true;  // Successfully deleted
        }
        return false;  // Client not found
    }

}
