
<%--User: Bishmi--%>
<%--Date: 1/22/2025--%>
<%--Time: 7.45 PM--%>
<%--To change this template use File | Settings | File Templates.--%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #ffffff;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
            /*margin-left: 100px;*/

            max-width: 800px;
            /*background-color: #ffffff;*/
            padding: 30px;
            border-radius: 10px;
            /*box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);*/
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff;
        }

        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            padding: 8px 22px;
            background-color: #007bff;
            border: none;
            text-align: right;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .productnew{
            display: flex;
            justify-content: space-around;
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
    </style>
</head>
<body>
<section class="productnew">
    <!-- Sidebar -->
    <div class="sidebar">
        <img src="Assest/janetlogo-removebg-preview.png" alt="Admin Logo" id="adminlogo">
        <a href="#">Home</a>
        <a href="#">Dashboard</a>
        <a href="#">Users</a>
        <a href="#">Products</a>
        <a href="#">Categories</a>
    </div>



    <div class="container">
        <h1>Add Product</h1>
        <a href="category-name" class="btn btn-primary  mb-4" role="button">Add New Product</a>
        <form action="product-new" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter product name" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="productDescription" class="form-label">Product Description</label>
                    <textarea class="form-control" id="productDescription" name="productDescription" rows="3" placeholder="Enter product description" required></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="productPrice" class="form-label">Product Price</label>
                    <input type="number" class="form-control" id="productPrice" name="productPrice" step="0.01" placeholder="Enter product price" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="productQuantity" class="form-label">Product Quantity</label>
                    <input type="number" class="form-control" id="productQuantity" name="productQuantity" placeholder="Enter product quantity" required>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="categorySelect" class="form-label">Select Category ID</label>
                    <select class="form-select" id="categorySelect" name="category_id" required>
                        <option value="">Select Category</option>
                        <%
                            List<Integer> categoryIds = (List<Integer>) request.getAttribute("categoryIds");
                            if (categoryIds != null && !categoryIds.isEmpty()) {
                                for (Integer categoryId : categoryIds) {
                        %>
                        <option value="<%= categoryId %>"><%= categoryId %></option>
                        <%
                            }
                        } else {
                        %>
                        <option value="" disabled>No categories available</option>
                        <%
                            }
                        %>
                        %>
                    </select>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="productImage" class="form-label">Product Image</label>
                    <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
                </div>
            </div>
            <button type="submit" name="action" value="save" class="btn btn-primary ">Save</button>
        </form>
    </div>

</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>