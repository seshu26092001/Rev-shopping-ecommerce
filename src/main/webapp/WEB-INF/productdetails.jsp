<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Modern font */
            background-color: #f0f4f8; /* Light gray background color */
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #2c3e50; /* Darker text color for headings */
        }
        .product-details, .reviews, .review-form {
            background-color: rgba(255, 255, 255, 0.95); /* Slightly opaque white */
            border-radius: 10px; /* More rounded corners */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Stronger shadow */
            padding: 30px; /* Increased padding */
            margin-bottom: 20px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 15px; /* Increased space between reviews */
            padding: 15px; /* Increased padding */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 8px; /* Rounded corners */
            background-color: #fafafa; /* Light background for reviews */
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold; /* Bold labels */
        }
        input[type="text"], input[type="number"], textarea {
            width: 100%;
            padding: 12px; /* Increased padding for inputs */
            margin-bottom: 15px; /* Increased margin */
            border: 1px solid #bbb; /* Slightly darker border */
            border-radius: 8px; /* Rounded corners */
            box-sizing: border-box; /* Box sizing to include padding */
        }
        input[type="submit"] {
            background-color: #3498db; /* Bright blue button */
            color: white;
            border: none;
            padding: 12px; /* Increased padding */
            border-radius: 8px; /* Rounded corners */
            cursor: pointer;
            font-size: 1em; /* Increased font size */
        }
        input[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }
        .back-link {
            display: block;
            margin: 20px auto;
            text-align: center;
            max-width: 800px;
            font-weight: bold; /* Bold back link */
        }
        .back-link a {
            color: #2c3e50; /* Dark text for link */
            text-decoration: none; /* No underline */
        }
        .back-link a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <c:choose>
        <c:when test="${not empty product}">
            <div class="product-details">
                <h1>${product.name}</h1>
                <p><strong>Price:</strong> $${product.price}</p>
                <p><strong>Description:</strong> ${product.description}</p>
                <c:if test="${not empty product.imageUrl}">
                    <img src="${pageContext.request.contextPath}/${product.imageUrl}" alt="${product.name}" width="200"/>
                </c:if>
            </div>

            <div class="reviews">
                <h2>Reviews</h2>
                <c:if test="${not empty reviews}">
                    <ul>
                        <c:forEach var="review" items="${reviews}">
                            <li>
                                <strong>Rating:</strong> ${review.rating}/5<br>
                                <p>${review.comment}</p>
                            </li>
                        </c:forEach>
                    </ul>
                </c:if>
                <c:if test="${empty reviews}">
                    <p>No reviews yet.</p>
                </c:if>
            </div>

            <div class="review-form">
                <h2>Add a Review</h2>
                <form action="${pageContext.request.contextPath}/reviewsss" method="post">
                    <label for="rating">Rating (1-5):</label>
                    <input type="number" id="rating" name="rating" min="1" max="5" required>

                    <label for="comment">Comment:</label>
                    <textarea id="comment" name="comment" rows="4" required></textarea>

                    <input type="hidden" name="productId" value="${product.id}">
                    <input type="submit" value="Submit Review">
                </form>
            </div>
        </c:when>
        <c:otherwise>
            <div class="product-details">
                <h2>Product not found.</h2>
            </div>
        </c:otherwise>
    </c:choose>

    <div class="back-link">
        <a href="${pageContext.request.contextPath}/productList">Back to Product List</a>
    </div>
</body>
</html>
