<%-- 
    Document   : header
    Created on : Dec 10, 2019, 3:13:46 PM
    Author     : a5lhp
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <body>
        <header class="header">

            <!-- Top Bar -->

            <div class="top_bar">
                <div class="container">
                    <div class="row">
                        <div class="col d-flex flex-row">
                            <div class="top_bar_contact_item">
                                <div class="top_bar_icon"><img src="<c:url value="/resources/images/phone.png"/>" alt=""></div>+38 068 005 3570
                            </div>
                            <div class="top_bar_contact_item">
                                <div class="top_bar_icon"><img src="<c:url value="/resources/images/mail.png"/>" alt=""></div>
                                <a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a>
                            </div>
                            <div class="top_bar_content ml-auto">
                                <div class="top_bar_menu">
                                    <ul class="standard_dropdown top_bar_dropdown">
                                        <li>
                                            <a href="#">English<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li><a href="#">Italian</a></li>
                                                <li><a href="#">Spanish</a></li>
                                                <li><a href="#">Japanese</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">$ US dollar<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li><a href="#">EUR Euro</a></li>
                                                <li><a href="#">GBP British Pound</a></li>
                                                <li><a href="#">JPY Japanese Yen</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="top_bar_user">
                                    <div class="user_icon"><img src="<c:url value="/resources/images/user.svg"/>" alt=""></div>
                                    <div><a href="${pageContext.request.contextPath}/auth/register.html">Register</a></div>
                                    <div><a href="${pageContext.request.contextPath}/auth/login.html">Sign in</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Header Main -->

            <div class="header_main">
                <div class="container">
                    <div class="row">

                        <!-- Logo -->
                        <div class="col-lg-2 col-sm-3 col-3 order-1">
                            <div class="logo_container">
                                <div class="logo"><a href="${pageContext.request.contextPath}/home.html">OneTech</a></div>
                            </div>
                        </div>

                        <!-- Search -->
                        <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                            <div class="header_search">
                                <div class="header_search_content">
                                    <div class="header_search_form_container">
                                        <div class="header_search_form clearfix">
                                            <input type="search" required="required" class="header_search_input"
                                                   placeholder="Search for products...">
                                            <div class="custom_dropdown">
                                                <div class="custom_dropdown_list">
                                                    <span class="custom_dropdown_placeholder clc">All Categories</span>
                                                    <i class="fas fa-chevron-down"></i>
                                                    <ul class="custom_list clc">
                                                        <c:forEach var="item" items="${listCategoryFilter}">
                                                            <li><a class="clc" href="javascript:void(0)" onclick="selectCategory(${item.id})">${item.name}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                            <button type="button" onclick="searchProduct()" class="header_search_button trans_300" value="Submit">
                                                <img src="<c:url value="/resources/images/search.png" />" alt="">
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Wishlist -->
                        <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                            <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                                <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                                    <div class="wishlist_icon"><img src="<c:url value="/resources/images/heart.png"/>" alt=""></div>
                                    <div class="wishlist_content">
                                        <div class="wishlist_text"><a href="javascript:void(0)">Wishlist</a></div>
                                        <div class="wishlist_count">115</div>
                                    </div>
                                </div>

                                <!-- Cart -->
                                <div class="cart">
                                    <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                        <div class="cart_icon">
                                            <img src="<c:url value="/resources/images/cart.png" />" alt="">
                                            <div class="cart_count cart_total_items"><span>${sessionScope.CART_TOTAL_NUM}</span></div>
                                        </div>
                                        <div class="cart_content">
                                            <div class="cart_text"><a href="${pageContext.request.contextPath}/shopping-cart">Cart</a></div>
                                            <div class="cart_price cart_total_price">&#36;${sessionScope.CART_TOTAL_PRICE}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Navigation -->

            <nav class="main_nav">
                <div class="container">
                    <div class="row">
                        <div class="col">

                            <div class="main_nav_content d-flex flex-row">

                                <!-- Categories Menu -->

                                <div class="cat_menu_container">
                                    <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                                        <div class="cat_burger"><span></span><span></span><span></span></div>
                                        <div class="cat_menu_text">categories</div>
                                    </div>

                                    <ul class="cat_menu">
                                        <c:forEach var="item" items="${listAllCategories}" >
                                            <li><a href="${pageContext.request.contextPath}/category/${item.id}">${item.name} <i class="fas fa-chevron-right ml-auto"></i></a></li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <!-- Main Nav Menu -->

                                <div class="main_nav_menu ml-auto">
                                    <ul class="standard_dropdown main_nav_dropdown">
                                        <li><a href="${pageContext.request.contextPath}/home.html">Home<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="${pageContext.request.contextPath}/category/0">Categories<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="${pageContext.request.contextPath}/shopping-cart">Cart<i class="fas fa-chevron-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <script>
                var categoryId = 0;
                var selectCategory = function (id) {
                    categoryId = id;
                }
                var searchProduct = function () {
                    var search = $('.header_search_input').val();
                    window.location.href = 'http://localhost:8080/ProjectJavaWeb/product/search-product?search=' + search + '&categoryId=' + categoryId;
                }
            </script>
        </header>
    </body>
</html>
