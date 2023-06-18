<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link href="./resources/css/login.css"
        rel="stylesheet"/>
  <link
          href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
          rel="stylesheet"></link>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<%--  <script>--%>
<%--    function validateForm() {--%>
<%--      var username = document.getElementById("username").value;--%>
<%--      var password = document.getElementById("password").value;--%>

<%--      if (username.trim() === "") {--%>
<%--        document.getElementById("user-error").style.display = "flex";--%>
<%--      }--%>
<%--      if(password.trim() === ""){--%>
<%--        document.getElementById("pass-error").style.display = "flex";--%>

<%--      }--%>
<%--    }--%>
<%--  </script>--%>
</head>
<body>
<div class="main-container">
  <div class="login-container">
    <div class="credentials-container">
      <div class="title-container">
        <div class="title"><b>Login</b></div>
        <div class="subtitle">
          Enter your credentials to access your account
        </div>
      </div>
      <form class="form" action="login" method="post">
        <div class="form-group">
          <label for="username">*User name</label>
          <input type="text" class="form-control" id="username" name="username"/>

        </div>
        <div class="form-group">
          <div class="password-container">
            <div><label for="password">*Password</label></div>
            <div class="forgotPassword">
              <a
                      class="forgotPassword"
                      href="forgot-password"

              >
                <b>Forgot password?</b></a
              >
            </div>
          </div>
          <input
                  type="password"
                  class="form-control"
                  id="password"
                  name="password"
          />
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
          <label class="form-check-label" for="exampleCheck1"
          >Remember information</label
          >
        </div>
        <% if (request.getAttribute("error") != null) { %>
        <div class="alert alert-danger" role="alert" id="pass-error">
          <%= request.getAttribute("error") %>
        </div>
        <% } %>
        <div class="button-container">
          <input type="submit" class="btn btn-primary login-btn" value="Login"/>
        </div>
        <div class="button-container">
          <label>Don't have an account? </label>
          <a class="register-text" href="register">
            <b>Register here</b></a
          >
        </div>
      </form>
    </div>
  </div>

  <div class="hero-container">
    <label class="slogan"><b>Shopping has never been this much fun!</b></label>
    <label class="slogan-two"><b>With one click you can have everything at your door in just one day!</b></label>

    <img
            src="./resources/images/shop.jpg"
            alt="bicycle-workshop"
            width="500"
    >
  </div>
</div>
</body>
</html>