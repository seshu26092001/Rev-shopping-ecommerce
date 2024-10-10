<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller's Product Reviews</title>
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center; /* Centers the form horizontally */
            justify-content: flex-start; /* Aligns items towards the top */
            height: 100vh; /* Full height */
        }
        h1 {
            margin-top: 40px;
            color: #333;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
        ul {
            list-style-type: none;
            padding: 0;
            max-width: 600px;
            width: 100%;
        }
        li {
            background-color: #fff;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        strong {
            color: #333;
        }
        hr {
            border: none;
            height: 1px;
            background-color: #ccc;
        }
    </style>
</head>
<body>

    <h1>View Product Reviews</h1>

    <form action="${pageContext.request.contextPath}/sellerViews" method="get">
        <label for="productId">Product ID:</label>
        <input type="text" id="productId" name="productId" required>
        <button type="submit">View Reviews</button>
    </form>

    <c:if test="${not empty review}">
        <h2>Reviews for Product <%= request.getAttribute("productId") %></h2>
        <ul>
            <c:forEach var="review" items="${review}">
                <li>
                    <strong>User ID:</strong> ${review.userId} <br>
                    <strong>Rating:</strong> ${review.rating} <br>
                    <strong>Comment:</strong> ${review.comment} <br>
                    <hr>
                </li>
            </c:forEach>
        </ul>
    </c:if>

</body>
</html>
