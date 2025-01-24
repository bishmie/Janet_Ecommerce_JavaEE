package org.example.ecommercejavaee;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommercejavaee.entity.Category;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/category-servlet")
public class CategoryServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

//    private List<Category> categories = new ArrayList<>();
//    @Override
//    public void init(ServletConfig config) throws ServletException {
//        super.init(config);
//
//        // Database credentials
//        String url = "jdbc:mysql://localhost:3306/e_commerce";
//        String user = "root";
//        String password = "bishmi123#";
//
//        try {
//            // Establish connection with the database
//            Connection connection = DriverManager.getConnection(url, user, password);
//
//            // SQL query to fetch all categories
//            String query = "SELECT * FROM categories";
//            Statement statement = connection.createStatement();
//            ResultSet resultSet = statement.executeQuery(query);
//
//            // Loop through resultSet and populate categories list
//            while (resultSet.next()) {
//                int id = resultSet.getInt("category_id");
//                String name = resultSet.getString("category_name");
//                String description = resultSet.getString("description");
//                Category category = new Category(id, name, description);
//                categories.add(category);
//            }
//
//            // Store categories in ServletContext so it can be accessed globally
//            ServletContext context = getServletContext();
//            context.setAttribute("categories", categories);
//
//            // Close connections
//            resultSet.close();
//            statement.close();
//            connection.close();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
            switch (action) {
                case "add":
                    addCategory(req, resp);
                    break;
                case "update":
                    updateCategory(req, resp);
                    break;
                case "delete":
                    deleteCategory(req, resp);
                    break;
                default:
                    resp.sendRedirect("category.jsp?error=Invalid action");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("category.jsp?error=Database error");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (Connection connection = dataSource.getConnection()) {
            String sql = "SELECT * FROM categories";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                ResultSet resultSet = preparedStatement.executeQuery();
                List<Category> categories = new ArrayList<>();
                while (resultSet.next()) {
                    Category category = new Category();
                    category.setCategoryId(resultSet.getInt("category_id"));
                    category.setCategoryName(resultSet.getString("category_name"));
                    category.setDescription(resultSet.getString("description"));
                    categories.add(category);
                }
                // Set categories as request attribute for the JSP to access
                req.setAttribute("categories", categories);
                req.getRequestDispatcher("/category.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("category.jsp?error=Database error");
        }
    }

    private void addCategory(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        String name = req.getParameter("category_name");
        String description = req.getParameter("category_description");

        try (Connection connection = dataSource.getConnection()) {
            String sql = "INSERT INTO categories (category_name, description) VALUES (?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, description);

                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    // Fetch updated categories after insert
                    List<Category> categories = getCategories();
                    req.setAttribute("categories", categories);
                    req.setAttribute("message", "Category added successfully");
                    req.getRequestDispatcher("/category.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect("category.jsp?error=Failed to add category");
                }
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private List<Category> getCategories() throws SQLException {
        List<Category> categories = new ArrayList<>();
        try (Connection connection = dataSource.getConnection()) {
            String sql = "SELECT * FROM categories";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    Category category = new Category();
                    category.setCategoryId(resultSet.getInt("category_id"));
                    category.setCategoryName(resultSet.getString("category_name"));
                    category.setDescription(resultSet.getString("description"));
                    categories.add(category);
                }
            }
        }
        return categories;
    }


    private void updateCategory(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        String id = req.getParameter("update_category_id");
        String name = req.getParameter("update_name");
        String description = req.getParameter("update_description");

        try (Connection connection = dataSource.getConnection()) {
            String sql = "UPDATE categories SET category_name=?, description=? WHERE category_id=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, description);
                preparedStatement.setInt(3, Integer.parseInt(id));

                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    resp.sendRedirect("category.jsp?message=Category updated successfully");
                } else {
                    resp.sendRedirect("category.jsp?error=Failed to update category");
                }
            }
        }
    }

    private void deleteCategory(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        String id = req.getParameter("category_id");

        try (Connection connection = dataSource.getConnection()) {
            String sql = "DELETE FROM categories WHERE category_id=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, Integer.parseInt(id));

                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    resp.sendRedirect("category.jsp?message=Category deleted successfully");

                } else {
                    resp.sendRedirect("category.jsp?error=Failed to delete category");
                }
            }
        }
    }


}
