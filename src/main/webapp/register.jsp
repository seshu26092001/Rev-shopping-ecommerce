<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body { 
            background-color: #f0f8ff; /* Light background color */
            font-family: 'Arial', sans-serif; 
            margin: 0; 
            padding: 0; 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            height: 100vh; 
        }
        .register-container { 
            width: 350px; 
            padding: 30px; 
            margin: auto; 
            background-color: rgba(255, 255, 255, 0.95); /* Slightly transparent white */
            border-radius: 8px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
            text-align: center; 
        }
        input, select { 
            width: 100%; 
            padding: 10px; 
            margin: 10px 0; 
            border: 1px solid #ccc; /* Light border */
            border-radius: 4px; /* Rounded corners */
        }
        button { 
            background-color: #28a745; /* Green background */
            color: white; 
            padding: 10px; 
            border: none; 
            border-radius: 4px; /* Rounded corners for the button */
            cursor: pointer; 
            transition: background-color 0.3s; /* Smooth transition */
        }
        button:hover { 
            background-color: #218838; /* Darker green on hover */
        }
        .error-message { 
            color: red; 
            margin: 10px 0; 
        }
        a { 
            color: #007bff; /* Blue for links */
            text-decoration: none; 
        }
        a:hover { 
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

<div class="register-container">
    <img src="images/logo1.png" alt="Your Logo" style="max-width: 150px;" />
    <h2>Register</h2>
    <form action="${pageContext.request.contextPath}/register" method="POST">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required /><br>

        <!-- Role selection dropdown -->
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="buyer">Buyer</option>
            <option value="seller">Seller</option>
        </select><br>

        <button type="submit" style="width: 100%; padding: 10px; background-color: #ff69b4; color: white; border: none; border-radius: 4px; cursor: pointer; transition: background-color 0.3s;">Register</button>
    </form>

    <c:if test="${not empty errorMessage}">
        <div class="error-message">${errorMessage}</div>
    </c:if>

    <p>Already have an account? <a href="login.jsp">Login here</a></p>
</div>

</body>
</html>
