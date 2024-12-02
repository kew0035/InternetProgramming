package com.example.service;

import java.util.ArrayList;
import java.util.List;

import com.example.Model.Client;
import com.example.viewmodel.ClientViewModel;

public class ClientService {
	// Static list to store registered users
    private static final List<Client> clientList = new ArrayList<>();
    private static boolean isEmailRegistered(String email) {
        return clientList.stream()
                .anyMatch(existingClient -> existingClient.getEmail().equalsIgnoreCase(email));
    }

    
    static {
    	clientList.add(new Client("John Doe", "john.doe@example.com","admin","admin"));
        clientList.add(new Client("Jane Smith", "jane.smith@example.com","admin","admin"));
        clientList.add(new Client("Michael Johnson", "michael.johnson@example.com","admin","admin"));
    }

    // Add a user to the list
    public static String addClient(Client client) {
    	// Check if the email is already registered
        if (isEmailRegistered(client.getEmail())) {
            return "Email already registered!";
        }else {
        clientList.add(client);
        return "Client successfully registered!";
        }
    }

    // Retrieve all users
    public static List<Client> getClientList() {
        return clientList;
    }
    
    //convert into ClientViewModel
    public static List<ClientViewModel>  getVMClientList(){
    	List<ClientViewModel> VMClientList = new ArrayList<>();
    	for (Client client : clientList) {
            VMClientList.add(new ClientViewModel(client));
        }
    	return VMClientList;
    }
    
    public static void updateClientRole(int clientId, String newRole) {
        Client client = clientList.get(clientId);
        if (client != null) {
            client.setRole(newRole);
        }
    }
    
    public static boolean deleteClient(String email) {
        Client clientToDelete = clientList.stream()
                                          .filter(client -> client.getEmail().equals(email))
                                          .findFirst()
                                          .orElse(null);
        
        if (clientToDelete != null) {
            clientList.remove(clientToDelete);
            return true;  // Successfully deleted
        }
        return false;  // Client not found
    }

}
