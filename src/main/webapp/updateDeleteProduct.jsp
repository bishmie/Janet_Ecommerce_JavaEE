<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update/Delete Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
            max-width: 900px;
            padding: 30px;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary, .btn-danger {
            padding: 8px 20px;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-danger:hover {
            background-color: #b30000;
        }
        .search-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        #loadButton {
            background-color: #28a745;
            color: white;
            border: none;
        }
        #loadButton:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Update or Delete Product</h1>

    <!-- Search Box -->
    <div class="search-box">
        <input type="text" class="form-control" id="searchProductName" placeholder="Enter product name to search">
        <a href="category-name" class="btn btn-primary  mb-4" role="button">Load</a>

<%--        <button id="loadButton" class="btn btn-success ms-2">Load</button>--%>
    </div>

    <form action="product-action" method="post" enctype="multipart/form-data">
        <!-- Product Details Section -->
        <div class="row">
            <div class="col-md-12 mb-3 text-center">
                <img src="<%= request.getAttribute("productImagePath") != null ? request.getAttribute("productImagePath") : "default-image.png" %>"
                     alt="Product Image" class="img-fluid" style="max-width: 200px; border: 1px solid #ccc; border-radius: 5px;">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="productName" name="productName"
                       value="<%= request.getAttribute("productName") != null ? request.getAttribute("productName") : "" %>" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="productDescription" class="form-label">Product Description</label>
                <textarea class="form-control" id="productDescription" name="productDescription" rows="3" required>
                    <%= request.getAttribute("productDescription") != null ? request.getAttribute("productDescription") : "" %>
                </textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="productPrice" class="form-label">Product Price</label>
                <input type="number" class="form-control" id="productPrice" name="productPrice" step="0.01"
                       value="<%= request.getAttribute("productPrice") != null ? request.getAttribute("productPrice") : "" %>" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="productQuantity" class="form-label">Product Quantity</label>
                <input type="number" class="form-control" id="productQuantity" name="productQuantity"
                       value="<%= request.getAttribute("productQuantity") != null ? request.getAttribute("productQuantity") : "" %>" required>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="categorySelect" class="form-label">Select Category ID</label>
                <select class="form-select" id="categorySelect" name="category_id" required>
                    <option value="">Select Category</option>
                    <%
                        List<Integer> categoryIds = (List<Integer>) request.getAttribute("categoryIds");
                        Integer currentCategoryId = (Integer) request.getAttribute("category_id");
                        if (categoryIds != null && !categoryIds.isEmpty()) {
                            for (Integer categoryId : categoryIds) {
                    %>
                    <option value="<%= categoryId %>" <%= (categoryId.equals(currentCategoryId) ? "selected" : "") %>>
                        <%= categoryId %>
                    </option>
                    <%
                        }
                    } else {
                    %>
                    <option value="" disabled>No categories available</option>
                    <%
                        }
                    %>
                </select>
            </div>
            <div class="col-md-6 mb-3">
                <label for="productImage" class="form-label">Update Product Image</label>
                <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*">
            </div>
        </div>
        <button type="submit" name="action" value="update" class="btn btn-primary">Update</button>
        <button type="submit" name="action" value="delete" class="btn btn-danger">Delete</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById('searchProductName').addEventListener('keydown', function (event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            const productName = this.value.trim();
            if (productName) {
                window.location.href = `product-action?action=search&productName=${productName}`;
            }
        }
    });
    document.getElementById('loadButton').addEventListener('click', function () {
        window.location.reload();
    });
</script>
</body>
</html>
