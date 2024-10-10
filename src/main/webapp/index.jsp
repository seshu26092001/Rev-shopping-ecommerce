<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>RevShop - Welcome</title>
    <meta name="description" content="RevShop, your one-stop e-commerce platform for buyers and sellers">
    <meta name="keywords" content="e-commerce, online shopping, buy, sell, RevShop">
    <meta name="author" content="RevShop Team">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4; /* Light background for contrast */
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        /* Navigation bar */
        header {
            background-color: #2c3e50; /* Darker color for the header */
            padding: 15px 0;
            position: sticky;
            top: 0;
            width: 100%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        nav ul {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            margin: 0 20px;
        }

        nav ul li a {
            color: #ecf0f1; /* Light color for the links */
            font-size: 18px;
            text-decoration: none;
            padding: 10px 15px;
            transition: background-color 0.3s, color 0.3s;
        }

        nav ul li a:hover {
            background-color: #3498db; /* Blue color on hover */
            color: white; /* Change text color on hover */
            border-radius: 5px;
        }

        /* Welcome section */
        main {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #34495e; /* Dark grey for text */
            text-align: center;
            padding: 20px;
        }

        main h1 {
            font-size: 54px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        main p {
            font-size: 22px;
            max-width: 600px;
            line-height: 1.5;
            padding: 0 10px; /* Add padding for better spacing */
        }

        /* Footer */
        footer {
            background-color: #2c3e50; /* Matching footer with header */
            padding: 10px;
            text-align: center;
            color: #ecf0f1; /* Light color for footer text */
            font-size: 14px;
        }

        .button {
            display: inline-block;
            padding: 12px 25px;
            margin: 10px 0;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button-side {
            margin: 0 10px; /* Space between buttons */
        }

    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
            </ul>
        </nav>
    </header>
    
    <main>
        <div class="container">
            <h1>Welcome to RevShop</h1>
            <p>Your ultimate destination for exploring fantastic products at unbeatable prices. Start shopping today!</p>
            <c:choose>
                <c:when test="${not empty sessionScope.loggedInUser}">
                    <h2>Welcome back, ${sessionScope.loggedInUser}!</h2>
                    <p>You are logged in as <strong>${sessionScope.userRole}</strong></p>

                    <c:choose>
                        <c:when test="${sessionScope.userRole == 'buyer'}">
                            <button onclick="window.location.href='productList.jsp'" class="button">View Products</button>
                            <button onclick="window.location.href='cart.jsp'" class="button">View Cart</button>
                            <button onclick="window.location.href='orderHistory.jsp'" class="button">Order History</button>
                        </c:when>
                        <c:when test="${sessionScope.userRole == 'seller'}">
                            <button onclick="window.location.href='createProduct.jsp'" class="button">Add Product</button>
                            <button onclick="window.location.href='sellerDashboard.jsp'" class="button">Manage Inventory</button>
                            <button onclick="window.location.href='orders.jsp'" class="button">View Orders</button>
                        </c:when>
                    </c:choose>
                    <button onclick="window.location.href='logout.jsp'" class="button">Logout</button>
                </c:when>
                <c:otherwise>
                    
                </c:otherwise>
            </c:choose>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 RevShop. All rights reserved.</p>
    </footer>
</body>
</html>
