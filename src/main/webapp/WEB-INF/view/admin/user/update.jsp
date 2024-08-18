<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script>
        $(document).ready(() => {
          const avatarFile = $("#avatarFile");
          avatarFile.change(function (e) {
            const imgURL = URL.createObjectURL(e.target.files[0]);
            console.log("imgURL: ", imgURL);
            $("#avatarPreview").attr("src", imgURL);
            $("#avatarPreview").css({ display: "block" });
          });
        });
      </script>
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
                  <a href="/admin/user">User</a>
                </li>
                <li class="breadcrumb-item active">Update</li>
              </ol>

              <div class="form-box container-lg">
                <form autocomplete="off" enctype="multipart/form-data" method="POST"
                  action="/admin/user/update/${userData.id}">

                  <div class="form-group mb-xl-3">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email"
                      value="${userData.email}" defaultValue="${userData.email}" />
                  </div>
                  <div class="form-group mb-xl-3">
                    <label for="fullname">Full Name</label>
                    <input type="text" class="form-control" id="fullname" name="fullname"
                      placeholder="Enter your full name" value="${userData.fullname}"
                      defaultValue="${userData.fullname}" />
                  </div>
                  <div class="form-group mb-xl-3">
                    <label for="username">UserName</label>
                    <input type="text" class="form-control" id="username" name="username"
                      placeholder="Enter your username" value="${userData.username}"
                      defaultValue="${userData.username}" />
                  </div>
                  <div class="form-group mb-xl-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="Enter your address"
                      value="${userData.address}" defaultValue="${userData.address}" />
                  </div>
                  <div class="form-group mb-xl-3">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone"
                      placeholder="Enter your phone number" value="${userData.phone}"
                      defaultValue="${userData.phone}" />
                  </div>
                  <div class="mb-3">
                    <label for="formSelect" class="form-label">Select role</label>
                    <select id="role.name" name="role.name" class="form-select">
                      <option value="ADMIN" <c:if test="${userData.role.name == 'ADMIN'}">selected</c:if>
                        >
                        Admin
                      </option>
                      <option value="USER" <c:if test="${userData.role.name == 'USER'}">selected</c:if>
                        >
                        User
                      </option>
                    </select>
                  </div>
                  <div class="mb-3">
                    <label for="formFile" class="form-label">Choose avatar</label>
                    <input class="form-control" type="file" id="avatarFile" name="avatarFile" method="POST"
                      value="${userData.avatar}" defaultValue="${userData.avatar}" />
                  </div>

                  <div class="mb-3">
                    <img alt="avatar preview" style="max-height: 250px"
                      src="/resources/images/uploads/${userData.avatar}" id="avatarPreview" />
                  </div>
                  <button type="submit" class="btn btn-primary btn-sm btn-block">
                    Submit
                  </button>
                </form>
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