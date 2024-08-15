<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/create.css" />
  </head>
  <body>
    <div class="container form-container">
      <div class="form-box">
        <form method="POST" action="/admin/user/create">
          <div class="form-group">
            <label for="email">Email</label>
            <input
              type="email"
              class="form-control"
              id="email"
              name="email"
              placeholder="Enter your email"
            />
          </div>

          <div class="form-group">
            <label for="password">Password</label>
            <input
              type="password"
              class="form-control"
              id="password"
              name="password"
              placeholder="Enter your password"
            />
          </div>

          <div class="form-group">
            <label for="fullname">Full Name</label>
            <input
              type="text"
              class="form-control"
              id="fullname"
              name="fullname"
              placeholder="Enter your full name"
            />
          </div>
          <div class="form-group">
            <label for="username">UserName</label>
            <input
              type="text"
              class="form-control"
              id="username"
              name="username"
              placeholder="Enter your username"
            />
          </div>
          <div class="form-group">
            <label for="address">Address</label>
            <input
              type="text"
              class="form-control"
              id="address"
              name="address"
              placeholder="Enter your address"
            />
          </div>

          <div class="form-group">
            <label for="phone">Phone</label>
            <input
              type="text"
              class="form-control"
              id="phone"
              name="phone"
              placeholder="Enter your phone number"
            />
          </div>

          <button type="submit" class="btn btn-primary btn-sm btn-block">
            Submit
          </button>
        </form>
      </div>
    </div>
  </body>
</html>
