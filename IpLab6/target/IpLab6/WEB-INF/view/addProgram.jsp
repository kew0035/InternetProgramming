<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Program</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container mt-5 p-3" style="width: 35vw;">
		<h2 class="mb-4">Add Program</h2>
		<form action="/IpLab6/addProgram" method="post" class="border p-4 rounded shadow-sm mb-3">
			<div class="mb-3">
			    <label for="name" class="form-label">Program Name</label>
			    <input class="form-control" type="text" id="name" name="name" value="${program.name}">
			    <div class="text-danger">${errors.nameError}</div>
			</div>
			
			<div class="mb-3">
			    <label for="description" class="form-label">Program Description</label>
			    <input class="form-control" type="text" id="description" name="description" value="${program.description}">
			    <div class="text-danger">${errors.descriptionError}</div>
			</div>
			
			<div class="mb-3">
			    <label for="duration" class="form-label">Program Duration</label>
			    <input class="form-control" type="number" id="duration" name="duration" value="${program.duration}" min="1">
			    <div class="text-danger">${errors.programError}</div>
			</div>

			<input type="submit" class="btn btn-primary w-100" value="Submit">
		</form>        
	</div>
</body>
</html>