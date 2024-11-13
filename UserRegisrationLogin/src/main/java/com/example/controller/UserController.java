package com.example.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Map;
/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private Map<String, String> users = new HashMap<>();
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String action = request.getParameter("action");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			if("register".equals(action)) {
				if(users.containsKey(username)) {
					request.setAttribute("message", "Username already exists. Try another.");
					RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
					rd.forward(request, response);
				}else {
					users.put(username, password);
					request.setAttribute("message", "Registration successful! You can now login.");
					RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}
			}else if("login".equals(action)) {
				if(users.containsKey(username) && users.get(username).equals(password)) {
					request.setAttribute("username", username);
					RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
					rd.forward(request, response);
				}else {
					request.setAttribute("message", "Invalid username or password. Try again.");
					RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
		}
	}

}
