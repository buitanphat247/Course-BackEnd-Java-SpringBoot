<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Details</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="m-xl-5">
      <c:choose>
        <c:when test="${not empty dataDetail}">
          <h2>User Details</h2>
          <p><strong>Username:</strong> ${dataDetail.username}</p>
          <p><strong>Full Name:</strong> ${dataDetail.fullname}</p>
          <p><strong>Address:</strong> ${dataDetail.address}</p>
          <p><strong>Phone:</strong> ${dataDetail.phone}</p>
          <p><strong>Email:</strong> ${dataDetail.email}</p>
        </c:when>
        <c:otherwise>
          <p>${error}</p>
        </c:otherwise>
      </c:choose>
      <a href="/admin/user" type="button" class="btn btn-success">back</a>
    </div>
  </body>
</html>
