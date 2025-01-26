<%@ page import="org.example.ecommercejavaee.dto.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Bishmi
  Date: 1/22/2025
  Time: 2:51 PM
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
    <link rel="stylesheet" href="index.css">
<style>
    .btn-primary{
        margin-bottom: 30px;
    }

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
    #shopbtn{
        margin-bottom: 30px;
        border: none;
    }
    #shopbtn1{
        margin-bottom: 30px;
        border: none;


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

<section class="imgcards">
    <div class="container mt-5">
        <h1 class="text-left mb-4" style="font-size: 27px">All Products</h1>
                <a href="product-list" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP NOW</a>
<%--        <a href="pimple-products" id="shopbtn" class="btn btn-primary w-100 " style="background-color:#6cad61" role="button">SHOP Now</a>--%>

        <div class="row gy-4"> <!-- Add 'gy-4' for spacing -->

            <%
                // Fetch the product list passed from the servlet
                List<ProductDTO> productList3 = (List<ProductDTO>) request.getAttribute("productList3");
                if (productList3 != null && !productList3.isEmpty()) {
                    for (ProductDTO product : productList3) {
            %>
            <!-- Dynamic Product Cards -->
            <div class="col-lg-3 col-md-6">
                <div class="card h-100">
                    <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= product.getProductName() %></h5>
                        <p class="card-text text-muted"><%= product.getProductDescription() %></p>
                        <p class="availableqty" style="font-size: 12px;"> <%= product.getProductQuantity() +" Products Available"%></p>
                        <p class="card-text fw-bold">LKR. <%= product.getProductPrice() %></p>
                        <%--                        <p class="card-text">Reviews: <%= product.getReviewsCount() %></p>--%>
                    </div>
                    <div class="add-to-cart2 text-center">
                        <form action="Pimpleproduct-list.jsp" method="post">
                            <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                            <input type="hidden" name="product_name" value="<%= product.getProductName() %>">
                            <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">
                            <input type="hidden" name="product_quantity" value="<%=product.getProductQuantity() + "Products Available"%>">


                            <div class="add-to-cart1">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%
                }
            } else {
            %>
            <div class="alert alert-warning text-center" role="alert">
                No products available at the moment.
            </div>
            <% } %>



            <!-- Add more static cards as required -->

        </div>
    </div>
</section>

</body>
</html>
