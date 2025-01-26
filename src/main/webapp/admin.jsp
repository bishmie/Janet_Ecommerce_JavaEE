<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
        }

        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #343a40;
            color: #fff;
            padding: 20px 10px;
        }

        .sidebar img {
            display: block;
            width: 120px;
            height: auto;
            margin: 0 auto 20px auto;
        }

        .sidebar h3 {
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar a {
            text-decoration: none;
            display: block;
            color: #fff;
            padding: 12px 20px;
            margin-bottom: 5px;
            border-radius: 4px;
        }

        .sidebar a:hover {
            background-color: #495057;
        }

        .content {
            margin-left: 270px;
            padding: 20px;
        }

        .content h1 {
            font-size: 28px;
            color: #343a40;
            margin-bottom: 20px;
        }

        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .card {
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
        }

        .card i {
            font-size: 40px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .card h5 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .card a {
            text-decoration: none;
            color: #007bff;
            font-size: 14px;
        }

        .card a:hover {
            color: #0056b3;
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

<!-- Content -->
<div class="content">
    <h1>Welcome, Admin</h1>
    <div class="dashboard-cards">
        <!-- Card: View Products -->
        <div class="card">
            <i class="bi bi-box-seam"></i>
            <h5>Products</h5>
            <a href="product-list" style="color: #6cad61">View Products</a> | <a href="product.jsp">Add Products</a>
        </div>

        <!-- Card: View Users -->
        <div class="card">
            <i class="bi bi-people"></i>
            <h5>Users</h5>
            <a href="user-list">View Users</a> | <a href="admin-register.jsp">Add Users</a>
        </div>

        <!-- Card: View Categories -->
        <div class="card">
            <i class="bi bi-list-ul"></i>
            <h5>Categories</h5>
            <a href="category-list">View Categories</a> | <a href="category.jsp">Add Categories</a>
        </div>

        <!-- Card: View Orders -->
        <div class="card">
            <i class="bi bi-receipt"></i>
            <h5>Orders</h5>
            <a href="view-orders.jsp">View Orders</a>
        </div>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
