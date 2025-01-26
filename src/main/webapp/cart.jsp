<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Janet Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet"> <!-- Font Awesome -->
    <link rel="stylesheet" href="index.css">

    <style>
        .add-to-cart1 {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: white;
            color: #6cad61;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            border: none !important;
            justify-content: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }
        .image-card {
            border: 1px solid #6cad61;
            margin: 10px; /* Adds margin around each card */
            padding: 10px; /* Adds padding inside the card */
            border-radius: 8px; /* Optional rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adds a shadow for a sleek look */
        }

        .image-card img {
            width: 100%;
            height: auto;
            border-radius: 5px; /* Optional: rounded corners for images */
        }

        .image-card:hover {
            transform: translateY(-10px); /* Slight lift effect */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Increased shadow */
        }

        .image-card:hover img {
            transform: scale(1.1); /* Zoom-in effect */
        }

        #shopbtn {
            margin-bottom: 30px;
            border: none;
        }

        #shopbtn1 {
            margin-bottom: 30px;
            border: none;
        }

        /* Modern Styling Below Navbar */
        .hero {
            background-color: #f0f4f8;
            padding: 80px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
            color: #333;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.25rem;
            color: #666;
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .hero .btn {
            font-size: 1.1rem;
            padding: 15px 30px;
            border-radius: 50px;
            transition: all 0.3s ease;
        }

        .btn-custom {
            font-weight: 600;
            text-transform: uppercase;
        }

        .btn-custom-primary {
            background-color: #6cad61;
            color: white;
            border: none;
        }

        .btn-custom-outline {
            border: 2px solid #6cad61;
            color: #6cad61;
            background-color: transparent;
        }

        .btn-custom-primary:hover, .btn-custom-outline:hover {
            background-color: #5a9c52;
            color: white;
        }

        .btn-custom-outline:hover {
            border-color: #5a9c52;
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
            <a href=""><i class="bi bi-search"></i></a>
            <a href="admin-login.jsp" class="icon-link">
                <i class="bi bi-person-fill"></i>
            </a>
            <i class="bi bi-cart"></i>
        </div>
    </div>
</div>

<hr class="hr">

<!-- Navbar Section -->
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

<!-- Hero Section -->
<section class="hero">
    <h1>Janet Ayurveda</h1>
    <p>Discover incredible products and exclusive deals tailored just for you!</p>
    <div>
        <a href="signup.jsp" class="btn btn-custom btn-custom-primary me-2">Sign Up Now</a>
        <a href="signin.jsp" class="btn btn-custom btn-custom-outline">Sign In</a>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
