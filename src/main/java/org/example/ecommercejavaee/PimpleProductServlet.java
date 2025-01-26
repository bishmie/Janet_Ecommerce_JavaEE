package org.example.ecommercejavaee;



import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommercejavaee.dto.ProductDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PimpleServlet", value = "/pimple-products")
public class PimpleProductServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // List to store all products
        List<ProductDTO> productList4 = new ArrayList<>();

        // Query to fetch all products
        String query = "SELECT  product_name, product_description, product_price, product_quantity, category_id, image_path FROM products WHERE category_id = 4";

        try (Connection connection = dataSource.getConnection();
             PreparedStatement pst = connection.prepareStatement(query);
             ResultSet rs = pst.executeQuery()) {

            // Iterate through the result set and populate the product list
            while (rs.next()) {
                ProductDTO product2 = new ProductDTO();
                product2.setProductName(rs.getString("product_name"));
                product2.setProductDescription(rs.getString("product_description"));
                product2.setProductPrice(rs.getDouble("product_price"));
                product2.setProductQuantity(rs.getInt("product_quantity"));
                product2.setCategory_id(rs.getInt("category_id"));
                product2.setImage_path(rs.getString("image_path"));

                productList4.add(product2);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to fetch products.");
            return;
        }

        // Set the product list as a request attribute
        request.setAttribute("productList4", productList4);

        // Forward to JSP page for rendering
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }



}
