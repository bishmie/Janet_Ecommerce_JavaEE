
<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommercejavaee.dto.ProductDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
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
        .productList{
            display: flex;
             justify-content: space-around;
        }

        .container {
            max-width: 900px;
            margin-top: 40px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 30px;
        }

        .btn {
            border-radius: 30px;
            font-weight: 600;
            padding: 10px 20px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        table {
            border-collapse: collapse;
        }

        th {
            text-align: center;
        }

        .alert-warning {
            border-radius: 8px;
            font-size: 1rem;
            text-align: center;
        }

    </style>
</head>
<body>

<section class="productList">

    <!-- Sidebar -->
    <div class="sidebar">
        <img src="Assest/janetlogo-removebg-preview.png" alt="Admin Logo" id="adminlogo">
        <a href="#">Home</a>
        <a href="#">Dashboard</a>
        <a href="#">Customers</a>
        <a href="#">Products</a>
        <a href="#">Categories</a>
    </div>

<div class="container">


    <h1>Product Management</h1>

    <%
        List<ProductDTO> dataList = (List<ProductDTO>) request.getAttribute("productList");
        if (dataList != null && !dataList.isEmpty()) {
    %>
    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle">
            <thead class="table-dark">
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category ID</th>
            </tr>
            </thead>
            <tbody>
            <%
                for (ProductDTO productDTO : dataList) {
            %>
            <tr>
                <td class="text-center"><%= productDTO.getProduct_id() %></td>
                <td><%= productDTO.getProductName() %></td>
                <td><%= productDTO.getProductDescription() %></td>
                <td class="text-end">LKR <%= String.format("%.2f", productDTO.getProductPrice()) %></td>
                <td class="text-center"><%= productDTO.getProductQuantity() %></td>
                <td class="text-center"><%= productDTO.getCategory_id() %></td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
    <form action="product.jsp" class="text-center mt-4">
        <button type="submit" class="btn btn-primary"> Back</button>
    </form>
    <% } else { %>
    <div class="alert alert-warning mt-4" role="alert">
        No products available.
    </div>
    <% } %>

</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
