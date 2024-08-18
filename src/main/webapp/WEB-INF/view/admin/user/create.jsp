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
              <li class="breadcrumb-item active">Create</li>
            </ol>

            <div class="form-box container-lg">
              <form enctype="multipart/form-data" method="POST" action="/admin/user/create">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" />
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="fullname">Full Name</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter your full name" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="username">UserName</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" />
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Enter your address" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" />
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="formSelect" class="form-label">Select role</label>
                            <select id="role.name" name="role.name" class="form-select" aria-label="Default select example">
                                <option value="ADMIN">Admin</option>
                                <option value="USER">User</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mb-xl-3">
                            <label for="formFile" class="form-label">Choose avatar</label>
                            <input class="form-control" type="file" id="avatarFile" name="avatarFile" />
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-md-12">
                        <div class="mb-3">
                            <img alt="avatar preview" style="max-height: 250px; display: none" id="avatarPreview" />
                        </div>
                    </div>
                </div>
            
                <button type="submit" class="btn btn-primary btn-sm btn-block">Submit</button>
            </form>
            
            </div>
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
