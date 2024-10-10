<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Product</title>
    <style>
        body {
            background-color: #f0e68c; /* Light yellow background */
            color: #2c3e50; /* Dark blue text color */
            font-family: Arial, sans-serif; /* Font style */
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0; /* Remove default margin */
        }

        h1 {
            margin-bottom: 20px; /* Spacing below title */
            text-align: center; /* Center title */
            font-size: 2em; /* Increase font size */
            font-weight: bold; /* Bold font for title */
            color: #4A90E2; /* Bright blue color for title */
        }

        form {
            background: rgba(255, 255, 255, 0.9); /* White background for form */
            padding: 20px;
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3); /* Subtle shadow */
            width: 300px; /* Set form width */
            display: flex; /* Use flexbox for form layout */
            flex-direction: column; /* Stack elements vertically in the form */
        }

        label {
            display: block; /* Block display for labels */
            font-weight: bold; /* Bold text for labels */
            margin: 10px 0 5px; /* Spacing */
            color: #34495e; /* Darker color for labels */
        }

        input[type="text"],
        input[type="number"],
        textarea,
        input[type="file"] {
            width: 100%; /* Full width inputs */
            padding: 10px; /* Padding inside input fields */
            border: 1px solid #ccc; /* Border style */
            border-radius: 4px; /* Rounded corners */
            box-sizing: border-box; /* Include padding and border in width */
            margin-bottom: 15px; /* Spacing below inputs */
        }

        button {
            background-color: #e67e22; /* Orange button */
            color: white; /* White text */
            border: none; /* No border */
            padding: 10px; /* Button padding */
            border-radius: 4px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor */
            width: 100%; /* Full width button */
            font-size: 1em; /* Increase button font size */
        }

        button:hover {
            background-color: #d35400; /* Darker orange on hover */
        }

        .error-message {
            color: #e74c3c; /* Red color for error message */
            margin: 10px 0; /* Spacing */
            text-align: center; /* Center error message */
        }

        .back-link {
            display: block; /* Block display */
            text-align: center; /* Center link */
            margin-top: 20px; /* Spacing above link */
            color: #2980b9; /* Blue link color */
            text-decoration: none; /* No underline */
            font-size: 1em; /* Increase font size */
            font-weight: bold; /* Bold font for link */
        }

        .back-link:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <h1>Create Product</h1>

    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/createProduct" method="post" enctype="multipart/form-data">
        <div>
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter product name" required>
        </div>
        <div>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" placeholder="Enter price" required>
        </div>
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" placeholder="Enter product description" required></textarea>
        </div>
        <div>
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" placeholder="Enter quantity" min="1" required>
</div>
        
        <div>
            <label for="image">Product Image:</label>
            <input type="file" id="image" name="image" accept="image/*" required>
        </div>
        <div>
            <button type="submit">Add Product</button>
        </div>
    </form>

    <a class="back-link" href="productList">Back to Product List</a>
</body>
</html>
