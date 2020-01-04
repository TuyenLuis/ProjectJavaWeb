<%-- 
    Document   : footer
    Created on : Dec 10, 2019, 3:48:55 PM
    Author     : a5lhp
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 footer_col">
                        <div class="footer_column footer_contact">
                            <div class="logo_container">
                                <div class="logo"><a href="${pageContext.request.contextPath}/home.html">OneTech</a></div>
                            </div>
                            <div class="footer_title">Got Question? Call Us 24/7</div>
                            <div class="footer_phone">+38 068 005 3570</div>
                            <div class="footer_contact_text">
                                <p>17 Princess Road, London</p>
                                <p>Grester London NW18JR, UK</p>
                            </div>
                            <div class="footer_social">
                                <ul>
                                    <li><a href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fab fa-google"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fab fa-vimeo-v"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 offset-lg-2">
                        <div class="footer_column">
                            <ul class="footer_list footer_list_2">
                                <c:forEach var="item" items="${listCategoriesFooter}">
                                    <li><a href="${pageContext.request.contextPath}/category/${item.id}">${item.name}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-2 offset-lg-2">
                        <div class="footer_column">
                            <div class="footer_title">Customer Care</div>
                            <ul class="footer_list">
                                <li><a href="javascript:void(0)">My Account</a></li>
                                <li><a href="javascript:void(0)">Order Tracking</a></li>
                                <li><a href="javascript:void(0)">Wish List</a></li>
                                <li><a href="javascript:void(0)">Customer Services</a></li>
                                <li><a href="javascript:void(0)">Returns / Exchange</a></li>
                                <li><a href="javascript:void(0)">FAQs</a></li>
                                <li><a href="javascript:void(0)">Product Support</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </footer>

        <!-- Copyright -->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col">

                        <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
                            <div class="copyright_content">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                                with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                          target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </div>
                            <div class="logos ml-sm-auto">
                                <ul class="logos_list">
                                    <li><a href="javascript:void(0)"><img src="<c:url value="/resources/images/logos_1.png"/>" alt=""></a></li>
                                    <li><a href="javascript:void(0)"><img src="<c:url value="/resources/images/logos_2.png"/>" alt=""></a></li>
                                    <li><a href="javascript:void(0)"><img src="<c:url value="/resources/images/logos_3.png"/>" alt=""></a></li>
                                    <li><a href="javascript:void(0)"><img src="<c:url value="/resources/images/logos_4.png"/>" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="<c:url value="/resources/styles/bootstrap4/popper.js"/>"></script>
    <script src="<c:url value="/resources/styles/bootstrap4/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js"/>"></script>
    <script src="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
    <script src="<c:url value="/resources/plugins/slick-1.8.0/slick.js"/>"></script>
    <script src="<c:url value="/resources/plugins/easing/easing.js"/>"></script>
</body>
</html>
