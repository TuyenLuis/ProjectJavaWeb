<%-- 
    Document   : content
    Created on : Dec 11, 2019, 3:50:03 PM
    Author     : a5lhp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content</title>
    </head>
    <body>
        <!-- Banner -->

        <div class="banner">
            <div class="banner_background" style="background-image:url(<c:url value="/resources/images/banner_background.jpg"/>)"></div>
            <div class="container fill_height">
                <div class="row fill_height">
                    <div class="banner_product_image"><img src="<c:url value="/resources/images/banner_product.png"/>" alt=""></div>
                    <div class="col-lg-5 offset-lg-4 fill_height">
                        <div class="banner_content">
                            <h1 class="banner_text">new era of smartphones</h1>
                            <div class="banner_price"><span>$530</span>$460</div>
                            <div class="banner_product_name">Apple Iphone 6s</div>
                            <div class="button banner_button"><a href="#">Shop Now</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Characteristics -->

        <div class="characteristics">
            <div class="container">
                <div class="row">

                    <!-- Char. Item -->
                    <div class="col-lg-3 col-md-6 char_col">

                        <div class="char_item d-flex flex-row align-items-center justify-content-start">
                            <div class="char_icon"><img src="<c:url value="/resources/images/char_1.png"/>" alt=""></div>
                            <div class="char_content">
                                <div class="char_title">Free Delivery</div>
                                <div class="char_subtitle">from $50</div>
                            </div>
                        </div>
                    </div>

                    <!-- Char. Item -->
                    <div class="col-lg-3 col-md-6 char_col">

                        <div class="char_item d-flex flex-row align-items-center justify-content-start">
                            <div class="char_icon"><img src="<c:url value="/resources/images/char_2.png"/>" alt=""></div>
                            <div class="char_content">
                                <div class="char_title">Free Delivery</div>
                                <div class="char_subtitle">from $50</div>
                            </div>
                        </div>
                    </div>

                    <!-- Char. Item -->
                    <div class="col-lg-3 col-md-6 char_col">

                        <div class="char_item d-flex flex-row align-items-center justify-content-start">
                            <div class="char_icon"><img src="<c:url value="/resources/images/char_3.png"/>" alt=""></div>
                            <div class="char_content">
                                <div class="char_title">Free Delivery</div>
                                <div class="char_subtitle">from $50</div>
                            </div>
                        </div>
                    </div>

                    <!-- Char. Item -->
                    <div class="col-lg-3 col-md-6 char_col">

                        <div class="char_item d-flex flex-row align-items-center justify-content-start">
                            <div class="char_icon"><img src="<c:url value="/resources/images/char_4.png"/>" alt=""></div>
                            <div class="char_content">
                                <div class="char_title">Free Delivery</div>
                                <div class="char_subtitle">from $50</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="deals_featured">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

                        <!-- Deals -->

                        <div class="deals">
                            <div class="deals_title">Deals of the Week</div>
                            <div class="deals_slider_container">

                                <!-- Deals Slider -->
                                <div class="owl-carousel owl-theme deals_slider" style="height: 600px;">

                                    <!-- Deals Item -->
                                    <c:forEach var="item" items="${listProductSaleSlide}">
                                        <div class="owl-item deals_item">
                                            <div class="deals_image"><img src="${item.image}" alt=""></div>
                                            <div class="deals_content">
                                                <div class="deals_info_line d-flex flex-row justify-content-start">
                                                    <div class="deals_item_category"><a href="javascript:void(0)">${item.categories.name}</a></div>
                                                    <div class="deals_item_price_a ml-auto">&#36;${item.price}</div>
                                                </div>
                                                <div class="deals_info_line d-flex flex-row justify-content-start">
                                                    <div class="deals_item_name">${item.name}</div>
                                                    <div class="deals_item_price ml-auto">&#36;${item.promotionPrice}</div>
                                                </div>
                                                <div class="available">
                                                    <div class="available_line d-flex flex-row justify-content-start">
                                                        <div class="available_title">Available: <span>6</span></div>
                                                        <div class="sold_title ml-auto">Already sold: <span>28</span></div>
                                                    </div>
                                                    <div class="available_bar"><span style="width:17%"></span></div>
                                                </div>
                                                <div class="deals_timer d-flex flex-row align-items-center justify-content-start">
                                                    <div class="deals_timer_title_container">
                                                        <div class="deals_timer_title">Hurry Up</div>
                                                        <div class="deals_timer_subtitle">Offer ends in:</div>
                                                    </div>
                                                    <div class="deals_timer_content ml-auto">
                                                        <div class="deals_timer_box clearfix" data-target-time="">
                                                            <div class="deals_timer_unit">
                                                                <div id="deals_timer1_hr" class="deals_timer_hr"></div>
                                                                <span>hours</span>
                                                            </div>
                                                            <div class="deals_timer_unit">
                                                                <div id="deals_timer1_min" class="deals_timer_min"></div>
                                                                <span>mins</span>
                                                            </div>
                                                            <div class="deals_timer_unit">
                                                                <div id="deals_timer1_sec" class="deals_timer_sec"></div>
                                                                <span>secs</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div>

                            <div class="deals_slider_nav_container">
                                <div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i></div>
                                <div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i></div>
                            </div>
                        </div>

                        <!-- Featured -->
                        <div class="featured">
                            <div class="tabbed_container">
                                <div class="tabs">
                                    <ul class="clearfix">
                                        <li class="active">Featured</li>
                                        <li>On Sale</li>
                                    </ul>
                                    <div class="tabs_line"><span></span></div>
                                </div>

                                <!-- Product Panel -->
                                <div class="product_panel panel active">
                                    <div class="featured_slider slider">
                                        <c:forEach var="item" items="${listProductFeature}">
                                            <div class="featured_slider_item" title="${item.name}">
                                                <div class="border_active"></div>
                                                <div class="product_item is_new discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="${item.image}" alt=""></div>
                                                    <div class="product_content">
                                                        <div class="product_price discount">&#36;${item.promotionPrice}<span>&#36;${item.price}</span></div>
                                                        <div class="product_name"><div><a href="${pageContext.request.contextPath}/product/${item.id}">${item.name}</a></div></div>
                                                        <div class="product_extras">
                                                            <button class="product_cart_button" onclick="addProductToCart(${item.id})">Add to Cart</button>
                                                        </div>
                                                    </div>
                                                    <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                    <ul class="product_marks">
                                                        <li class="product_mark product_discount">-${item.promotionPercent}%</li>
                                                        <li class="product_mark product_new">${ item.isProductNew ? "new" : "" }</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="featured_slider_dots_cover"></div>
                                </div>

                                <!-- Product Panel -->

                                <div class="product_panel panel">
                                    <div class="featured_slider slider">
                                        <c:forEach var="item" items="${listProductSale}">
                                            <div class="featured_slider_item" title="${item.name}">
                                                <div class="border_active"></div>
                                                <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="${item.image}" alt=""></div>
                                                    <div class="product_content">
                                                        <div class="product_price discount">&#36;${item.promotionPrice}<span>&#36;${item.price}</span></div>
                                                        <div class="product_name"><div><a href="${pageContext.request.contextPath}/product/${item.id}">${item.name}</a></div></div>
                                                        <div class="product_extras">
                                                            <button class="product_cart_button" onclick="addProductToCart(${item.id})">Add to Cart</button>
                                                        </div>
                                                    </div>
                                                    <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                    <ul class="product_marks">
                                                        <li class="product_mark product_discount">-${item.promotionPercent}%</li>
                                                        <li class="product_mark product_new">${ item.isProductNew ? "new" : "" }</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="featured_slider_dots_cover"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Popular Categories -->

        <div class="popular_categories">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="popular_categories_content">
                            <div class="popular_categories_title">Popular Categories</div>
                            <div class="popular_categories_slider_nav">
                                <div class="popular_categories_prev popular_categories_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                                <div class="popular_categories_next popular_categories_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                            </div>
                        </div>
                    </div>

                    <!-- Popular Categories Slider -->

                    <div class="col-lg-9">
                        <div class="popular_categories_slider_container">
                            <div class="owl-carousel owl-theme popular_categories_slider">

                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="<c:url value="/resources/images/popular_1.png"/>" alt=""></div>
                                        <div class="popular_category_text">Nồi cơm điện</div>
                                    </div>
                                </div>

                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="<c:url value="/resources/images/popular_2.png"/>" alt=""></div>
                                        <div class="popular_category_text">Nồi chiên</div>
                                    </div>
                                </div>

                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="<c:url value="/resources/images/popular_3.png"/>" alt=""></div>
                                        <div class="popular_category_text">Lò vi sóng</div>
                                    </div>
                                </div>

                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="<c:url value="/resources/images/popular_4.png"/>" alt=""></div>
                                        <div class="popular_category_text">Lò nướng điện</div>
                                    </div>
                                </div>

                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="<c:url value="/resources/images/popular_5.png"/>" alt=""></div>
                                        <div class="popular_category_text">Vỉ nướng điện</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Banner -->

        <div class="banner_2">
            <div class="banner_2_background" style="background-image:url(<c:url value="/resources/images/banner_2_background.jpg" />)"></div>
            <div class="banner_2_container">
                <div class="banner_2_dots"></div>
                <!-- Banner 2 Slider -->

                <div class="owl-carousel owl-theme banner_2_slider">

                    <!-- Banner 2 Slider Item -->
                    <div class="owl-item">
                        <div class="banner_2_item">
                            <div class="container fill_height">
                                <div class="row fill_height">
                                    <div class="col-lg-4 col-md-6 fill_height">
                                        <div class="banner_2_content">
                                            <div class="banner_2_category">Laptops</div>
                                            <div class="banner_2_title">MacBook Air 13</div>
                                            <div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
                                            <div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                            <div class="button banner_2_button"><a href="javascript:void(0)">Explore</a></div>
                                        </div>

                                    </div>
                                    <div class="col-lg-8 col-md-6 fill_height">
                                        <div class="banner_2_image_container">
                                            <div class="banner_2_image"><img src="<c:url value="/resources/images/banner_2_product.png" />" alt=""></div>
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                    </div>

                    <!-- Banner 2 Slider Item -->
                    <div class="owl-item">
                        <div class="banner_2_item">
                            <div class="container fill_height">
                                <div class="row fill_height">
                                    <div class="col-lg-4 col-md-6 fill_height">
                                        <div class="banner_2_content">
                                            <div class="banner_2_category">Smartphone</div>
                                            <div class="banner_2_title">Apple Iphone 6S</div>
                                            <div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
                                            <div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                            <div class="button banner_2_button"><a href="javascript:void(0)">Explore</a></div>
                                        </div>

                                    </div>
                                    <div class="col-lg-8 col-md-6 fill_height">
                                        <div class="banner_2_image_container">
                                            <div class="banner_2_image"><img style="height: 416px;" src="<c:url  value="/resources/images/banner_product.png"/>" alt=""></div>
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                    </div>

                    <!-- Banner 2 Slider Item -->
                    <div class="owl-item">
                        <div class="banner_2_item">
                            <div class="container fill_height">
                                <div class="row fill_height">
                                    <div class="col-lg-4 col-md-6 fill_height">
                                        <div class="banner_2_content">
                                            <div class="banner_2_category">Laptops</div>
                                            <div class="banner_2_title">MacBook Air 13</div>
                                            <div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
                                            <div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                            <div class="button banner_2_button"><a href="javascript:void(0)">Explore</a></div>
                                        </div>

                                    </div>
                                    <div class="col-lg-8 col-md-6 fill_height">
                                        <div class="banner_2_image_container">
                                            <div class="banner_2_image"><img src="<c:url  value="/resources/images/banner_2_product.png"/>" alt=""></div>
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Best Sellers -->

        <div class="best_sellers">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="tabbed_container">
                            <div class="tabs clearfix tabs-right">
                                <div class="new_arrivals_title">Hot Best Sellers</div>
                                <ul class="clearfix">
                                    <li class="active">Top 20</li>
                                    <c:forEach var="item" items="${mapProductBestSellerByCategory}">
                                        <li>${item.key.name}</li>
                                    </c:forEach>
                                </ul>
                                <div class="tabs_line"><span></span></div>
                            </div>

                            <div class="bestsellers_panel panel active">
                                <div class="bestsellers_slider slider">
                                    <c:forEach var="item" items="${listProductBestSeller}">
                                        <div class="bestsellers_item discount ${ item.isProductNew ? "is_new" : "" }">
                                            <div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
                                                <div class="bestsellers_image"><img src="${item.image}" alt=""></div>
                                                <div class="bestsellers_content">
                                                    <div class="bestsellers_category"><a href="${pageContext.request.contextPath}/product/${item.id}">${item.categories.name}</a></div>
                                                    <div class="bestsellers_name"><a href="${pageContext.request.contextPath}/product/${item.id}">${item.name}</a></div>
                                                    <div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                    <div class="bestsellers_price discount">&#36;${item.promotionPrice}<span>&#36;${item.price}</span></div>
                                                </div>
                                            </div>
                                            <div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
                                            <ul class="bestsellers_marks">
                                                <li class="bestsellers_mark bestsellers_discount">-${item.promotionPercent}%</li>
                                                <li class="bestsellers_mark bestsellers_new">${ item.isProductNew ? "new" : "" }</li>
                                            </ul>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            
                            <c:forEach var="item" items="${mapProductBestSellerByCategory}">
                                <div class="bestsellers_panel panel">
                                    <div class="bestsellers_slider slider">
                                        <c:forEach var="product" items="${item.value}">
                                            <div class="bestsellers_item discount ${ product.isProductNew ? "is_new" : "" }">
                                                <div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
                                                    <div class="bestsellers_image"><img src="${product.image}" alt=""></div>
                                                    <div class="bestsellers_content">
                                                        <div class="bestsellers_category"><a href="${pageContext.request.contextPath}/product/${product.id}">${product.categories.name}</a></div>
                                                        <div class="bestsellers_name"><a href="${pageContext.request.contextPath}/product/${product.id}">${product.name}</a></div>
                                                        <div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                        <div class="bestsellers_price discount">&#36;${product.promotionPrice}<span>&#36;${product.price}</span></div>
                                                    </div>
                                                </div>
                                                <div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
                                                <ul class="bestsellers_marks">
                                                    <li class="bestsellers_mark bestsellers_discount">-${product.promotionPercent}%</li>
                                                    <li class="bestsellers_mark bestsellers_new">${ product.isProductNew ? "new" : "" }</li>
                                                </ul>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Adverts -->

        <div class="adverts">
            <div class="container">
                <div class="row">

                    <div class="col-lg-4 advert_col">

                        <!-- Advert Item -->

                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_title"><a href="javascript:void(0)">Trends 2018</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur adipiscing Donec et.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="<c:url value="/resources/images/adv_1.png"/>" alt=""></div></div>
                        </div>
                    </div>

                    <div class="col-lg-4 advert_col">

                        <!-- Advert Item -->

                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_subtitle">Trends 2018</div>
                                <div class="advert_title_2"><a href="javascript:void(0)">Sale -45%</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="<c:url value="/resources/images/adv_2.png"/>" alt=""></div></div>
                        </div>
                    </div>

                    <div class="col-lg-4 advert_col">

                        <!-- Advert Item -->

                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_title"><a href="javascript:void(0)">Trends 2018</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="<c:url value="/resources/images/adv_3.png"/>" alt=""></div></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Trends -->

        <div class="trends">
            <div class="trends_background" style="background-image:url(<c:url value="/resources/images/trends_background.jpg"/>)"></div>
            <div class="trends_overlay"></div>
            <div class="container">
                <div class="row">

                    <!-- Trends Content -->
                    <div class="col-lg-3">
                        <div class="trends_container">
                            <h2 class="trends_title">Trends 2018</h2>
                            <div class="trends_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing Donec et.</p></div>
                            <div class="trends_slider_nav">
                                <div class="trends_prev trends_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                                <div class="trends_next trends_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                            </div>
                        </div>
                    </div>

                    <!-- Trends Slider -->
                    <div class="col-lg-9">
                        <div class="trends_slider_container">

                            <!-- Trends Slider -->

                            <div class="owl-carousel owl-theme trends_slider">

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_1.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">Jump White</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_2.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">Samsung Charm...</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_3.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">DJI Phantom 3...</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_1.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">Jump White</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_2.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">Jump White</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="<c:url value="/resources/images/trends_3.jpg"/>" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="javascript:void(0)">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="javascript:void(0)">Jump White</a></div>
                                                <div class="trends_price">$379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
