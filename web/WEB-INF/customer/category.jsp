<%-- 
    Document   : category
    Created on : Dec 14, 2019, 10:43:35 PM
    Author     : a5lhp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop</title>
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
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/shop_styles.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/shop_responsive.css"/>">
        <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
        <script src="<c:url value="/resources/components/AlertifyJS/alertify.min.js"/>"></script>
        <!--<script src="<c:url value="/resources/components/sweetalert2/dist/sweetalert2.all.min.js"/>"></script>-->
        <script src="<c:url value="/resources/js/shopping_cart.js"/>" ></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Home -->

            <div class="home">
                <div class="home_background parallax-window" data-parallax="scroll" data-image-src="<c:url value="/resources/images/shop_background.jpg" />"></div>
            <div class="home_overlay"></div>
            <div class="home_content d-flex flex-column align-items-center justify-content-center">
                <h2 class="home_title">Đồ điện gia dụng</h2>
            </div>
        </div>

        <!-- Shop -->

        <div class="shop">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">

                        <!-- Shop Sidebar -->
                        <div class="shop_sidebar">
                            <div class="sidebar_section">
                                <div class="sidebar_title">Categories</div>
                                <ul class="sidebar_categories">
                                    <c:forEach var="item" items="${listAllCategories}">
                                        <li><a href="${pageContext.request.contextPath}/category/${item.id}">${item.name}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                            <div class="sidebar_section filter_by_section">
                                <div class="sidebar_title">Filter By</div>
                                <div class="sidebar_subtitle">Price</div>
                                <div class="filter_price">
                                    <div id="slider-range" class="slider_range"></div>
                                    <p>Range: </p>
                                    <p><input type="text" id="amount" class="amount" readonly style="border:0; font-weight:bold;"></p>
                                </div>
                            </div>
                            <!--						<div class="sidebar_section">
                                                                                    <div class="sidebar_subtitle brands_subtitle">Brands</div>
                                                                                    <ul class="brands_list">
                                                                                            <li class="brand"><a href="#">Apple</a></li>
                                                                                            <li class="brand"><a href="#">Beoplay</a></li>
                                                                                            <li class="brand"><a href="#">Google</a></li>
                                                                                            <li class="brand"><a href="#">Meizu</a></li>
                                                                                            <li class="brand"><a href="#">OnePlus</a></li>
                                                                                            <li class="brand"><a href="#">Samsung</a></li>
                                                                                            <li class="brand"><a href="#">Sony</a></li>
                                                                                            <li class="brand"><a href="#">Xiaomi</a></li>
                                                                                    </ul>
                                                                            </div>-->
                        </div>

                    </div>

                    <div class="col-lg-9">

                        <!-- Shop Content -->

                        <div class="shop_content">
                            <div class="shop_bar clearfix">
                                <div class="shop_product_count"><span>${listProductByCategory.size()}</span> products found</div>
                                <div class="shop_sorting">
                                    <span>Sort by:</span>
                                    <ul>
                                        <li>
                                            <span class="sorting_text">highest rated<i class="fas fa-chevron-down"></span></i>
                                            <ul>
                                                <li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>highest rated</li>
                                                <li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>name</li>
                                                <li class="shop_sorting_button" data-isotope-option='{ "sortBy": "price" }'>price</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="product_grid">
                                <div class="product_grid_border"></div>

                                <c:forEach var="item" items="${listProductByCategory}">
                                    <div onclick="window.location.href = '${pageContext.request.contextPath}/product/${item.id}'" class="product_item ${ item.isProductNew ? "is_new" : ""} ${ item.promotionPrice != null ? "discount" : ""}" title="item.name">
                                        <div class="product_border"></div>
                                        <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="${item.image}" alt=""></div>
                                        <div class="product_content">
                                            <div class="product_price">&#36;${item.promotionPrice}<span>&#36;${item.price}</span></div>
                                            <div class="product_name"><div><a href="${pageContext.request.contextPath}/product/${item.id}" tabindex="0">${item.name}</a></div></div>
                                        </div>
                                        <div class="product_fav"><i class="fas fa-heart"></i></div>
                                        <ul class="product_marks">
                                            <li class="product_mark product_discount">-${item.promotionPercent}%</li>
                                            <li class="product_mark product_new">${ item.isProductNew ? "new" : ""}</li>
                                        </ul>
                                    </div>
                                </c:forEach>						
                            </div>

                            <!-- Shop Page Navigation -->

                            <!--						<div class="shop_page_nav d-flex flex-row">
                                                                                    <div class="page_prev d-flex flex-column align-items-center justify-content-center"><i class="fas fa-chevron-left"></i></div>
                                                                                    <ul class="page_nav d-flex flex-row">
                                                                                            <li><a href="#">1</a></li>
                                                                                            <li><a href="#">2</a></li>
                                                                                            <li><a href="#">3</a></li>
                                                                                            <li><a href="#">...</a></li>
                                                                                            <li><a href="#">21</a></li>
                                                                                    </ul>
                                                                                    <div class="page_next d-flex flex-column align-items-center justify-content-center"><i class="fas fa-chevron-right"></i></div>
                                                                            </div>-->

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="<c:url value="/resources/plugins/Isotope/isotope.pkgd.min.js"/>"></script>
        <script src="<c:url value="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"/>"></script>
        <script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js"/>"></script>
        <script src="<c:url value="/resources/js/shop_custom.js"/>"></script>
    </body>
</html>
