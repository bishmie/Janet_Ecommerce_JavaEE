package org.example.ecommercejavaee;


import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommercejavaee.entity.Product;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "/ProductServlet", value = "/product-servlet")
public class ProductServletold extends HttpServlet {


        @Resource(name = "java:comp/env/jdbc/pool")
        private DataSource dataSource;

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String action = req.getParameter("action");
            try {
                switch (action) {
                    case "add":
                        addProduct(req, resp);
                        break;
                    case "update":
                        updateProduct(req, resp);
                        break;
                    case "delete":
                        deleteProduct(req, resp);
                        break;
                    default:
                        resp.sendRedirect("product.jsp?error=Invalid action");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                resp.sendRedirect("product.jsp?error=Database error");
            }
        }

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            try (Connection connection = dataSource.getConnection()) {
                String sql = "SELECT * FROM products";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    ResultSet resultSet = preparedStatement.executeQuery();
                    List<Product> products = new ArrayList<>();
                    while (resultSet.next()) {
                        Product product = new Product();
                        product.setId(resultSet.getInt("product_id"));
                        product.setName(resultSet.getString("product_name"));
                        product.setDescription(resultSet.getString("description"));
                        product.setPrice(resultSet.getDouble("price"));
                        product.setQuantity(resultSet.getInt("quantity"));
                        product.setCategoryId(resultSet.getInt("category_id"));
                        products.add(product);
                    }
                    req.setAttribute("products", products);
                    req.getRequestDispatcher("/product.jsp").forward(req, resp);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                resp.sendRedirect("product.jsp?error=Database error");
            }
        }

        private void addProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
            String name = req.getParameter("product_name");
            String description = req.getParameter("product_description");
            double price = Double.parseDouble(req.getParameter("product_price"));
            int quantity = Integer.parseInt(req.getParameter("product_quantity"));
            int categoryId = Integer.parseInt(req.getParameter("category_id"));

            try (Connection connection = dataSource.getConnection()) {
                String sql = "INSERT INTO products (product_name, description, price, quantity, category_id) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, description);
                    preparedStatement.setDouble(3, price);
                    preparedStatement.setInt(4, quantity);
                    preparedStatement.setInt(5, categoryId);

                    int rowsAffected = preparedStatement.executeUpdate();
                    if (rowsAffected > 0) {
                        resp.sendRedirect("product-servlet?action=view&message=Product added successfully");
                    } else {
                        resp.sendRedirect("product.jsp?error=Failed to add product");
                    }
                }
            }
        }

        private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
            String id = req.getParameter("update_product_id");
            String name = req.getParameter("update_name");
            String description = req.getParameter("update_description");
            String price = req.getParameter("update_price");
            String quantity = req.getParameter("update_quantity");
            String categoryId = req.getParameter("update_category_id");

            try (Connection connection = dataSource.getConnection()) {
                String sql = "UPDATE products SET product_name=?, description=?, price=?, quantity=?, category_id=? WHERE product_id=?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, description);
                    preparedStatement.setDouble(3, Double.parseDouble(price));
                    preparedStatement.setInt(4, Integer.parseInt(quantity));
                    preparedStatement.setInt(5, Integer.parseInt(categoryId));
                    preparedStatement.setInt(6, Integer.parseInt(id));

                    int rowsAffected = preparedStatement.executeUpdate();
                    if (rowsAffected > 0) {
                        resp.sendRedirect("product.jsp?message=Product updated successfully");
                    } else {
                        resp.sendRedirect("product.jsp?error=Failed to update product");
                    }
                }
            }
        }

        private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
            String id = req.getParameter("product_id");

            try (Connection connection = dataSource.getConnection()) {
                String sql = "DELETE FROM products WHERE product_id=?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setInt(1, Integer.parseInt(id));

                    int rowsAffected = preparedStatement.executeUpdate();
                    if (rowsAffected > 0) {
                        resp.sendRedirect("product.jsp?message=Product deleted successfully");
                    } else {
                        resp.sendRedirect("product.jsp?error=Failed to delete product");
                    }
                }
            }
        }
    }

