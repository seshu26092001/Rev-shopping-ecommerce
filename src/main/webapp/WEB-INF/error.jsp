<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da; /* Light red background color */
            color: #721c24; /* Dark red text color */
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }
        h1 {
            color: #d9534f; /* Darker red for the heading */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2); /* Slight shadow for depth */
        }
        p {
            font-size: 1.2em; /* Increased font size for the error message */
            margin: 20px 0; /* Margin for spacing */
        }
        form {
            margin: 20px 0; /* Margin for spacing */
            text-align: center;
        }
        input[type="text"] {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ced4da; /* Light gray border */
            border-radius: 5px; /* Rounded corners */
            width: 250px; /* Fixed width */
        }
        button {
            padding: 10px 20px;
            font-size: 1em;
            background-color: #d9534f; /* Red button */
            color: white;
            border: none;
            border-radius: 5px; /* Rounded corners */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #c9302c; /* Darker red on hover */
        }
        a {
            margin-top: 20px;
            font-size: 1em;
            color: #5bc0de; /* Link color */
            text-decoration: none; /* No underline */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <h1>Product Details</h1>
    <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p> <!-- Display the specific error message -->
        <form action="${pageContext.request.contextPath}/productdetails" method="get">
            <label for="productId">Enter Product ID:</label>
            <input type="text" name="productId" id="productId" required>
            <button type="submit">View Product Details</button>
        </form>
    </c:if>
    <a href="buyerDashboard.jsp">Go back</a>
</body>
</html>
