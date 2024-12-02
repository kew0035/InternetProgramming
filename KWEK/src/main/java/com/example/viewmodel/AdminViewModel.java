package com.example.viewmodel;

import java.util.List;

import com.example.Model.Client;

public class AdminViewModel {
    // For managing programs
    private String programName;
    private String programDescription;
    private int duration; 
    
    // For managing roles
    private List<Client> clientList;  // List of clients to manage roles
    
    // Constructor for managing programs with duration
    public AdminViewModel(String programName, String programDescription, int duration) {
        this.programName = programName;
        this.programDescription = programDescription;
        this.duration = duration;
    }

    // Constructor for managing roles
    public AdminViewModel(List<Client> clientList) {
        this.clientList = clientList;
    }

    // Getters and setters for the fields
    public String getProgramName() {
        return programName;
    }

    public void setProgramName(String programName) {
        this.programName = programName;
    }

    public String getProgramDescription() {
        return programDescription;
    }

    public void setProgramDescription(String programDescription) {
        this.programDescription = programDescription;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public List<Client> getClientList() {
        return clientList;
    }

    public void setClientList(List<Client> clientList) {
        this.clientList = clientList;
    }
}


