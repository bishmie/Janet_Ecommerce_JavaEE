
<%--User: Bishmi--%>
<%--Date: 1/22/2025--%>
<%--Time: 2:51 PM--%>
<%--To change this template use File | Settings | File Templates.--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.ecommercejavaee.dto.CartItemDTO" %>


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


<%
    List<CartItemDTO> cart = (List<CartItemDTO>) session.getAttribute("cart");
%>

<div class="container">

    <h4>Cart Summary</h4>
    <ul>
        <% for (CartItemDTO item : cart) { %>
        <li>
            <%= item.getProductName() %> - LKR <%= item.getSubtotal() %>
        </li>
        <% } %>
    </ul>
</div>

<div class="container">
    <div class="checkout-container">
        <h1 class="text-center mb-4">Checkout</h1>
        <form action="order-confirmation.jsp" method="post">
            <div class="row">
                <!-- Billing Details -->
                <div class="col-md-6">
                    <h3>Billing Details</h3>
                    <div class="mb-3">
                        <label for="billingName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="billingName" name="billingName" required>
                    </div>
                    <div class="mb-3">
                        <label for="billingEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="billingEmail" name="billingEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="billingPhone" class="form-label">Phone</label>
                        <input type="tel" class="form-control" id="billingPhone" name="billingPhone" required>
                    </div>
                    <div class="mb-3">
                        <label for="billingAddress" class="form-label">Address</label>
                        <textarea class="form-control" id="billingAddress" name="billingAddress" rows="3" required></textarea>
                    </div>
                </div>


            </div>

            <!-- Order Summary -->
            <div class="row mt-4">
                <div class="col-12">
                    <h3>Order Summary</h3>
                    <div class="summary-card">
                        <%
                            double total = 0;
                            if (cart != null) {
                                for (CartItemDTO item : cart) {
                                    total += item.getSubtotal();
                        %>
                        <div class="d-flex justify-content-between mb-3">
                            <span><%= item.getProductName() %> (x<%= item.getQuantity() %>)</span>
                            <span>LKR <%= item.getSubtotal() %></span>
                        </div>
                        <%
                            }
                        } else {
                        %>
                        <p>Your cart is empty.</p>
                        <%
                            }
                        %>
                        <hr>
                        <div class="d-flex justify-content-between">
                            <h4>Total:</h4>
                            <h4 class="text-primary">LKR <%= total %></h4>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Place Order Button -->
            <div class="text-end mt-4">
                <button type="submit" class="place-orderDTO-btn">Confirm Order</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
