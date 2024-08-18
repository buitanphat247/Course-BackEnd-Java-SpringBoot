<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Fruitables - Vegetable Website Template</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="" name="keywords">
                <meta content="" name="description">

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                    rel="stylesheet">

                <!-- Icon Font Stylesheet -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="/resources/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/resources/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/resources/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/resources/client/css/style.css" rel="stylesheet">
            </head>

            <body>


                <jsp:include page="../layout/header.jsp" />

                <!-- Modal Search Start -->
                <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-fullscreen">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body d-flex align-items-center">
                                <div class="input-group w-75 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords"
                                        aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i
                                            class="fa fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Search End -->

                <jsp:include page="../layout/banner.jsp" />




                <!-- Fruits Shop Start-->
                <div class="container-fluid fruite py-5">
                    <div class="container py-5">
                        <div class="tab-class text-center">
                            <div class="row g-4">
                                <div class="col-lg-4 text-start">
                                    <h1>Sản phẩm nổi bật</h1>
                                </div>
                                <div class="col-lg-8 text-end">
                                    <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                        <li class="nav-item">
                                            <a class="d-flex m-2 py-2 bg-light rounded-pill active"
                                                data-bs-toggle="pill" href="#tab-1">
                                                <span class="text-dark" style="width: 130px;">All Products</span>
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane fade show p-0 active">
                                    <div class="row g-4">
                                        <div class="col-lg-12">
                                            <div class="row g-4">
                                                <c:forEach var="product" items="${dataProduct}">
                                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                                        <a href="/product/${product.id}">
                                                            <div class="rounded position-relative fruite-item">
                                                                <div class="fruite-img">
                                                                    <img src="/resources/images/uploads/${product.image}"
                                                                        class="img-fluid w-100 rounded-top" alt="">
                                                                </div>
                                                                <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                                                    style="top: 10px; left: 10px;">Laptop</div>
                                                                <div
                                                                    class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                                    <h4 style="font-size: 15px">${product.name}</h4>
                                                                    <p style="font-size: 13px">${product.shortDesc}</p>
                                                                    <div
                                                                        class="d-flex justify-content-between flex-lg-wrap">
                                                                        <p style="font-size: 15px;text-align: center; width: 100%"
                                                                            ; class="text-dark fs-5 fw-bold mb-0">
                                                                            <fmt:formatNumber value="${product.price}"
                                                                                type="currency" />
                                                                        </p>
                                                                        <a href="#"
                                                                            class="mx-auto mt-3 btn border border-secondary rounded-pill px-3 text-primary"><i
                                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                                            Add to
                                                                            cart</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </c:forEach>



                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fruits Shop End-->


                <!-- Featurs Section Start -->
                <div class="container-fluid featurs py-5">
                    <div class="container py-5">
                        <div class="row g-4">
                            <div class="col-md-6 col-lg-3">
                                <div class="featurs-item text-center rounded bg-light p-4">
                                    <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                        <i class="fas fa-car-side fa-3x text-white"></i>
                                    </div>
                                    <div class="featurs-content text-center">
                                        <h5>Free Shipping</h5>
                                        <p class="mb-0">Free on order over $300</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="featurs-item text-center rounded bg-light p-4">
                                    <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                        <i class="fas fa-user-shield fa-3x text-white"></i>
                                    </div>
                                    <div class="featurs-content text-center">
                                        <h5>Security Payment</h5>
                                        <p class="mb-0">100% security payment</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="featurs-item text-center rounded bg-light p-4">
                                    <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                        <i class="fas fa-exchange-alt fa-3x text-white"></i>
                                    </div>
                                    <div class="featurs-content text-center">
                                        <h5>30 Day Return</h5>
                                        <p class="mb-0">30 day money guarantee</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="featurs-item text-center rounded bg-light p-4">
                                    <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
                                        <i class="fa fa-phone-alt fa-3x text-white"></i>
                                    </div>
                                    <div class="featurs-content text-center">
                                        <h5>24/7 Support</h5>
                                        <p class="mb-0">Support every time fast</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Featurs Section End -->


                <!-- Vesitable Shop Start-->
                <div class="container-fluid vesitable py-5">
                    <div class="container py-5">
                        <h1 class="mb-0">Fresh Organic Vegetables</h1>
                        <div class="owl-carousel vegetable-carousel justify-content-center">
                            <c:forEach var="product" items="${dataProduct}">
                                <div class="border border-primary rounded position-relative vesitable-item">
                                    <a href="/product/${product.id}">
                                        <div class="vesitable-img">
                                            <img src="/resources/images/uploads/${product.image}"
                                                class="img-fluid w-100 rounded-top" alt="${product.name}">
                                        </div>
                                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                            <h4 style="font-size: 15px; text-align: center;">${product.name}</h4>
                                            <p style="font-size: 13px; display: block; text-align: center;">
                                                ${product.shortDesc}</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p style="font-size: 15px;text-align: center; width: 100%" ;
                                                    class="text-dark fs-5 fw-bold mb-0">
                                                    <fmt:formatNumber value="${product.price}" type="currency" />
                                                </p>
                                                <a href="#"
                                                    class="mx-auto mt-3 btn border border-secondary rounded-pill px-3 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i>
                                                    Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <!-- Vesitable Shop End -->



                <jsp:include page="../layout/footer.jsp" />






                <!-- JavaScript Libraries -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/resources/client/lib/easing/easing.min.js"></script>
                <script src="/resources/client/lib/waypoints/waypoints.min.js"></script>
                <script src="/resources/client/lib/lightbox/js/lightbox.min.js"></script>
                <script src="/resources/client/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="/resources/client/js/main.js"></script>
            </body>

            </html>