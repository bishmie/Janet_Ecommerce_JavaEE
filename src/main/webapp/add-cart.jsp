<%@ page import="org.example.ecommercejavaee.dto.CartItemDTO" %>
<%@ page import="java.util.List" %>
<%--User: Bishmi--%>
<%--Date: 1/22/2025--%>
<%--Time: 2:51 PM--%>
<%--To change this template use File | Settings | File Templates.--%>

<!DOCTYPE html>
<html>
<head>

    <title>Janet Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet"> <!-- Font Awesome -->
    <link rel="stylesheet" href="index.css">

    <style>


        .image-card img {
            width: 100%;
            height: auto;
            max-height: 150px; /* Limit image size */
            border-radius: 5px;
        }

        .cart-item-card {
            height: auto; /* Allow the height to be flexible */
            max-width: 300px; /* Control the max width of the cards */
            margin-bottom: 20px; /* Space between rows */
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



<%--<img src="Assest/img/Janet_Makeup_mini_banner.webp" class="img-fluid" alt="there">--%>


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

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <!--        <a class="navbar-brand" href="#">Navbar</a>-->
        <!--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">-->
        <!--            <span class="navbar-toggler-icon"></span>-->
        <!--        </button>-->
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
                    <a class="nav-link" href="product.jsp"> Shop Our Bundles</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product-list.jsp"> FAQs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="updateDeleteProduct.jsp"> Contact</a>
                </li>

            </ul>
        </div>
    </div>
</nav>



<div class="container">
    <div class="cart-container">
        <h1 class="text-left mb-4" style="font-size: 27px">Your Cart</h1>
        <div class="row">
            <%
                List<CartItemDTO> cart = (List<CartItemDTO>) session.getAttribute("cart");
                if (cart != null && !cart.isEmpty()) {
                    for (CartItemDTO item : cart) {
            %>

            <div class="col-md-6 col-lg-3 mb-3">
                <div class="card cart-item-card shadow-sm border-0">
                    <div class="d-flex">
                        <img src="<%= item.getImage_path() %>" alt="Product Image" class="card-img-left" style="width: 70px; height: 70px; object-fit: cover;">
                        <div class="card-body ps-3">
                            <h5 class="card-title mb-1" style="font-size: 0.875rem; font-weight: bold;"><%= item.getProductName() %></h5>
                            <p class="card-text mb-2" style="font-size: 0.75rem; color: #6c757d;">Price: LKR <%= item.getProductPrice() %></p>
                            <form action="cart" method="post" class="d-flex align-items-center mb-2">
                                <input type="hidden" name="action" value="update">
                                <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                                <input type="number" name="quantity" value="<%= item.getQuantity() %>" min="1" class="form-control form-control-sm w-50" style="font-size: 0.75rem;">
                                <button type="submit" class="btn btn-sm ms-2" style="background-color: #6cad61; font-size: 0.75rem;">Update</button>
                            </form>
                            <p class="mb-1" style="font-size: 0.75rem;">Subtotal: LKR <%= item.getSubtotal() %></p>
                            <form action="cart" method="post">
                                <input type="hidden" name="action" value="remove">
                                <input type="hidden" name="product_id" value="<%= item.getProductId() %>">
                                <button type="submit" class="btn btn-danger btn-sm" style="background-color: red; font-size: 0.75rem;">Remove</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <%
                }
            } else {
            %>
            <div class="col-12">
                <p class="empty-cart-message">Your cart is empty.</p>
            </div>
            <%
                }
            %>
        </div>

        <!-- Cart Summary -->
        <div class="cart-summary">
            <%
                double subtotal = 0;
                if (cart != null) {
                    for (CartItemDTO item : cart) {
                        subtotal += item.getSubtotal();
                    }
                }
            %>
            <h3 class="text-center">Subtotal: <span class="text-primary">LKR <%= subtotal %></span></h3>
            <div class="d-flex justify-content-center">
                <a href="cart.jsp" class="checkout-btn">Proceed to Checkout</a>

            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
