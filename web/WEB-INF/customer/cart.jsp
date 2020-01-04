<%-- 
    Document   : cart
    Created on : Jan 3, 2020, 2:08:21 PM
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
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/components/AlertifyJS/css/alertify.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart_styles.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart_responsive.css"/>">
        <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
        <script src="<c:url value="/resources/components/AlertifyJS/alertify.min.js"/>"></script>
        <!--<script src="<c:url value="/resources/components/sweetalert2/dist/sweetalert2.all.min.js"/>"></script>-->
        <script src="<c:url value="/resources/js/shopping_cart.js"/>" ></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="cart_section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="cart_container">
                            <div class="cart_title">Shopping Cart</div>
                            <c:if test="${ sessionScope.CART_TOTAL_NUM == null || sessionScope.CART_TOTAL_NUM == 0 }">
                                <div class="order_total">
                                    <div class="order_total_content text-center">
                                        <div class="order_total_title">Không có sản phẩm trong giỏ hàng</div>
                                    </div>
                                </div>
                                <div class="cart_buttons">
                                    <button type="button" class="button cart_button_clear" onclick="window.location.href = '${pageContext.request.contextPath}/category/0'">Shop Now</button>
                                </div>
                            </c:if>
                            <c:if test="${ sessionScope.CART_TOTAL_NUM != null && sessionScope.CART_TOTAL_NUM != 0 }">
                                <div class="cart_items">
                                    <ul class="cart_list">
                                        <c:forEach var="map" items="${sessionScope.SHOPPING_CART}">
                                            <li data-uid="${map.value.product.id}" class="cart_item clearfix">
                                                <div class="cart_item_image"><img src="${map.value.product.image}" alt=""></div>
                                                <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                                    <div class="cart_item_name cart_info_col">
                                                        <div class="cart_item_title">Name</div>
                                                        <div class="cart_item_text" style="min-width: 300px; max-width: 300px;">${map.value.product.name}</div>
                                                    </div>
                                                    <div class="cart_item_quantity cart_info_col">
                                                        <div class="cart_item_title">Quantity</div>
                                                        <div class="cart_item_text" style="margin-top: 30px">
                                                            <input class="form-control shopping_cart_quantity_${map.value.product.id}" type="number" class="form-control" value="${map.value.quantity}" style="width: 50px; color: #a3a3a3;"/>
                                                        </div>
                                                    </div>
                                                    <div class="cart_item_price cart_info_col">
                                                        <div class="cart_item_title">Price</div>
                                                        <div class="cart_item_text shopping_cart_price_${map.value.product.id}" data-price="${map.value.product.promotionPrice}" style="min-width: 60px;">&#36;${map.value.product.promotionPrice != null ? map.value.product.promotionPrice : map.value.product.price}</div>
                                                    </div> 
                                                    <div class="cart_item_total cart_info_col">
                                                        <div class="cart_item_title">Total</div>
                                                        <div class="cart_item_text shopping_cart_total_${map.value.product.id}" style="min-width: 80px;">&#36;${map.value.product.promotionPrice * map.value.quantity}</div>
                                                    </div>
                                                    <div class="cart_item_total cart_info_col">
                                                        <div class="cart_item_title">Change</div>
                                                        <div class="btn-group" style="margin-top: 30px; margin-left: 20px;">
                                                            <button data-target="${map.value.product.id}" title="Edit" type="button" class="btn btn-primary edit_quantity_shopping_cart"><i class="fa fa-edit"></i></button>
                                                            <button data-target="${map.value.product.id}" title="Delete" type="button" class="btn btn-danger delete_product_shopping_cart"><i class="fa fa-trash-alt"></i></button>
                                                        </div>
                                                    </div>
                                                    <div class="cart_item_total cart_info_col">
                                                        <div class="cart_item_title">Checkout</div>
                                                        <div style="margin-top: 30px; margin-left: 20px;">
                                                            <label class="container-checkbox">
                                                                <input type="checkbox" checked="checked" style="pointer-events: none;">
                                                                <span class="checkmark active" data-uid="${map.value.product.id}"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <!-- Order Total -->
                                <div class="order_total">
                                    <div class="order_total_content text-md-right">
                                        <div class="order_total_title">Order Total:</div>
                                        <div class="order_total_amount">&#36;${sessionScope.CART_TOTAL_PRICE}</div>
                                    </div>
                                </div>

                                <div class="cart_buttons">
                                    <button onclick="window.location.href = '${pageContext.request.contextPath}/category/0'" type="button" class="button cart_button_clear">Continue Order</button>
                                    <button type="button" class="button cart_button_checkout">Checkout</button>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        <script type="text/javascript" src="<c:url value="/resources/js/cart_custom.js"/>"></script>
    </body>
</html>
