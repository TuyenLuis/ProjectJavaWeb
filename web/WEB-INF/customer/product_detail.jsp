<%-- 
    Document   : product_detail
    Created on : Dec 14, 2019, 9:40:12 PM
    Author     : a5lhp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${product.name}</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="OneTech shop project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/bootstrap4/bootstrap.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/animate.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/slick-1.8.0/slick.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_styles.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/product_responsive.css"/>">
    </head>
    <body>
        <div class="super_container">
            <jsp:include page="header.jsp"></jsp:include>

                <!-- Single Product -->
                <div class="single_product" style="padding-bottom: 100px">
                    <div class="container">
                        <div class="row">

                            <!-- Images -->
                            <div class="col-lg-2 order-lg-1 order-2">
                                <ul class="image_list">
                                    <li data-image="${product.image}"><img src="${product.image}" alt=""></li>
                            </ul>
                        </div>

                        <!-- Selected Image -->
                        <div class="col-lg-5 order-lg-2 order-1">
                            <div class="image_selected"><img src="${product.image}" alt=""></div>
                        </div>

                        <!-- Description -->
                        <div class="col-lg-5 order-3">
                            <div class="product_description">
                                <div class="product_category">${product.categories.name}</div>
                                <div class="product_name">${product.name}</div>
                                <div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                <div class="product_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum. laoreet turpis, nec sollicitudin dolor cursus at. Maecenas aliquet, dolor a faucibus efficitur, nisi tellus cursus urna, eget dictum lacus turpis.</p></div>
                                <div class="order_info d-flex flex-row">
                                    <form action="#">
                                        <div class="clearfix" style="z-index: 1000;">

                                            <!-- Product Quantity -->
                                            <div class="product_quantity clearfix">
                                                <span>Quantity: </span>
                                                <input id="quantity_input" type="number" pattern="[0-9]*" value="1">
                                                <div class="quantity_buttons">
                                                    <div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
                                                    <div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="product_price">&#36;${product.promotionPrice != null ? product.promotionPrice : product.price}</div>
                                        <c:if test="${product.promotionPrice != null}">
                                            <div class="product_price product_price_sale">&#36;${product.price}</div>
                                        </c:if>
                                        <div class="button_container" style="margin-top: 20px;">
                                            <button type="button" class="button cart_button">Add to Cart</button>
                                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 order-lg-12 order-1" style="margin-top: 80px;">
                            <div class="product_detail">
                                <p>${product.detail}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <jsp:include page="footer.jsp"></jsp:include>
            <script src="<c:url value="/resources/js/product_custom.js"/>"></script>
        </div>
    </body>
</html>