<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.revShop.models.Product" %>
<%
    Product product = (Product) request.getAttribute("product"); // Retrieve product from request
    String errorMessage = (String) request.getAttribute("errorMessage"); // Retrieve error message if any
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff6f91, #ff9671, #ffc75f, #f9f871); /* Gradient background with mixed colors */
            background-size: 400% 400%; /* Make the gradient more dynamic */
            animation: gradientAnimation 10s ease infinite; /* Smooth gradient animation */
            color: #333;
            margin: 0;
            padding: 20px;
        }

        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        h1 {
            text-align: center;
            color: #fff; /* White heading for better visibility */
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6); /* Stronger shadow for better contrast */
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background: rgba(255, 255, 255, 0.9); /* Light background with transparency */
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); /* More prominent shadow for depth */
        }

        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
            color: #007BFF; /* Bright label color */
        }

        input[type="text"], input[type="number"], textarea {
            width: calc(100% - 20px); /* Full width minus padding */
            padding: 12px;
            border: 2px solid #007BFF;
            border-radius: 6px;
            margin-bottom: 18px;
            font-size: 16px;
            background: #f0f8ff; /* Light background inside input */
        }

        input[type="submit"] {
            background: linear-gradient(90deg, #007BFF, #6a00f4); /* Gradient from blue to purple */
            color: #fff;
            border: none;
            padding: 12px 15px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s, transform 0.3s;
            width: 100%; /* Full width button */
        }

        input[type="submit"]:hover {
            background: linear-gradient(90deg, #0056b3, #5000b8); /* Darker gradient on hover */
            transform: scale(1.05); /* Slight grow effect on hover */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 15px;
            text-decoration: none;
            background: linear-gradient(90deg, #ff8c00, #ff3d00); /* Gradient from orange to red */
            color: white;
            text-align: center;
            font-size: 16px;
            border-radius: 6px;
            transition: background-color 0.3s, transform 0.3s;
        }

        a:hover {
            background: linear-gradient(90deg, #ff6f00, #d32f2f); /* Darker orange-red gradient on hover */
            transform: scale(1.05); /* Slight grow effect on hover */
        }

        .error-message {
            color: #d32f2f; /* Red for error messages */
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <h1>Edit Product</h1>

    <div class="container">
        <!-- Display error message if exists -->
        <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
            <div class="error-message"><%= errorMessage %></div>
        <% } %>

        <!-- Ensure product is not null before displaying the form -->
        <% if (product != null) { %>
            <form action="editproducts" method="post">
                <input type="hidden" name="id" value="<%= product.getId() %>"> <!-- Hidden field for product ID -->
                
                <label for="name">Product Name:</label>
                <input type="text" name="name" value="<%= product.getName() %>" required>

                <label for="price">Price:</label>
                <input type="number" name="price" value="<%= product.getPrice() %>" step="0.01" required>

                <label for="description">Description:</label>
                <textarea name="description" required><%= product.getDescription() %></textarea>

                <input type="submit" value="Update Product">
            </form>
        <% } else { %>
            <div class="error-message">Product not found.</div>
        <% } %>

        <a href="productList">Cancel</a> <!-- Link to return to product list -->
    </div>
</body>
</html>
