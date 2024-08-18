<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Dashboard - Hỏi Dân IT</title>
                <link href="/resources/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout//header.jsp" />

                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Dashboard</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item">
                                        <a href="/admin">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="/admin/product">Product</a>
                                    </li>
                                    <li class="breadcrumb-item active">Detail</li>
                                </ol>

                                <table class="table table-bordered table-striped">
                                    <c:choose>
                                        <c:when test="${not empty productDetail}">
                                            <tr>
                                                <th>ID:</th>
                                                <td>${productDetail.id}</td>
                                            </tr>
                                            <tr>
                                                <th>Name:</th>
                                                <td>${productDetail.name}</td>
                                            </tr>
                                            <tr>
                                                <th>Price:</th>
                                                <td>
                                                    <fmt:formatNumber value="${productDetail.price}" type="currency" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Quantity:</th>
                                                <td>${productDetail.quantity}</td>
                                            </tr>
                                            <tr>
                                                <th>Short Description:</th>
                                                <td>${productDetail.shortDesc}</td>
                                            </tr>
                                            <tr>
                                                <th>Detail Description:</th>
                                                <td>${productDetail.detailDesc}</td>
                                            </tr>
                                            <tr>
                                                <th>Sold:</th>
                                                <td>${productDetail.sold}</td>
                                            </tr>
                                            <tr>
                                                <th>Factory:</th>
                                                <td>${productDetail.factory}</td>
                                            </tr>
                                            <tr>
                                                <th>Target:</th>
                                                <td>${productDetail.target}</td>
                                            </tr>

                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="2" class="text-center text-danger">
                                                    ${error}
                                                </td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                </table>


                                <a href="/admin/product" type="button" class="btn btn-success">back</a>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/resources/js/scripts.js"></script>
            </body>

            </html>