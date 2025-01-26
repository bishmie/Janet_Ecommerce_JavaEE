<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommercejavaee.dto.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-left: 220px; /* Adjust to add space between the table and sidebar */
        }
        h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-back {
            background-color: #6c757d;
            border: none;
            font-weight: bold;
        }
        .btn-back:hover {
            background-color: #5a6268;
        }
        .table-striped tbody tr:hover {
            background-color: #f2f2f2;
        }
        .alert-warning {
            text-align: center;
            font-size: 1.1rem;
        }
        .btn-wrapper {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }
        .productList {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
        }

        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .sidebar {
            height: 100vh;
            width: 220px;
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
    </style>
</head>
<body>
<section class="productList">

    <!-- Sidebar -->
    <div class="sidebar">
        <img src="Assest/janetlogo-removebg-preview.png" alt="Admin Logo" id="adminlogo">
        <a href="admin.jsp">Home</a>
        <a href="admin.jsp">Dashboard</a>
        <a href="user-list.jsp">Users</a>
        <a href="product.jsp">Products</a>
        <a href="category.jsp">Categories</a>
    </div>

    <div class="container">

        <h1 style="color: #6cad61; text-align: left;font-size: 27px">User Management</h1>
        <%
            List<UserDTO> dataList = (List<UserDTO>) request.getAttribute("userList");
            if (dataList != null && !dataList.isEmpty()) {
        %>
        <div class="table-responsive">
            <table class="table table-bordered table-striped text-center">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Role</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <%
                    for (UserDTO userDTO : dataList) {
                %>
                <tr>
                    <td><%= userDTO.getUserId() %></td>
                    <td><%= userDTO.getUserName() %></td>
                    <td><%= userDTO.getEmail() %></td>
                    <td><%= userDTO.getPhone() %></td>
                    <td><%= userDTO.getAddress() %></td>
                    <td><%= userDTO.getRole() %></td>
                    <td><%= userDTO.getStatus() %></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
        <% } else { %>
        <div class="alert alert-warning mt-4">
            No users available.
        </div>
        <% } %>
    </div>
</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
