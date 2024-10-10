<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <style>
        body {
            background-color: #e0f7fa; /* Light cyan background */
            font-family: 'Helvetica Neue', Arial, sans-serif; /* Modern font style */
            color: #263238; /* Darker text color */
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #00796b; /* Teal color for the heading */
            margin-bottom: 20px; /* Spacing below title */
            font-size: 2.5em; /* Increase font size for emphasis */
        }
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); /* Responsive grid with minimum 200px columns */
            gap: 20px; /* Spacing between product items */
            margin: 20px auto;
            max-width: 1200px; /* Restrict maximum width of the product area */
        }
        .product-card {
            background-color: white; /* White background for product cards */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            overflow: hidden;
            text-align: center;
            padding: 15px; /* Padding inside the product card */
            transition: transform 0.3s; /* Smooth transform effect */
        }
        .product-card:hover {
            transform: translateY(-5px); /* Slight lift on hover */
        }
        .product-card img {
            max-width: 100%; /* Ensure the image fits within the card */
            height: 150px; /* Set a consistent height for images */
            object-fit: cover; /* Maintain image aspect ratio and crop if necessary */
            border-bottom: 1px solid #ccc; /* Border between image and product info */
            padding-bottom: 10px;
            margin-bottom: 10px;
        }
        .product-name {
            font-size: 1.2em;
            font-weight: bold;
            color: #00796b;
            margin: 10px 0;
        }
        .product-price {
            color: #d32f2f; /* Price in red */
            font-size: 1.1em;
            margin-bottom: 10px;
        }
        .product-description {
            font-size: 0.9em;
            color: #546e7a;
            margin-bottom: 10px;
        }
        .actions {
            display: flex;
            justify-content: space-around;
            margin-top: 10px;
        }
        .actions a {
            padding: 8px 15px;
            background-color: #007bff; /* Bright blue buttons */
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .actions a:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .add-product {
            display: inline-block;
            margin: 20px 0;
            padding: 12px 25px;
            background-color: #007bff; /* Bright blue button */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .add-product:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .error-message {
            color: #d32f2f; /* Dark red for error messages */
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .search-container {
            display: flex;
            justify-content: center; /* Center the items horizontally */
            margin: 20px 0; /* Add margin above and below */
        }

        .search-input {
            padding: 8px;
            font-size: 1em; /* Set font size */
            border: 1px solid #ccc; /* Add a border */
            border-radius: 5px; /* Rounded corners */
        }

        .search-button {
            padding: 8px 15px;
            margin-left: 10px; /* Space between input and button */
            background-color: #007bff; /* Button color */
            color: white;
            border: none; /* Remove border */
            border-radius: 5px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s;
        }

        .search-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <h1>Product List</h1>
     <div class="search-container">
        <form method="get" action="${pageContext.request.contextPath}/productList">
            <input type="text" name="search" placeholder="Search products..." class="search-input" value="${param.search}" />
            <button type="submit" class="search-button">Search</button>
        </form>
    </div>

    <c:if test="${not empty errorMessage}">
        <div class="error-message">
            <p>${errorMessage}</p>
        </div>
    </c:if>

    <c:if test="${sessionScope.userRole eq 'seller'}">
        <a href="${pageContext.request.contextPath}/createProduct" class="add-product">Add New Product</a>
    </c:if>

    <div class="product-grid">
        <c:forEach var="product" items="${products}">
            <div class="product-card">
            <img src="${pageContext.request.contextPath}/${product.imageUrl}" alt="Image of ${product.name}" width="200"/>
                
                <div class="product-name">${product.name}</div>
                <div class="product-price">$${product.price}</div>
                <div class="product-description">${product.description}</div>
                <div class="actions">
                    <a href="${pageContext.request.contextPath}/productdetails?productId=${product.id}">View</a>
                   
                    
                   
                    <c:if test="${sessionScope.userRole eq 'seller'}">
                        <a href="${pageContext.request.contextPath}/editproducts?id=${product.id}">Edit</a>
                        <a href="${pageContext.request.contextPath}/deleteProduct?id=${product.id}" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                       
                    </c:if>
                </div>
            </div>
        </c:forEach>
                    <c:if test="${sessionScope.userRole eq 'seller'}">
                        
                            <a class="back-link" href="sellerDashboard.jsp">Go Back</a>
                    </c:if>
                    <c:if test="${sessionScope.userRole eq 'buyer'}">
                        
                            <a class="back-link" href="buyerDashboard.jsp">Go Back</a>
                    </c:if>

        <c:if test="${empty products}">
            <p>No products available.</p>
        </c:if>
    </div>
    
</body>
</html>
