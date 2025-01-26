<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
        }

        .upperBoarder {
            background-color: #6cad61;
            padding: 10px 0;
            text-align: center;
            font-size: 14px;
            color: white;
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
            border: none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: bold;
        }

        .form-card button:hover {
            background-color: #5aa254;
        }

        .form-text {
            text-align: center;
            font-size: 12px;
            color: #555;
        }
    </style>
</head>
<body>
<!-- Top Message -->
<p class="upperBoarder">We offer Island-wide delivery</p>

<!-- Header -->
<div class="container">
    <div class="row align-items-center header-row">
        <div class="col text-start"></div>
        <div class="col-auto">
            <img src="Assest/janetlogo.png" id="janetlogo" alt="Janet Logo">
        </div>
        <div class="col text-end header-icons">
            <a href="#"><i class="bi bi-search"></i></a>
            <a href="admin-login.jsp"><i class="bi bi-person-fill"></i></a>
            <i class="bi bi-cart"></i>
        </div>
    </div>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="display: none">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="shopAllProducts.jsp">Shop All Products</a></li>
                <li class="nav-item"><a class="nav-link" href="product.jsp">Browse Our Ranges</a></li>
                <li class="nav-item"><a class="nav-link" href="product.jsp">Shop Our Bundles</a></li>
                <li class="nav-item"><a class="nav-link" href="product-list.jsp">FAQs</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Form Section -->
<div class="form-container">
    <div class="form-card">
        <h2>Create Account</h2>
        <form action="admin-register-servlet" method="post">
            <input type="hidden" name="role" value="customer">
            <input type="hidden" name="status" value="active">

            <!-- Name Field -->
            <input type="text" name="user_name" placeholder="First and last name" required>

            <!-- Email Field -->
            <input type="text" name="email" placeholder="Enter your email" required>

            <!-- Password Field -->
            <input type="password" name="password" placeholder="At least 6 characters" required>
            <div class="form-text">Passwords must be at least 6 characters.</div>

            <!-- Re-enter Password Field -->
            <input type="password" placeholder="Re-enter your password" required>

            <!-- Submit Button -->
            <button type="submit">Register</button>
        </form>
        <p class="form-text">
            Already have an account? <a href="signin.jsp" style="color: #6cad61">Sign In</a>
        </p>
    </div>
</div>
</body>
</html>
