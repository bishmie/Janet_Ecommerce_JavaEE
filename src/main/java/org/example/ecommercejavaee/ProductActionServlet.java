package org.example.ecommercejavaee;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


import javax.sql.DataSource;
import java.io.*;
import java.nio.file.Paths;
import java.sql.*;
import java.util.*;

@WebServlet(name = "/productAction" , value = "/product-action")
public class ProductActionServlet extends HttpServlet {


    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String productPriceStr = request.getParameter("productPrice");
        String productQuantityStr = request.getParameter("productQuantity");
        String categoryIdStr = request.getParameter("category_id");
        Part productImagePart = request.getPart("productImage");

        if (productName == null || productDescription == null || productPriceStr == null || productQuantityStr == null || categoryIdStr == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing required fields");
            return;
        }

        double productPrice = Double.parseDouble(productPriceStr);
        int productQuantity = Integer.parseInt(productQuantityStr);
        int categoryId = Integer.parseInt(categoryIdStr);

        try (Connection connection = dataSource.getConnection()) {
            if ("update".equals(action)) {
                // Update product details
                String sql = "UPDATE products SET name = ?, description = ?, price = ?, quantity = ?, category_id = ?, image_path = ? WHERE id = ?";
                try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                    stmt.setString(1, productName);
                    stmt.setString(2, productDescription);
                    stmt.setDouble(3, productPrice);
                    stmt.setInt(4, productQuantity);
                    stmt.setInt(5, categoryId);

                    // Handle product image upload
                    String imagePath = null;
                    if (productImagePart != null && productImagePart.getSize() > 0) {
                        String fileName = Paths.get(productImagePart.getSubmittedFileName()).getFileName().toString();
                        imagePath = "Assest/" + fileName; // Adjust your path accordingly
                        productImagePart.write(getServletContext().getRealPath("/") + imagePath);
                    }
                    stmt.setString(6, imagePath);

                    int productId = Integer.parseInt(request.getParameter("productId"));
                    stmt.setInt(7, productId);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        response.sendRedirect("product-list.jsp");
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                    }
                }
            } else if ("delete".equals(action)) {
                // Delete product
                String sql = "DELETE FROM products WHERE id = ?";
                try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                    int productId = Integer.parseInt(request.getParameter("productId"));
                    stmt.setInt(1, productId);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        response.sendRedirect("product-list.jsp");
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
        }
    }
}
