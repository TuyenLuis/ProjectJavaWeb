<%-- 
    Document   : checkout
    Created on : Jan 4, 2020, 5:15:02 PM
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
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/components/sweetalert2/dist/sweetalert2.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/contact_styles.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/contact_responsive.css"/>">
        <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
        <script src="<c:url value="/resources/components/AlertifyJS/alertify.min.js"/>"></script>
        <script src="<c:url value="/resources/components/sweetalert2/dist/sweetalert2.all.min.js"/>"></script>
        <script src="<c:url value="/resources/js/shopping_cart.js"/>" ></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="contact_info">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

                            <!-- Contact Item -->
                            <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                                <div class="contact_info_image"><img src="<c:url value="/resources/images/contact_1.png"/>" alt=""></div>
                                <div class="contact_info_content">
                                    <div class="contact_info_title">Phone</div>
                                    <div class="contact_info_text">+84 963 566 703</div>
                                </div>
                            </div>

                            <!-- Contact Item -->
                            <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                                <div class="contact_info_image"><img src="<c:url value="/resources/images/contact_2.png"/>" alt=""></div>
                                <div class="contact_info_content">
                                    <div class="contact_info_title">Email</div>
                                    <div class="contact_info_text">a5lhp.swift@gmail.com</div>
                                </div>
                            </div>

                            <!-- Contact Item -->
                            <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                                <div class="contact_info_image"><img src="<c:url value="/resources/images/contact_3.png"/>" alt=""></div>
                                <div class="contact_info_content">
                                    <div class="contact_info_title">Address</div>
                                    <div class="contact_info_text">10 Suffolk at Soho, London, UK</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="contact_form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="contact_form_container">
                            <div class="contact_form_title">Get in Touch</div>

                            <form action="#" id="contact_form">
                                <div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
                                    <input name="customerName" type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Your name" required="required" data-error="Name is required.">
                                    <input name="customerEmail" type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="Your email" required="required" data-error="Email is required.">
                                    <input name="customerPhone" type="text" id="contact_form_phone" class="contact_form_phone input_field" placeholder="Your phone number" required="required" data-error="Phone number is required.">
                                </div>
                                <div class="contact_form_text">
                                    <textarea name="customerPhone" id="contact_form_address" class="text_field contact_form_message" rows="4" placeholder="Address" required="required" data-error="You need to provide your address."></textarea>
                                </div>
                                <div class="contact_form_button">
                                    <button type="button" class="button contact_submit_button">Checkout</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
            <div class="panel"></div>
        </div>
                                
        <jsp:include page="footer.jsp"></jsp:include>
        <script type="text/javascript" src="<c:url value="/resources/js/contact_custom.js"/>"></script>
    </body>
</html>
