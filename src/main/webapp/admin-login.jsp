<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Janet Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet"> <!-- Font Awesome -->
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .upperBoarder {
            background-color: #6cad61;
            padding: 10px 0;
            text-align: center;
            font-size: 14px;
            color: white;
        }

        #janetlogo {
            margin: 0;
        }

        .header-row {
            padding: 0 0;
        }

        .header-icons i {
            font-size: 20px;
            margin-left: 15px;
            color: #333;
        }

        .header-icons i:hover {
            color: #919191;
        }

        #navbarNav {
            display: flex;
            flex-direction: row;
            justify-content: center;
            background: white;
            margin-top: 1px;
        }

        #navbarNav li {
            margin-right: 20px;
        }

        #navbarNav li a {
            font-size: 14px;
            color: black;
        }

        #navbarNav li a:hover {
            color: #919191;
        }

        .navbar-expand-lg {
            background: white !important;
        }

        .hr {
            color: #919191;
        }

        /* Admin Registration Form Styling */
        .admin-register-form {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            background-color: #f5f5f5;
        }

        .admin-register-card {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .admin-register-card h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: 600;
        }

        .admin-register-card input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        .admin-register-card button {
            width: 100%;
            padding: 12px;
            background-color: #6cad61;
            color: white;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .admin-register-card button:hover {
            background-color: #5b9b55;
        }

        .acc-p{
            font-size: 14px;
            margin-top: 16px;
        }
        .regLink{
            color: #6cad61;
            font-size: 14px;
            margin-top: 16px;
        }
    </style>
</head>
<body>

<!-- Top Message -->
<p class="upperBoarder">We offer Island-wide delivery</p>

<!-- Header Section -->
<div class="container">
    <div class="row align-items-center header-row">
        <!-- Empty Column (Left Space) -->
        <div class="col"></div>

        <!-- Logo Centered -->
        <div class="col-auto">
            <img src="Assest/janetlogo.png" class="d-block mx-auto" id="janetlogo" alt="Janet Logo" style="max-height: 100px;">
        </div>

        <!-- Icons (Right-Aligned) -->
        <div class="col text-end header-icons">
            <a href="">   <i class="bi bi-search"></i></a>
            <a href="admin-login.jsp" class="icon-link">
                <i class="bi bi-person-fill"></i>
            </a>
            <i class="bi bi-cart"></i>
        </div>
    </div>
</div>

<hr class="hr">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shopAllProducts.jsp">Shop All Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.jsp">Browse Our Ranges</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.jsp">Shop Our Bundles</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product-list.jsp">FAQs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="updateDeleteProduct.jsp">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Admin Login Section -->
<div class="admin-register-form">
    <div class="admin-register-card">
        <h2>Login</h2>
        <form action="admin-login" method="get">
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
<%--            <div class="d-flex justify-content-between align-items-center mb-3">--%>
<%--                <a href="forgot-password.jsp" class="forgot-password">Forgot Password?</a>--%>
<%--            </div>--%>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
        <div class="register-link">
            <p class="acc-p">Don't have an account? <a href="admin-register.jsp" class="regLink">Register now</a></p>
        </div>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
