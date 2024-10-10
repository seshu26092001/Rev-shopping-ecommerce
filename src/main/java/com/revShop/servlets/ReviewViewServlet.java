package com.revShop.servlets;

import com.revShop.dao.ReviewDAO;
import com.revShop.models.Review;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/sellerViews") // URL pattern to access this servlet
public class ReviewViewServlet extends HttpServlet {
    private ReviewDAO reviewDAO;

    @Override
    public void init() {
        reviewDAO = new ReviewDAO(); // Initialize ReviewDAO to interact with the database
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the productId parameter from the request
        String productIdParam = request.getParameter("productId");

        // Check if productId parameter is provided
        if (productIdParam == null || productIdParam.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing product ID");
            return;
        }

        try {
            // Convert productId from String to integer
            int productId = Integer.parseInt(productIdParam);

            // Fetch the list of reviews for the given product
            List<Review> reviewList = reviewDAO.getReviewsForProduct(productId);

            // Set the reviews and productId as request attributes to pass to JSP
            request.setAttribute("review", reviewList);
            request.setAttribute("productId", productId);

            // Forward the request to the sellerViewReviews.jsp page for display
            request.getRequestDispatcher("/sellerViewsReviews.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            // Handle invalid productId (non-numeric values)
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID format");
        } catch (Exception e) {
            // Handle any unexpected errors
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing the request");
            e.printStackTrace(); // Log the error details
        }
    }
}
