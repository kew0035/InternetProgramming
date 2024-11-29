<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Activity List</title>
</head>
<body>
	<div class="container mt-5 p-3">
		<h2 class="mb-4">Activity List</h2>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Program Name</th>
				    <th scope="col">Date</th>
					<th scope="col">Location</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="activity" items="${activityList}" varStatus="status">
			        <tr>
			        	<th scope="row">${status.index + 1}</th>
			            <td>${activity.name}</td> 
			            <td>${activity.date}</td>
			            <td>${activity.location}</td>
			            <td><button class="btn btn-primary" type="submit">Join</button></td>
			            <td></td> 
			        </tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>