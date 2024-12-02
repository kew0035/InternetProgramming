package com.example.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Model.Client;
import com.example.Model.FitnessProgram;
import com.example.service.ClientService;
import com.example.service.FitnessProgramService;

@Controller
public class AdminController {
    @GetMapping("/clientList")
	public String showClientList(Model model,HttpSession session) {
    	Client client = (Client) session.getAttribute("loggedInClient");
        model.addAttribute("client", client);
        model.addAttribute("clientList", ClientService.getClientList());
        return "clientList";
	}
    
    @GetMapping("/addProgram")
	public String showAddProgramForm(Model model,HttpSession session) {
    	Client client = (Client) session.getAttribute("loggedInClient");
        model.addAttribute("client", client);
        return "addProgram";
	}
    
    @PostMapping("/addProgram")
    public String processRegisterForm(@ModelAttribute("program")FitnessProgram program,Model model) {
    	Map<String, String> errors = new HashMap<>();

        // Validate name
        if (program.getName() == null || program.getName().trim().isEmpty()) {
            errors.put("nameError", "Name is required.");
        } 

        // Validate description
        if (program.getDescription() == null || program.getDescription().trim().isEmpty()) {
        	errors.put("descriptionError", "Description is required.");
        } 

        // Validate height
        if (program.getDuration() <= 0) {
            errors.put("programError", "Duration must be greater than 0.");
        }

        // If there are errors, return to the form page with error messages
        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            model.addAttribute("program", program); // Preserve user data for form repopulation
            return "addProgram";
        }

        // If validation passes, redirect to the success page
        FitnessProgramService.addProgram(program);
        return "redirect:/programList"; // Redirect to the program list after adding
    }
    
    @GetMapping("/programList")
    public String showProgramList(Model model, HttpSession session) {
        // Retrieve the logged-in client (admin) from the session
        Client client = (Client) session.getAttribute("loggedInClient");
        model.addAttribute("client", client);

        // Get the list of all programs from the service layer
        model.addAttribute("programList", FitnessProgramService.getProgramList());
        return "programList";  // This will show the list of all programs
    }

    
    @GetMapping("/manageRoles")
    public String showManageRoles(Model model,HttpSession session) {
    	Client client = (Client) session.getAttribute("loggedInClient");
        model.addAttribute("client", client);
    	
        model.addAttribute("clientList", ClientService.getVMClientList());
        
        return "manageRoles"; 
    }
    
    @PostMapping("/manageRoles")
    public String processManageRoles(@RequestParam("clientId") String clientId, @RequestParam("role") String role) {
        ClientService.updateClientRole(Integer.parseInt(clientId), role);
        return "redirect:/manageRoles"; 
    }
    
    @PostMapping("/deleteClient")
    public String deleteClient(@RequestParam("email") String email, Model model) {
        boolean success = ClientService.deleteClient(email);
        
        if (success) {
            model.addAttribute("message", "Client successfully deleted.");
        } else {
            model.addAttribute("message", "Client not found.");
        }

        // After deletion, you might want to refresh the client list or redirect to the same page.
        return "redirect:/clientList"; // Redirect back to client list page
    }


}
