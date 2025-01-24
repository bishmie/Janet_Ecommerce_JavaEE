<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Cards</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Include your shared CSS styles here */
        .imgcards {
            background: #ededed;
            padding-bottom: 50px;
            padding-top: 50px;
        }
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        .card:hover {
            transform: scale(1.05); /* Slight zoom effect */
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2); /* Adds a shadow for emphasis */
        }
        .card-body h5 {
            font-size: 12px;
        }
        .card-text {
            font-size: 12px;
            color: #919191;
        }
        .text-body-secondary {
            font-size: 15px;
            font-weight: bold;
        }
        .add-to-cart {
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
        .add-to-cart:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
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
    </style>
</head>
<body>
<div class="imgcards">
    <c:forEach var="product" items="${products}">
        <div class="image-card">
            <img src="${product.image_path}" alt="${product.name}">
            <div class="card-body">
                <h5 class="card-title">${product.name}</h5>
                <p class="card-text">${product.description}</p>
                <p class="text-body-secondary">LKR. ${product.price}</p>
            </div>
            <div class="add-to-cart">
                <i class="fas fa-shopping-cart"></i>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
