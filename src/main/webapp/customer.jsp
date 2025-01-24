<%--
  Created by IntelliJ IDEA.
  User: Bishmi
  Date: 1/22/2025
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Page</title>
    <!-- Bootstrap CSS -->
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
            width: 100%;
        }
        .table-container {
            margin-top: 30px;
        }
        #adminlogo{
            width: 100px;
            height: 100px;
            margin-left: 40px;
        }

        #addbtn{
            padding: 7px 26px;
        }
    </style>
</head>
<body>
<div class="sidebar">
    <img src="Assest/janetlogo-removebg-preview.png" alt="Janet Logo" id="adminlogo">
    <a href="#">Home</a>
    <a href="#">Dashboard</a>
    <a href="#">Customers</a>
    <a href="#">Products</a>
    <a href="#">Orders</a>
</div>

<div class="content">
    <h2>Manage Customers</h2>
    <form class="mt-4">
        <div class="row">
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="customerId" class="form-label">Customer ID</label>
                    <input type="text" class="form-control" id="customerId" placeholder="Auto-generated ID" readonly>
                </div>
            </div>
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="customerName" class="form-label">Customer Name</label>
                    <input type="text" class="form-control" id="customerName" placeholder="Enter customer name">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="customerAddress" class="form-label">Address</label>
                    <textarea class="form-control" id="customerAddress" rows="3" placeholder="Enter address"></textarea>
                </div>
            </div>
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="customerContact" class="form-label">Contact</label>
                    <input type="text" class="form-control" id="customerContact" placeholder="Enter contact number">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5">
                <div class="mb-3">
                    <label for="customerEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="customerEmail" placeholder="Enter email address">
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary mt-2" id="addbtn">Add Customer</button>
    </form>

    <div class="table-container">
        <h3>Customer List</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>John Doe</td>
                <td>123 Main St, City</td>
                <td>(123) 456-7890</td>
                <td>johndoe@example.com</td>
                <td>
                    <button class="btn btn-warning btn-sm">Update</button>
                    <button class="btn btn-danger btn-sm">Delete</button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Jane Smith</td>
                <td>456 Oak Rd, Town</td>
                <td>(987) 654-3210</td>
                <td>janesmith@example.com</td>
                <td>
                    <button class="btn btn-warning btn-sm">Update</button>
                    <button class="btn btn-danger btn-sm">Delete</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
