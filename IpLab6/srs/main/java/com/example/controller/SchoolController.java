package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Model.Activity;
import com.example.Model.School;
import com.example.service.ActivityService;
import com.example.service.SchoolService;
import com.example.viewmodel.SchoolViewModel;

@Controller
public class SchoolController {
	
	@GetMapping("/register")
    public String showRegisterForm(Model model) {
		List<Activity> activityList = ActivityService.getActivityList();
	    model.addAttribute("activityList", activityList);	
	    model.addAttribute("school", new School());
        return "register";
    }
	
	@GetMapping("/login")
	public String showLoginForm() {
		return "login";
	}
	
	@PostMapping("/register")
	public String processRegisterForm(@ModelAttribute("school")School school,Model model) {
        Map<String, String> errors = new HashMap<>();

        // Validate name
        if (school.getName() == null || school.getName().trim().isEmpty()) {
            errors.put("nameError", "Name is required.");
        } else if (school.getName().length() < 2 || school.getName().length() > 50) {
        	errors.put("nameError", "Name must be between 2 and 50 characters.");
        }

        // Validate email
        if (school.getEmail() == null || school.getEmail().trim().isEmpty()) {
        	errors.put("emailError", "Email is required.");
        } else if (!school.getEmail().matches("^[\\w-.]+@[\\w-]+\\.[a-zA-Z]{2,}$")) {
        	errors.put("emailError", "Email must be valid.");
        } else if (SchoolService.getSchoolList().stream()
                .anyMatch(existingSchool -> existingSchool.getEmail().equalsIgnoreCase(school.getEmail()))) {
            errors.put("emailError", "Email is already registered.");
        }

        // Validate password
        if (school.getPassword() == null || school.getPassword().trim().isEmpty()) {
        	errors.put("passwordError", "Password is required.");
        } else if (school.getPassword().length() < 6) {
        	errors.put("passwordError", "Password must be at least 6 characters.");        
        }


        // Validate height
        if (school.getTotalStudent() <= 0) {
            errors.put("heightError", "Height must be greater than 0.");
        }

        // Validate weight
        if (school.getStudent() <= 0) {
            errors.put("weightError", "Weight must be greater than 0.");
        }

        // If there are errors, return to the form page with error messages
        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            model.addAttribute("school", school); 
            return "register";
        }

        School newSchool = new School(school.getName(), school.getEmail(), school.getPassword(), school.getTotalStudent(), school.getStudent());
		
		// Save the client (e.g., add to the client list or database)
		SchoolService.addSchool(newSchool);
		
		// Redirect to the login page after successful registration
		return "login";
    }
	
	
	
	@PostMapping("/login")
	public String processLoginForm(@ModelAttribute("school") School school, Model model, HttpSession session) {
	    // Find the matching client from the client list
	    School matchedSchool = SchoolService.getSchoolList().stream()
	        .filter(registeredSchool -> registeredSchool.getEmail().equals(school.getEmail()) &&
	                                    registeredSchool.getPassword().equals(school.getPassword()))
	        .findFirst()
	        .orElse(null); // Return null if no match is found

	    if (matchedSchool != null) {
	        // Redirect to profile page if credentials are valid
	        session.setAttribute("loggedInSchool", matchedSchool); // Store client in session
	        model.addAttribute("school", matchedSchool); // Pass the matched user data to the profile page
	        return "redirect:/youtubeManagement";
	    } else {
	        // Display error on login page if credentials are invalid
	        model.addAttribute("loginError", "Invalid email or password. Please try again.");
	        return "login";
	    }
	}
	


	
	@GetMapping("/youtubeManagement")
    public String showProfile(Model model, HttpSession session) {
		School school = (School) session.getAttribute("loggedInSchool");
        if (school != null) {
        	SchoolViewModel VMSchool = new SchoolViewModel(school);
            model.addAttribute("school", VMSchool);
            return "youtubeManagement";
        } else {
            // If user not found, redirect to an error page or show an error
            model.addAttribute("error", "User not found.");
            return "error"; // Replace with an actual error page or handle accordingly
        }
    }
		
}

