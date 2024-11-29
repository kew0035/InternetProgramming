package com.example.youtube;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/youtubeManagement")
public class youtubeManagementServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Prepare sample YouTube video data
        List<Map<String, String>> videos = new ArrayList<>();
        
        // Create a video map with videoId and title
        Map<String, String> video1 = new HashMap<>();
        video1.put("videoId", "abc123");
        video1.put("title", "Sample Video 1");
        videos.add(video1);
        
        // Add more video data if needed
        Map<String, String> video2 = new HashMap<>();
        video2.put("videoId", "xyz456");
        video2.put("title", "Sample Video 2");
        videos.add(video2);
        
        // Set the video data as an attribute
        request.setAttribute("youtubeVideos", videos);
        
        // Forward the request to the JSP
        request.getRequestDispatcher("youtubeManagement.jsp").forward(request, response);
    }
}
