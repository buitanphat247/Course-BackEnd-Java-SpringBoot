<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
    <meta name="author" content="Hỏi Dân IT" />
    <title>Dashboard - Hỏi Dân IT</title>
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <script
      src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
      crossorigin="anonymous"
    ></script>
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
                <a href="/admin/user">User</a>
              </li>
              <li class="breadcrumb-item active">Detail</li>
            </ol>

            <table class="table table-bordered table-striped">
              <c:choose>
                <c:when test="${not empty dataDetail}">
                  <tr>
                    <th>Username:</th>
                    <td>${dataDetail.username}</td>
                  </tr>
                  <tr>
                    <th>Full Name:</th>
                    <td>${dataDetail.fullname}</td>
                  </tr>
                  <tr>
                    <th>Address:</th>
                    <td>${dataDetail.address}</td>
                  </tr>
                  <tr>
                    <th>Phone:</th>
                    <td>${dataDetail.phone}</td>
                  </tr>
                  <tr>
                    <th>Email:</th>
                    <td>${dataDetail.email}</td>
                  </tr>
                  <tr>
                    <th>Role:</th>
                    <td>${dataDetail.role.name}</td>
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

            <a href="/admin/user" type="button" class="btn btn-success">back</a>
          </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
    <script src="/resources/js/scripts.js"></script>
  </body>
</html>
