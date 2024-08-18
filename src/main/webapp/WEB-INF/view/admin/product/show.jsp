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
                  <li class="breadcrumb-item active">Product</li>
                </ol>
                <div class="d-flex flex-row justify-content-between my-md-3">
                  <h3>Table Product</h3>
                  <a href="/admin/product/create" class="btn btn-create btn-primary">
                    Create a Product
                  </a>
                </div>
                <div>
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>price</th>
                        <th>factory</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="product" items="${dataProduct}">
                        <tr>
                          <td>${product.id}</td>
                          <td>${product.name}</td>
                          <td>
                            <fmt:formatNumber value="${product.price}" type="currency" />
                          </td>
                          <td>${product.factory}</td>
                          <td>
                            <a href="/admin/product/${product.id}" type="button" class="btn btn-primary">View</a>
                            <a href="/admin/product/update/${product.id}" type="button" class="btn btn-warning">
                              Update
                            </a>
                            <button type="button" class="btn btn-info">
                              Remove
                            </button>
                          </td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
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