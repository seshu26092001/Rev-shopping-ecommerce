<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Buyer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body { 
            background-color: #eaf0f8; /* Light blue background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            color: #333; 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }
        h1 { 
            text-align: center; 
            color: #2c3e50; 
            font-size: 2em;
        }
        .container { 
            padding: 30px; 
            max-width: 600px; 
            background-color: #ffffff; 
            border-radius: 15px; 
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); 
            text-align: center;
        }
        .button { 
            display: inline-block; 
            margin: 10px; 
            padding: 12px 25px; 
            background-color: #3498db; /* Vibrant blue button */
            color: white; 
            text-decoration: none; 
            border-radius: 8px; 
            transition: background-color 0.3s, transform 0.2s; 
            width: calc(50% - 20px); 
            text-align: center; 
            font-size: 1.1em;
        }
        .button:hover { 
            background-color: #2980b9; /* Darker blue on hover */
            transform: scale(1.05);
        }
        img { 
            max-width: 100px; 
            display: block; 
            margin: 0 auto 20px auto; 
        }

        @media (max-width: 600px) {
            .button {
                width: 100%; /* Full width on mobile */
            }
        }
    </style>
</head>
<body>
<div class="container">
    <img src="images/logo1.png" alt="Your Logo"/>
    <h1>Welcome To Buyer Dashboard ${sessionScope.username}</h1> <!-- Displaying the user's email -->
     <!-- Right-aligned buttons -->
            <div class="right-buttons">
                <a href="${pageContext.request.contextPath}/useraccount" class="button" aria-label="Account"><i class="fas fa-user"></i> Account</a>
                
            </div>
    <a href="${pageContext.request.contextPath}/productList" class="button" aria-label="View Product Details"><i class="fas fa-info-circle"></i> View Products</a>
    <a href="${pageContext.request.contextPath}/productdetails?productId=${product.id}" class="button" aria-label="View Product Details"><i class="fas fa-info-circle"></i> Product Details</a>
    <a href="${pageContext.request.contextPath}/cart" class="button" aria-label="View Cart"><i class="fas fa-shopping-cart"></i> View Cart</a>
    <a href="${pageContext.request.contextPath}/checkout" class="button" aria-label="Checkout"><i class="fas fa-credit-card"></i> Checkout</a>
    <a href="${pageContext.request.contextPath}/history" class="button" aria-label="View Order History"><i class="fas fa-history"></i> Order History</a>
    <a href="logout.jsp" class="button" aria-label="Logout" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
</div>
</body>
</html>
