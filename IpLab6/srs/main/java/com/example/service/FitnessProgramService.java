package com.example.service;

import java.util.ArrayList;
import java.util.List;


import com.example.Model.FitnessProgram;
import com.example.viewmodel.AdminViewModel;


public class FitnessProgramService {
    private static List<FitnessProgram> programList = new ArrayList<>();

    static {
        programList.add(new FitnessProgram("Yoga", "Improve flexibility and reduce stress.", 60));
        programList.add(new FitnessProgram("Pilates", "Strengthen your core and improve posture.", 45));
        programList.add(new FitnessProgram("Strength Training", "Build muscle and increase strength.", 90));
        programList.add(new FitnessProgram("Cardio Workouts", "Boost your heart health and endurance.", 30));
        programList.add(new FitnessProgram("CrossFit", "High-intensity functional fitness.", 120));
    }
    
    public static void addProgram(FitnessProgram program) {
        programList.add(program);
    }

    public static List<FitnessProgram> getProgramList() {
        return programList;
    }
    
    public static List<AdminViewModel>  getVMProgramList(){
    	List<AdminViewModel> VMProgramList = new ArrayList<>();
    	for (FitnessProgram program : programList) {
            VMProgramList.add(new AdminViewModel(program.getName(),program.getDescription(),program.getDuration()));
        }
    	return VMProgramList;
    }
}

