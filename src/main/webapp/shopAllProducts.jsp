<%@ page import="org.example.ecommercejavaee.dto.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Bishmi
  Date: 1/26/2025
  Time: 7.30 PM
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
        border: none;
    }

    .add-to-cart1:hover {
        background: #6cad61;
        color: white;
    }
    .image-card {
        border: 1px solid #6cad61;
        /*margin: 10px; !* Adds margin around each card *!*/
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

    .row {
        margin-top: 0; /* Reduce gap from top */
        margin-bottom: 0; /* Reduce gap at the bottom */
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

<%--<section class="imgcards">--%>
<%--    <div class="container mt-5">--%>
<%--        <h1 class="text-left mb-4" style="font-size: 27px">All Products</h1>--%>
<%--                <a href="product-list" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP NOW</a>--%>
<%--&lt;%&ndash;        <a href="pimple-products" id="shopbtn" class="btn btn-primary w-100 " style="background-color:#6cad61" role="button">SHOP Now</a>&ndash;%&gt;--%>

<%--        <div class="row gy-4"> <!-- Add 'gy-4' for spacing -->--%>

<%--                <%--%>
<%--        // Fetch the product list passed from the servlet--%>
<%--        List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList3");--%>
<%--        if (productList != null && !productList.isEmpty()) {--%>
<%--    %>--%>
<%--            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">--%>
<%--                <%--%>
<%--                    for (ProductDTO product : productList) {--%>
<%--                %>--%>
<%--                <div class="col">--%>
<%--                    <div class="card h-100">--%>
<%--                        <!-- Product Image -->--%>
<%--                        <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>" style="height: 200px; object-fit: cover;">--%>

<%--                        <div class="card-body">--%>
<%--                            <!-- Product Name -->--%>
<%--                            <h5 class="card-title"><%= product.getProductName() %></h5>--%>

<%--                            <!-- Product Description -->--%>
<%--                            <p class="card-text text-muted"><%= product.getProductDescription() %></p>--%>

<%--                            <!-- Product Price -->--%>
<%--                            <p class="fw-bold">Price: $<%= product.getProductPrice() %></p>--%>

<%--                            <!-- Product Quantity -->--%>
<%--                            <p>Available: <%= product.getProductQuantity() %> units</p>--%>

<%--                            <!-- Action Button -->--%>
<%--                            <form action="cart" method="post">--%>
<%--                                <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">--%>
<%--                                <input type="hidden" name="product_name" value="<%= product.getProductName() %>">--%>
<%--                                <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">--%>
<%--                                <input type="hidden" name="product_quantity" value="1">--%>
<%--                                <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">--%>
<%--                                <button type="submit" class="btn btn-danger">Add to Cart</button>--%>
<%--                            </form>--%>

<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
<%--            </div>--%>
<%--                <% } else { %>--%>
<%--            <div class="alert alert-warning text-center" role="alert">--%>
<%--                No products available at the moment.--%>
<%--            </div>--%>
<%--                <% } %>--%>
<%--</section>--%>



<%--<section class="imgcards">--%>
<%--    <div class="container mt-5">--%>
<%--        <h1 class="text-left mb-4" style="font-size: 27px">All Products</h1>--%>
<%--        <a href="product-list" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP NOW</a>--%>

<%--        <div class="row gy-4"> <!-- Add 'gy-4' for spacing -->--%>

<%--            <%--%>
<%--                // Fetch the product list passed from the servlet--%>
<%--                List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList3");--%>
<%--                if (productList != null && !productList.isEmpty()) {--%>
<%--            %>--%>
<%--            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">--%>
<%--                <%--%>
<%--                    for (ProductDTO product : productList) {--%>
<%--                %>--%>
<%--                <div class="col">--%>
<%--                    <div class="card h-100 image-card">--%>
<%--                        <!-- Product Image -->--%>
<%--                        <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>" style="height: 200px; object-fit: cover;">--%>

<%--                        <div class="card-body">--%>
<%--                            <!-- Product Name -->--%>
<%--                            <h5 class="card-title" style="font-size: 12px;"><%= product.getProductName() %></h5>--%>

<%--                            <!-- Product Description -->--%>
<%--                            <p class="card-text text-muted" style="font-size: 12px;"><%= product.getProductDescription() %></p>--%>

<%--                            <!-- Product Quantity -->--%>
<%--                            <p class="availableqty" style="font-size: 12px;">Available: <%= product.getProductQuantity() %> units</p>--%>

<%--                            <!-- Product Price -->--%>
<%--                            <p class="card-text fw-bold">LKR. <%= product.getProductPrice() %></p>--%>

<%--                            <!-- Add to Cart -->--%>
<%--                            <form action="cart" method="post">--%>
<%--                                <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">--%>
<%--                                <input type="hidden" name="product_name" value="<%= product.getProductName() %>">--%>
<%--                                <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">--%>
<%--                                <input type="hidden" name="product_quantity" value="1">--%>
<%--                                <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">--%>
<%--                                <button type="submit" class="btn btn-danger add-to-cart1">--%>
<%--                                    <i class="fas fa-shopping-cart"></i> Add to Cart--%>
<%--                                </button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
<%--            </div>--%>
<%--            <% } else { %>--%>
<%--            <div class="alert alert-warning text-center" role="alert">--%>
<%--                No products available at the moment.--%>
<%--            </div>--%>
<%--            <% } %>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>


<section class="imgcards">
    <div class="container mt-3">
        <h1 class="text-left mb-4" style="font-size: 27px">All Products</h1>
        <a href="new-product-list" id="shopbtn1" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP NOW</a>

        <div class="row gy-4">
            <%
                // Fetch the product list passed from the servlet
                List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList3");
                if (productList != null && !productList.isEmpty()) {
            %>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-4"> <!-- Add row-cols-lg-5 for 5 cards per row -->
                <%
                    for (ProductDTO product : productList) {
                %>
                <div class="col">
                    <div class="card h-75 image-card">
                        <!-- Product Image -->
                        <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>" style="height: 200px; object-fit: cover;">

                        <div class="card-body">
                            <!-- Product Name -->
                            <h5 class="card-title" style="font-size: 12px;"><%= product.getProductName() %></h5>

                            <!-- Product Description -->
                            <p class="card-text text-muted" style="font-size: 12px;"><%= product.getProductDescription() %></p>

                            <!-- Product Quantity -->
                            <p class="availableqty" style="font-size: 12px;">Available: <%= product.getProductQuantity() %> units</p>

                            <!-- Product Price -->
                            <p class="card-text fw-bold">LKR. <%= product.getProductPrice() %></p>

                            <!-- Add to Cart -->
                            <div class="add-to-cart2 text-center">
                                <form action="cart" method="post">
                                    <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                                    <input type="hidden" name="product_name" value="<%= product.getProductName() %>">
                                    <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">
                                    <input type="hidden" name="product_quantity" value="1">
                                    <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">
                                    <button type="submit" class="btn btn-danger add-to-cart1">
                                        <i class="fas fa-shopping-cart"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <% } else { %>
            <div class="alert alert-warning text-center" role="alert">
                No products available at the moment.
            </div>
            <% } %>
        </div>
    </div>
</section>


<%--<div class="container mt-5">--%>
<%--    <h1 class="text-center mb-4">Our Products</h1>--%>
<%--                    <a href="new-product-list" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP NOW</a>--%>


<%--    <%--%>
<%--        // Fetch the product list passed from the servlet--%>
<%--        List<ProductDTO> productList3 = (List<ProductDTO>) request.getAttribute("productList");--%>
<%--        if (productList3 != null && !productList3.isEmpty()) {--%>
<%--    %>--%>
<%--    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">--%>
<%--        <%--%>
<%--            for (ProductDTO product : productList3) {--%>
<%--        %>--%>
<%--        <div class="col">--%>
<%--            <div class="card h-100">--%>
<%--                <!-- Product Image -->--%>
<%--                <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>" style="height: 200px; object-fit: cover;">--%>

<%--                <div class="card-body">--%>
<%--                    <!-- Product Name -->--%>
<%--                    <h5 class="card-title"><%= product.getProductName() %></h5>--%>

<%--                    <!-- Product Description -->--%>
<%--                    <p class="card-text text-muted"><%= product.getProductDescription() %></p>--%>

<%--                    <!-- Product Price -->--%>
<%--                    <p class="fw-bold">Price: $<%= product.getProductPrice() %></p>--%>

<%--                    <!-- Product Quantity -->--%>
<%--                    <p>Available: <%= product.getProductQuantity() %> units</p>--%>

<%--                    <!-- Action Button -->--%>
<%--                    <form action="cart" method="post">--%>
<%--                        <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">--%>
<%--                        <input type="hidden" name="product_name" value="<%= product.getProductName() %>">--%>
<%--                        <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">--%>
<%--                        <input type="hidden" name="product_quantity" value="1">--%>
<%--                        <input type="hidden" name="product_image" value="<%= product.getImage_path() %>">--%>
<%--                        <button type="submit" class="btn btn-danger">Add to Cart</button>--%>
<%--                    </form>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
<%--    </div>--%>
<%--    <% } else { %>--%>
<%--    <div class="alert alert-warning text-center" role="alert">--%>
<%--        No products available at the moment.--%>
<%--    </div>--%>
<%--    <% } %>--%>
<%--</div>--%>

</body>
</html>
