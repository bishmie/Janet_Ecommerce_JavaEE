<%@ page import="org.example.ecommercejavaee.dto.ProductDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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


<!--<img src="Assest/Janet_Makeup_mini_banner.webp" class="img-fluid" alt="janet banner">-->

<div id="carouselExampleFade" class="carousel slide carousel-fade">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="Assest/Janet_Makeup_mini_banner.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="Assest/Web_Site_Glow_Banner_2400_x_800.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="Assest/Web_Site_Pimples_Banner_2400_x_800.webp" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-auto discountimg-wrapper">
            <img src="Assest/discount1.webp" alt="Image 1" class="discountimg">
        </div>
        <div class="col-auto discountimg-wrapper">
            <img src="Assest/discount2.webp" alt="Image 2" class="discountimg" >
        </div>
    </div>
</div>



<section class="imgcards">
    <div class="container mt-5">
        <h1 class="text-left mb-4" style="font-size: 27px">Pimple Range Products</h1>
<%--        <a href="new-product-list" class="btn btn-primary w-100" style="background-color:#6cad61" role="button">SHOP Now</a>--%>
        <a href="pimple-products" id="shopbtn" class="btn btn-primary w-100 " style="background-color:#6cad61" role="button">SHOP Now</a>

        <div class="row gy-4"> <!-- Add 'gy-4' for spacing -->

            <%
                // Fetch the product list passed from the servlet
                List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList");
                if (productList != null && !productList.isEmpty()) {
                    for (ProductDTO product : productList) {
            %>
            <!-- Dynamic Product Cards -->
            <div class="col-lg-3 col-md-6">
                <div class="card h-100">
                    <img src="<%= product.getImage_path() %>" class="card-img-top" alt="<%= product.getProductName() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= product.getProductName() %></h5>
                        <p class="card-text text-muted"><%= product.getProductDescription() %></p>
                        <p class="availableqty" style="font-size: 12px;"> <%= product.getProductQuantity()%>  Products Available</p>
                        <p class="card-text fw-bold">LKR. <%= product.getProductPrice() %></p>
<%--                        <p class="card-text">Reviews: <%= product.getReviewsCount() %></p>--%>
                    </div>
                    <div class="add-to-cart2 text-center">
                        <form action="cart" method="post">
                            <input type="hidden" name="product_id" value="<%= product.getProduct_id() %>">
                            <input type="hidden" name="product_name" value="<%= product.getProductName() %>">
                            <input type="hidden" name="product_price" value="<%= product.getProductPrice() %>">
                            <input type="hidden" name="product_quantity" value="<%=product.getProductQuantity()%>">

                            <button type="submit">
                            <div class="add-to-cart1">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            </button>
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



<section class="bundle">
    <div class="container mt-4">
        <div class="row g-3"> <!-- g-3 for consistent spacing -->
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/Simple_Pimple3.webp" alt="Image 1" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/Spotless_Bundle_with_Free_Orange5.webp" alt="Image 2" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/Body_Polishing_Essentials4.webp" alt="Image 3" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/newbundle.webp" alt="Image 4" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/Active_Pimple_Bundle2.webp" alt="Image 5" class="img-fluid">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="image-card">
                    <img src="Assest/Dark_Circle_Remover_Duo6.webp" alt="Image 6" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
</section>


<section class="glowRange">
    <div class="image-container">
        <img src="Assest/Glow-BGnew.jpg" class="img-fluid" alt="Glow range image">
        <div class="text-overlay">
            <p class="glowPara">Glow Range</p>
            <p class="glowPara2">Our latest Glowing Skincare Range is made to help you get your glow on!</p>
        </div>
    </div>
</section>


<section class="allGlowProducts">
    <p class="allTitle">Glow Range Products</p>
    <a href="glow-products" id="shopbtn1" class="btn btn-primary w-100 " style="background-color:orange" role="button">SHOP Now</a>

    <div class="container mt-4" >
        <div class="row gy-4"> <!-- Add 'gy-4' for vertical spacing -->

            <%
                // Fetch the product list passed from the servlet
                List<ProductDTO> productList2 = (List<ProductDTO>) request.getAttribute("productList2");
                if (productList2 != null && !productList2.isEmpty()) {
                    for (ProductDTO product1 : productList2) {
            %>


            <!-- Dynamic Product Cards -->
            <div class="col-lg-3 col-md-6">
                <div class="card h-100">
                    <img src="<%= product1.getImage_path() %>" class="card-img-top" alt="<%= product1.getProductName() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= product1.getProductName() %></h5>
                        <p class="card-text text-muted"><%= product1.getProductDescription() %></p>
                        <p class="availableqty" style="font-size: 12px;"> <%= product1.getProductQuantity() +" Products Available"%></p>
                        <p class="card-text fw-bold">LKR. <%= product1.getProductPrice() %></p>
                        <%--                        <p class="card-text">Reviews: <%= product.getReviewsCount() %></p>--%>
                    </div>
                    <div class="add-to-cart3 text-center">
                        <form action="GlowProducts.jsp" method="post">
                            <input type="hidden" name="product_id" value="<%= product1.getProduct_id() %>">
                            <input type="hidden" name="product_name" value="<%= product1.getProductName() %>">
                            <input type="hidden" name="product_price" value="<%= product1.getProductPrice() %>">
                            <input type="hidden" name="product_quantity" value="<%=product1.getProductQuantity() + "Products Available"%>">


                            <div class="add-to-cart1" id="cart1">
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





        </div>
    </div>

</section>
<!--    <div class="product-grid">-->
<!--        <div class="product-item">-->
<!--            <img src="Assest/facwashlarge.webp" alt="Product 1">-->
<!--        </div>-->
<!--        <div class="product-item">-->
<!--            <img src="Assest/facwashlarge.webp" alt="Product 2">-->
<!--        </div>-->
<!--        <div class="product-item">-->
<!--            <img src="Assest/facwashlarge.webp" alt="Product 3">-->
<!--        </div>-->
<!--        <div class="product-item">-->
<!--            <img src="Assest/facwashlarge.webp" alt="Product 4">-->
<!--        </div>-->
<!--    </div>-->




<section class="customer-feedback py-5 bg-light mt-5" >
    <div class="container">
        <!-- Section Title -->
        <div class="text-center mb-4">
            <h2 class="fw-bold">What Our Customers Say</h2>
        </div>

        <!-- Feedback Carousel -->
        <div id="feedbackCarousel" class="carousel slide" data-bs-ride="carousel">
            <!-- Carousel Indicators -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#feedbackCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#feedbackCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#feedbackCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <!-- Carousel Items -->
            <div class="carousel-inner">
                <!-- Feedback 1 -->
                <div class="carousel-item active">
                    <div class="row justify-content-center">
                        <div class="col-md-8 text-center">
                            <h5 class="fw-bold">Kasuni Fernando</h5>
                            <p class="text-muted"><i>"I've been using the Janet Kohomba Soothing Pack for a few weeks, and I love it! It feels so gentle on my skin and really helps with redness and irritation. The natural neem scent is refreshing and not overpowering. I noticed my skin feels softer and calmer after every use. Perfect for anyone with sensitive skin!"</i></p>
                            <div class="text-warning">
                                ★★★★☆
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Feedback 2 -->
                <div class="carousel-item">
                    <div class="row justify-content-center">
                        <div class="col-md-8 text-center">
                            <h5 class="fw-bold">Shehara Gamage</h5>
                            <p class="text-muted"><i>"The Janet Pimple Out Roller Pen is a lifesaver! It's so easy to apply directly to spots, and I noticed a visible difference in just a day or two. The cooling effect feels amazing, and it’s super convenient to carry around. I use it whenever I feel a breakout starting, and it really helps to calm the redness. Highly recommend for quick spot treatment"</i></p>
                            <div class="text-warning">
                                ★★★★★
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Feedback 3 -->
                <div class="carousel-item">
                    <div class="row justify-content-center">
                        <div class="col-md-8 text-center">
                            <h5 class="fw-bold">Rashmi Nimesha</h5>
                            <p class="text-muted"><i>"I love the Orange Peel Mask! It makes my skin feel so fresh and bright after each use. The citrusy scent is uplifting, and the mask is easy to apply and rinse off. It also helps reduce oiliness and leaves my face feeling smooth. After a few uses, I noticed my skin looking more radiant and even-toned. A great pick for anyone wanting a natural glow"</i></p>
                            <div class="text-warning">
                                ★★★★☆
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Carousel Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#feedbackCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#feedbackCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</section>



<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>