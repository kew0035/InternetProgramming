<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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
	<div class="container mt-5 p-3" style="width: 35vw;">
		<h2 class="mb-4">Login</h2>
        <form action="/IpLab6/login" method="post" class="border p-4 rounded shadow-sm mb-3">
        	<div class="mb-3">
            	<label for="email" class="form-label">Email</label>
                <input type="text" id="email" name="email" class="form-control" placeholder="Enter your email">
            </div>
                            
            <div class="mb-3">
                 <label for="password" class="form-label">Password</label>
                 <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password">
            </div>
            
            <button type="submit" class="btn btn-primary w-100">Login</button>
            <span class="text-danger">${loginError}</span>
        </form>
        <button class="btn btn-success" onclick="location.href='/IpLab6/register'">
		    Go to Register
		</button>
	</div>
</body>
</html>