<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Client Roles</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container mt-5 p-3">
		<h2 class="mb-4">Manage Client Roles</h2>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
				    <th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Role</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="client" items="${clientList}" varStatus="status">
			        <tr>
			        	<th scope="row">${status.index + 1}</th>
			            <td>${client.name}</td> 
			            <td>${client.email}</td>
			            <td>
				            <form action="/IpLab6/manageRoles" method="post">
	                            <input type="hidden" name="clientId" value="${status.index}">                
	                            <select class="form-select w-50" name="role">
	    							<option value="" ${client.role == null || client.role.isEmpty() ? 'selected' : ''}>Select</option>
	                                <option value="client" ${client.role == 'client' ? 'selected' : ''}>Client</option>
	                                <option value="admin" ${client.role == 'admin' ? 'selected' : ''}>Admin</option>
	                            </select>
	                    </td>
	                    <td>
	                    	<button class="btn btn-primary" type="submit">Update Role</button>
	                        </form>
	                    </td>
			        </tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
</body>
</html>

                        
