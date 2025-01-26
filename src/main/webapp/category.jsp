<%@ page import="org.example.ecommercejavaee.entity.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Categories</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .sidebar {
            height: 100vh;
            width: 200px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #333333;
            color: #fff;
            padding-top: 20px;
        }
        .sidebar img {
            display: block;
            width: 100px;
            height: 100px;
            margin: 0 auto 20px auto;
        }
        .sidebar a {
            text-decoration: none;
            display: block;
            color: #fff;
            padding: 10px 20px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 220px;
            padding: 20px;
        }
        .form-control {
            width: 300px;
        }
        .table-container {
            margin-top: 30px;
        }
        #adminlogo {
            width: 100px;
            height: 100px;
            margin-left: 40px;
        }
        #addbtn {
            padding: 7px 26px;
        }
    </style>
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <img src="Assest/janetlogo-removebg-preview.png" alt="Admin Logo" id="adminlogo">
    <a href="admin.jsp">Home</a>
    <a href="admin.jsp">Dashboard</a>
    <a href="user-list.jsp">Users</a>
    <a href="product.jsp">Products</a>
    <a href="category.jsp">Categories</a>
</div>

<!-- Main Content -->
<div class="content">
    <h2>Manage Categories</h2>

    <!-- Add Category Form -->
    <form action="category-servlet" method="post" class="mt-4">
        <input type="hidden" name="action" value="add">
<%--        <div class="mb-3">--%>
<%--            <label for="categoryId" class="form-label">Category ID</label>--%>
<%--            <input type="text" class="form-control" id="categoryId" name="category_id" readonly>--%>
<%--        </div>--%>
        <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" name="category_name" required>
        </div>
        <div class="mb-3">
            <label for="categoryDescription" class="form-label">Category Description</label>
            <input type="text" class="form-control" id="categoryDescription" name="category_description" required>
        </div>
        <button type="submit" class="btn btn-primary" id="addbtn">Add Category</button>
    </form>

    <!-- Message Display -->
    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
        if (message != null) {
    %>
    <div class="alert alert-success mt-3"><%= message %></div>
    <% } else if (error != null) { %>
    <div class="alert alert-danger mt-3"><%= error %></div>
    <% } %>

    <!-- Categories Table -->
    <h3 class="mt-5">Category List</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            if (categories != null) {
                for (Category category : categories) {
        %>
        <tr>
            <td><%= category.getCategoryId() %></td>
            <td><%= category.getCategoryName() %></td>
            <td><%= category.getDescription() %></td>
            <td>
                <!-- Update Button -->
                <form action="category-servlet" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="update_category_id" value="<%= category.getCategoryId() %>">
                    <input type="hidden" name="update_name" value="<%= category.getCategoryName() %>">
                    <input type="hidden" name="update_description" value="<%= category.getDescription() %>">
                    <button type="submit" class="btn btn-warning btn-sm">Update</button>
                </form>

                <!-- Delete Button -->
                <form action="category-servlet" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="category_id" value="<%= category.getCategoryId() %>">
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
        <%
                }
            }
        %>

        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Function to fill input fields when a row is selected
    function fillFields(row) {
        var categoryId = row.cells[0].innerText;  // 1st column: category ID
        var categoryName = row.cells[1].innerText;  // 2nd column: category name
        var categoryDescription = row.cells[2].innerText;  // 3rd column: description

        document.getElementById("categoryId").value = categoryId;  // Set category ID
        document.getElementById("categoryName").value = categoryName;
        document.getElementById("categoryDescription").value = categoryDescription;
    }

    // Add event listener to table rows
    document.querySelectorAll('table tbody tr').forEach(function(row) {
        row.addEventListener('click', function() {
            fillFields(this);  // Call fillFields function when a row is clicked
        });
    });
</script>

</body>
</html>
