<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<form action="UserController" method="post">
		<input type="hidden" name="action" value="login">
		Username: <input type="text" name="username" required><br>
		Password: <input type="password" name="password" required><br>
		<button type="submit">Login</button>
	</form>
	
	<!-- JSTL and EL to display the message it it exists  -->
	<c:if test="${not empty message}">
		<p  style="color:red">${message}</p>
	</c:if>
<%-- 	
	<%if(request.getAttribute("message")!=null){ %>
	<p style="color:red;"><%= request.getAttribute("message") %> </p>
	<%} %> 
--%>
</body>
</html>