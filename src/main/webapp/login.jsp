<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            background-color: #e0f7fa; /* Light teal background */
            font-family: 'Arial', sans-serif; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            margin: 0;
        }
        form {
            width: 100%; 
            max-width: 400px; 
            margin: auto; 
            background: rgba(255, 255, 255, 0.95); /* Slightly transparent white */
            padding: 30px; 
            border-radius: 10px; 
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1); /* Enhanced shadow for depth */
        }
        input, button {
            display: block; 
            width: 100%; 
            padding: 12px; 
            margin-bottom: 15px; 
            border-radius: 5px; /* Rounded corners */
            border: 1px solid #ccc; /* Light border */
        }
        button {
            background-color: #ff4081; /* Pink background */
            color: white; 
            border: none; 
            cursor: pointer; 
            transition: background-color 0.3s; /* Smooth transition */
        }
        button:hover {
            background-color: #f50057; /* Darker pink on hover */
        }
        .error-message {
            color: red; 
            margin-bottom: 10px; 
            font-weight: bold; /* Bold error message */
        }
        p {
            text-align: center; /* Center the registration prompt */
        }
    </style>
</head>
<body>
    
    <!-- Display error message if present -->
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <h1 style="text-align: center; color: #34495e;">Login</h1> <!-- Centered heading -->
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Login</button>
        <p>Already have an account? <a href="register.jsp">Register here</a></p>
    </form>

 
</body>
</html>
