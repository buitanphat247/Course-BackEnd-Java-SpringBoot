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
                    const avatarFile = $("#productFile");
                    avatarFile.change(function (e) {
                        const imgURL = URL.createObjectURL(e.target.files[0]);
                        console.log("imgURL: ", imgURL);
                        $("#productPreview").attr("src", imgURL);
                        $("#productPreview").css({ display: "block" });
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
                                    <a href="/admin/product">Product</a>
                                </li>
                                <li class="breadcrumb-item active">Create</li>
                            </ol>

                            <div class="form-box container-lg">
                                <form autocomplete="off" enctype="multipart/form-data" method="POST"
                                    action="/admin/product/create">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="name" class="form-label">Product Name</label>
                                                <input required type="text" class="form-control" id="name" name="name"
                                                    placeholder="Enter product name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="price" class="form-label">Price</label>
                                                <input required type="number" class="form-control" id="price"
                                                    name="price" placeholder="Enter product price" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group mb-xl-3">
                                                <label for="detailDesc" class="form-label">Detailed Description</label>
                                                <textarea required class="form-control" id="detailDesc"
                                                    name="detailDesc" rows="4"
                                                    placeholder="Enter detailed description"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="shortDesc" class="form-label">Short Description</label>
                                                <textarea required class="form-control" id="shortDesc" name="shortDesc"
                                                    rows="2" placeholder="Enter short description"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="quantity" class="form-label">Quantity</label>
                                                <input required type="number" class="form-control" id="quantity"
                                                    name="quantity" placeholder="Enter quantity" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="sold" class="form-label">Sold</label>
                                                <input required type="number" class="form-control" id="sold" name="sold"
                                                    placeholder="Enter number of items sold" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="factory" class="form-label">Factory</label>
                                                <select required id="factory" name="factory" class="form-select">
                                                    <option value="Apple">Apple (MacBook)</option>
                                                    <option value="Asus">Asus</option>
                                                    <option value="Lenovo">Lenovo</option>
                                                    <option value="Dell">Dell</option>
                                                    <option value="LG">LG</option>
                                                    <option value="Acer">Acer</option>
                                                    <!-- Thêm các tùy chọn khác nếu cần -->
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="target" class="form-label">Target</label>
                                                <select required id="target" name="target" class="form-select">
                                                    <option value="Gaming">Gaming</option>
                                                    <option value="Student">Sinh viên - Văn phòng</option>
                                                    <option value="Design">Thiết kế đồ họa</option>
                                                    <option value="Lightweight">Mỏng nhẹ</option>
                                                    <option value="Business">Doanh nhân</option>
                                                    <!-- Thêm các tùy chọn khác nếu cần -->
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-xl-3">
                                                <label for="formFile" class="form-label">Choose Image</label>
                                                <input required required class="form-control" type="file"
                                                    id="productFile" name="productFile" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <img alt="product preview" style="max-height: 250px; display: none"
                                                    id="productPreview" />
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
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/resources/js/scripts.js"></script>
        </body>

        </html>