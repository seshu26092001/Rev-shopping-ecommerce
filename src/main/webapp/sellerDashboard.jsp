<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #e9ecef; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            color: #007bff; /* Blue color for heading */
            text-align: center;
            margin-bottom: 20px;
        }
        .tab {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            max-width: 400px;
        }
        .tab a {
            margin: 10px 0;
            padding: 10px 20px;
            background-color: #FF69B4; /* Changed button color to Pink */
            color: white;
            border-radius: 5px;
            text-decoration: none;
            width: 100%; /* Full width button */
            text-align: center;
        }
        .tab a:hover {
            background-color: #FF1493; /* Darker pink on hover */
        }
        .content {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
        }
        /* New styling for the right-aligned buttons */
        .right-buttons {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
            gap: 10px;
        }
        .right-buttons a {
            padding: 10px 20px;
            background-color: #FF69B4;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            width: auto; /* Adjust width for buttons */
        }
        .right-buttons a:hover {
            background-color: #FF1493; /* Darker pink on hover */
        }
    </style>
</head>
<body>
    <div>
        <div class="tab">
            <!-- Heading -->
            <h1>Seller Dashboard</h1> 
            
            <!-- Right-aligned buttons -->
            <div class="right-buttons">
                <a href="useraccount">Account</a>
                <a href="logout.jsp" class="button" aria-label="Logout" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
            </div>
            
            <!-- Other dashboard links -->
            <a href="createProduct">Product Management</a>
            <a href="orders">View Orders</a>
            <a href="sellerViewsReviews.jsp">View Reviews</a>
            
            <!-- Content -->
            <div class="content">
                <p>Welcome to your dashboard! Select an option above to manage your products.</p>
            </div>
        </div>
    </div>
</body>
</html>
