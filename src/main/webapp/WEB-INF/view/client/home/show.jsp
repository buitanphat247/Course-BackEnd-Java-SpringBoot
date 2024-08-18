<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

            <!-- Libraries Stylesheet -->
            <link href="/resources/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
            <link href="/resources/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


            <!-- Customized Bootstrap Stylesheet -->
            <link href="/resources/client/css/bootstrap.min.css" rel="stylesheet">

            <!-- Template Stylesheet -->
            <link href="/resources/client/css/style.css" rel="stylesheet">
        </head>

        <body>

            <!-- Spinner Start -->
            <div id="spinner"
                class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                <div class="spinner-grow text-primary" role="status"></div>
            </div>
            <!-- Spinner End -->

            <jsp:include page="../layout/header.jsp" />

            <!-- Modal Search Start -->
            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content rounded-0">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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

            <jsp:include page="../layout/feature.jsp" />


            <!-- Vesitable Shop Start-->
            <div class="container-fluid vesitable py-5">
                <div class="container py-5">
                    <h1 class="mb-0">Fresh Organic Vegetables</h1>
                    <div class="owl-carousel vegetable-carousel justify-content-center">
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-6.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Parsely</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-1.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Parsely</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-3.png"
                                    class="img-fluid w-100 rounded-top bg-light" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Banana</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-4.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Bell Papper</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-5.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Potatoes</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-6.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Parsely</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-5.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Potatoes</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="border border-primary rounded position-relative vesitable-item">
                            <div class="vesitable-img">
                                <img src="/resources/client/img/vegetable-item-6.jpg"
                                    class="img-fluid w-100 rounded-top" alt="">
                            </div>
                            <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                style="top: 10px; right: 10px;">Vegetable</div>
                            <div class="p-4 rounded-bottom">
                                <h4>Parsely</h4>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt
                                </p>
                                <div class="d-flex justify-content-between flex-lg-wrap">
                                    <p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                            class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Vesitable Shop End -->



            <jsp:include page="../layout/footer.jsp" />



            <!-- Back to Top -->
            <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                    class="fa fa-arrow-up"></i></a>


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