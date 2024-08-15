<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="mx-5 mt-5">
      <div class="d-flex flex-row justify-content-between my-md-3">
        <h2>User Data</h2>
        <a href="/admin/user/create" class="btn btn-create btn-primary">
          Create User
        </a>
      </div>
      <div>
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>Email</th>
              <th>Username</th>
              <th>Password</th>
              <th>Full Name</th>
              <th>Phone</th>
              <th>Address</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="user" items="${dataUser}">
              <tr>
                <td>${user.email}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.fullname}</td>
                <td>${user.phone}</td>
                <td>${user.address}</td>
                <td>
                  <button type="button" class="btn btn-primary">Edit</button>
                  <button type="button" class="btn btn-warning">Update</button>
                  <button type="button" class="btn btn-info">Remove</button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
