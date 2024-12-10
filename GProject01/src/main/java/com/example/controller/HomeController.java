package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {

	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("message", "Welcome to the Spring Web App!");
		return modelAndView;
	}

	@GetMapping("/studDashboard")
	public String showStudDashboard(Model model) {
		model.addAttribute("message", "Kwek Jia Cong");
		return "studDashboard";
	}
	
	@GetMapping("/schoolDashboard")
	public String showSchoolDashboard(Model model) {
		model.addAttribute("message", "Sekolah Kebangsaan (FELDA) Bukit Waha");
		return "schoolDashboard";
	}
	
	@GetMapping("/distDashboard")
	public String showDistDashboard(Model model) {
		model.addAttribute("message", "Kota Tinggi");
		return "distDashboard";
	}
	
	@GetMapping("/jpnjDashboard")
	public String showJpnjDashboard(Model model) {
		model.addAttribute("message", "Johor");
		return "jpnjDashboard";
	}
	
	@GetMapping("/verifyPage")
	public String VerifyPage(Model model) {
		model.addAttribute("message", "Sekolah Kebangsaan (FELDA) Bukit Waha");
		return "verifyPage";
	}
	
	@GetMapping("/youtubeManagement")
    public String youtubeManagement() {
        return "youtubeManagement"; 
    }
}