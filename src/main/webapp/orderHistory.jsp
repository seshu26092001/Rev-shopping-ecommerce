<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order History</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            background-color: #e7f3fe;
            border: 1px solid #bee3f8;
            border-radius: 4px;
            margin: 5px 0;
            padding: 10px;
            color: #31708f;
        }

        .no-orders {
            text-align: center;
            color: #d9534f;
            font-weight: bold;
            padding: 20px;
        }

        @media (max-width: 600px) {
            th, td {
                padding: 10px;
                font-size: 14px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
<h1>Your Order History</h1>
<c:if test="${not empty orders}">
    <table>
        <tr>
            <th>Order ID</th>
            <th>Order Date</th>
            <th>Total Amount</th>
            <th>Products</th>
        </tr>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.id}</td>
                <td>${order.orderDate}</td>
                <td>${order.totalAmount}</td>
                <td>
                    <ul>
                        <c:forEach var="product" items="${order.products}">
                            <li>${product.name} (Qty: ${product.quantity})</li>
                        </c:forEach>
                    </ul>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty orders}">
    <p class="no-orders">You have no orders in your history.</p>
</c:if>
</body>
</html>
