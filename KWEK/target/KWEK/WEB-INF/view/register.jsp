<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Register</title>
<style>
        body {
            background-color: lightblue;
        }
        .container {
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="container mt-5 p-3 w-50">
        <h2 class="mb-4">Register</h2>
        <form action="/KWEK/register" method="post" class="border p-4 rounded shadow-sm mb-3">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="${client.name}">
                <span class="text-danger">${errors['nameError']}</span>
            </div>
            
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="text" id="email" name="email" class="form-control" value="${client.email}">
                <span class="text-danger">${errors['emailError']}</span>
            </div>
            
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control">
                <span class="text-danger">${errors['passwordError']}</span>
            </div>
            
            <div class="mb-3">
                <label for="gender" class="form-label">Gender:</label>
                <select id="gender" name="gender" class="form-select">
                    <option value="">Select</option>
                    <option value="Male" ${client.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${client.gender == 'Female' ? 'selected' : ''}>Female</option>
                </select>
                <span class="text-danger">${errors['genderError']}</span>
            </div>
            
            <div class="row mb-3">
			    <div class="col">
			    	<label for="height" class="form-label">Height(m):</label>
			        <input type="number" id="height" name="height" class="form-control" value="${client.height == 0 ? '': client.height}">
			        <span class="text-danger">${errors['heightError']}</span>
			    </div>
			    <div class="col">
			      <label for="weight" class="form-label">Weight(kg):</label>
			      <input type="number" id="weight" name="weight" class="form-control" value="${client.weight == 0 ? '': client.weight}">
			      <span class="text-danger">${errors['weightError']}</span>
			    </div>
			</div>
            
            <button type="submit" class="btn btn-primary w-100">Register</button>
        </form>
        <button class="btn btn-success" onclick="location.href='/KWEK/login'">
		    Go to Login
		</button>
    </div>

</body>
</html>