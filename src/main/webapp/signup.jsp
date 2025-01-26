<%--
  Created by IntelliJ IDEA.
  User: Bishmi
  Date: 1/22/2025
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Janet Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet"> <!-- Font Awesome -->
    <link rel="stylesheet" href="login.css">

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
            <i class="bi bi-search"></i>
            <a href="login.jsp" class="icon-link">
                <i class="bi bi-person-fill"></i>
            </a>
            <i class="bi bi-cart"></i>
        </div>
    </div>
</div>

<hr class="hr">

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <!--        <a class="navbar-brand" href="#">Navbar</a>-->
        <!--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">-->
        <!--            <span class="navbar-toggler-icon"></span>-->
        <!--        </button>-->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shop All Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Browse Our Ranges</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> Shop Our Bundles</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> FAQs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> Contact</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<section class="loginF">
    <form action="customer-register-servlet" method="post" class="Loginform">
        <h2>Create Account</h2>
        <p class="loginP">If you want to create an account with us, please enter.</p>
        <div class="mb-3">
            <label for="exampleInputFirstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="exampleInputFirstName" aria-describedby="emailHelp">
        </div>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1">

        </div>

        <div class="mb-3">
            <label for="exampleInputLastName" class="form-label">Phone Number</label>
            <input type="text" class="form-control" id="exampleInputLastName" aria-describedby="emailHelp">
        </div>

        <button type="submit" class="btn btn-primary">SIGN UP</button>
    </form>

    <div style="border-left: 1px solid #cfcdcd;" class="line"></div>
    <div class="signup">
        <h2>Already have an Account ?</h2>
        <p class="signupPara mt-4" > Registering for this site allows you to access your order status and history. We’ll get a new account set up for you in no time. We’ll get a new account set up for you in no time. For this will only ask you for information necessary to make the purchase process faster and easier</p>
       <a href="login.jsp">
        <button type="button" class="btn btn-primary" id="signupbtn">LOGIN</button>
       </a>
    </div>
</section>

</body>
</html>
