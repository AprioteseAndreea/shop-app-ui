<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
    <link href="./resources/css/login.css"
          rel="stylesheet" />
    <link
            href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
            rel="stylesheet"></link>
</head>
<body>
<%--<h1><%= "Hello World!" %></h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
<div class="container">
  <div class="card">
    <form class="form" action="${pageContext.request.contextPath}/login" method="post">
      <h2 class="title-form-login">Please login</h2>
      <br />
      <div class="input-container">
        <label for="username"></label>
        <input class="input-text effect-input" id="username"
               placeholder="Username" name="username"
              ></input>
        <i class="fa fa-user icon"></i>
      </div>
      <br />
      <div class="input-container">
        <label for="password"></label>
        <input class="input-text effect-input" id="password" name="password"
               placeholder="Password"
              ></input>
        <i class="fa fa-lock icon"></i>
      </div>
      <span id="error-message"></span>
      <br />
      <div class="form-group">
        <input type="submit" class="btn btn-primary" value="Submit" />

      </div>
      <br />
    </form>
  </div>
</div>
</body>
</html>