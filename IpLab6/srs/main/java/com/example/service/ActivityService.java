package com.example.service;

import java.util.ArrayList;
import java.util.List;

import com.example.Model.Activity;
import com.example.viewmodel.SchoolViewModel;


public class ActivityService {
    private static List<Activity> activityList = new ArrayList<>();

    static {
        activityList.add(new Activity("Yoga", 1, "Kulai"));
        activityList.add(new Activity("Pilates", 2, "Batu Pahat"));
        activityList.add(new Activity("Strength Training", 3, "Muar"));
        
    }
    
    public static void addActivity(Activity activity) {
        activityList.add(activity);
    }

    public static List<Activity> getActivityList() {
        return activityList;
    }
    
    public static List<SchoolViewModel>  getVMActivityList(){
    	List<SchoolViewModel> VMActivityList = new ArrayList<>();
    	for (Activity activity : activityList) {
            VMActivityList.add(new SchoolViewModel(activity.getName(),activity.getDate(),activity.getLocation()));
        }
    	return VMActivityList;
    }
}


