<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
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

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            background-color: #f5f5f5;
        }

        .form-card {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .form-card h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: 600;
        }

        .form-card input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        .form-card button {
            width: 100%;
            padding: 12px;
            background-color: #6cad61;
            color: white;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-card button:hover {
            background-color: #5b9b55;
        }

        .form-note {
            font-size: 12px;
            color: #555;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<!-- Top Message -->
<p class="upperBoarder">We offer Island-wide delivery</p>

<!-- Header Section -->
<div class="container">
    <div class="row align-items-center header-row">
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

<!-- Sign In Form Section -->
<div class="form-container">
    <div class="form-card">
        <h2>Sign In</h2>
        <!-- Display error message -->
        <c:if test="${not empty errorMessage}">
            <p class="error-message">${errorMessage}</p>
        </c:if>
        <form action="check-out.jsp">
            <!-- Email or Phone Field -->
            <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required>

            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-success">Sign In</button>
        </form>

        <!-- Create Account -->
        <p class="form-note">
            <strong>New to us?</strong> <a href="signup.jsp" style="color: #6cad61">Create your account</a>
        </p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
