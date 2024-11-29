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

import com.example.Model.*;
import com.example.service.*;
import com.example.viewmodel.ClientViewModel;

@Controller
public class ClientController {
	
	@GetMapping("/ccregister")
    public String showRegisterForm(Model model) {
		List<FitnessProgram> programList = FitnessProgramService.getProgramList();
	    model.addAttribute("programList", programList);	
	    model.addAttribute("client", new Client());
        return "register";
    }
	
	@GetMapping("/cclogin")
	public String showLoginForm() {
		return "login";
	}
	
	@PostMapping("/ccregister")
	public String processRegisterForm(@ModelAttribute("client")Client client,Model model) {
        Map<String, String> errors = new HashMap<>();

        // Validate name
        if (client.getName() == null || client.getName().trim().isEmpty()) {
            errors.put("nameError", "Name is required.");
        } else if (client.getName().length() < 2 || client.getName().length() > 50) {
        	errors.put("nameError", "Name must be between 2 and 50 characters.");
        }

        // Validate email
        if (client.getEmail() == null || client.getEmail().trim().isEmpty()) {
        	errors.put("emailError", "Email is required.");
        } else if (!client.getEmail().matches("^[\\w-.]+@[\\w-]+\\.[a-zA-Z]{2,}$")) {
        	errors.put("emailError", "Email must be valid.");
        } else if (ClientService.getClientList().stream()
                .anyMatch(existingClient -> existingClient.getEmail().equalsIgnoreCase(client.getEmail()))) {
            errors.put("emailError", "Email is already registered.");
        }

        // Validate password
        if (client.getPassword() == null || client.getPassword().trim().isEmpty()) {
        	errors.put("passwordError", "Password is required.");
        } else if (client.getPassword().length() < 6) {
        	errors.put("passwordError", "Password must be at least 6 characters.");        
        }

        // Validate gender
        if (client.getGender() == null) {
            errors.put("genderError", "Gender must be selected.");
        }

        // Validate height
        if (client.getHeight() <= 0) {
            errors.put("heightError", "Height must be greater than 0.");
        }

        // Validate weight
        if (client.getWeight() <= 0) {
            errors.put("weightError", "Weight must be greater than 0.");
        }

        // If there are errors, return to the form page with error messages
        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            model.addAttribute("client", client); 
            return "register";
        }

		Client newClient = new Client(client.getName(), client.getEmail(), client.getPassword(), client.getGender(), client.getHeight(), client.getWeight());
		
		// Save the client (e.g., add to the client list or database)
		ClientService.addClient(newClient);
		
		// Redirect to the login page after successful registration
		return "login";
    }
	
	@PostMapping("/cclogin")
	public String processLoginForm(@ModelAttribute("client") Client client, Model model, HttpSession session) {
	    // Find the matching client from the client list
	    Client matchedClient = ClientService.getClientList().stream()
	        .filter(registeredClient -> registeredClient.getEmail().equals(client.getEmail()) &&
	                                    registeredClient.getPassword().equals(client.getPassword()))
	        .findFirst()
	        .orElse(null); // Return null if no match is found

	    if (matchedClient != null) {
	        // Redirect to profile page if credentials are valid
	        session.setAttribute("loggedInClient", matchedClient); // Store client in session
	        model.addAttribute("client", matchedClient); // Pass the matched user data to the profile page
	        return "redirect:/profile";
	    } else {
	        // Display error on login page if credentials are invalid
	        model.addAttribute("loginError", "Invalid email or password. Please try again.");
	        return "login";
	    }
	}

	
	@GetMapping("/profile")
    public String showProfile(Model model, HttpSession session) {
		Client client = (Client) session.getAttribute("loggedInClient");
        if (client != null) {
            ClientViewModel VMClient = new ClientViewModel(client);
            model.addAttribute("client", VMClient);
            return "profile";
        } else {
            // If user not found, redirect to an error page or show an error
            model.addAttribute("error", "User not found.");
            return "error"; // Replace with an actual error page or handle accordingly
        }
    }
		
}

