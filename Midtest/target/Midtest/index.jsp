<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
</head>
<body>
    <h1>User Registration</h1>
    <form action="credit" method="post"> <!-- This will trigger the RegistrationServlet -->
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br><br>

        <input type="submit" value="Register" />
    </form>
</body>
</html>
