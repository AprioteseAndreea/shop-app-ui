<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 6/18/2023
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="./resources/css/register.css"
          rel="stylesheet"/>
    <link
            href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
            rel="stylesheet"></link>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"/>

</head>
<body>
<div class="main-container">
    <div class="login-container">
        <div class="credentials-container">
            <div class="titleContainer">
                <div class="title"><b>Register</b></div>
                <div class="subtitle">Create an account so you can easily login next time</div>
            </div>
            <div id="individual" class="form-container">
                <form action="${pageContext.request.contextPath}/register" method="post"
                      onsubmit="return validateForm()">
                    <div class="form-group">
                        <label for="email">*E-mail</label>
                        <input
                                type="email"
                                class="form-control"
                                id="email"
                                name="email"
                                aria-describedby="emailHelp"
                                placeholder="Enter your email"
                        />
                        <label for="username">*Username</label>

                        <input
                                type="text"
                                class="form-control"
                                id="username"
                                name="username"
                                aria-describedby="emailHelp"
                                placeholder="Enter your user name"
                        />

                            <label for="password">*Password</label>
                        <p class="pass-container">
                            <input
                                    type="password"
                                    class="form-control"
                                    name="password"
                                    id="password"
                                    aria-describedby="emailHelp"
                                    placeholder="Enter your password"
                            />
                            <i class="bi bi-eye-slash" id="togglePassword"></i>
                        </p>

                        <script>
                            const togglePassword = document.querySelector("#togglePassword");
                            const password = document.querySelector("#password");

                            togglePassword.addEventListener("click", function () {
                                // toggle the type attribute
                                const type = password.getAttribute("type") === "password" ? "text" : "password";
                                password.setAttribute("type", type);

                                // toggle the icon
                                this.classList.toggle("bi-eye");
                            });


                        </script>
                        <label for="repeated-password">*Confirm password</label>
                        <p class="pass-container">
                        <input
                                type="password"
                                class="form-control"
                                id="repeated-password"
                                name="repeated-password"
                                aria-describedby="emailHelp"
                                placeholder="Confirm your password"
                        />
                            <i class="bi bi-eye-slash" id="togglePassword2"></i>
                        </p>
                        <script>
                            const togglePassword2 = document.querySelector("#togglePassword2");
                            const password2 = document.querySelector("#repeated-password");

                            togglePassword2.addEventListener("click", function () {
                                // toggle the type attribute
                                const type = password2.getAttribute("type") === "password" ? "text" : "password";
                                password2.setAttribute("type", type);

                                // toggle the icon
                                this.classList.toggle("bi-eye");
                            });


                        </script>
                    </div>
                    <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger" role="alert" id="error">
                        <%= request.getAttribute("error") %>
                    </div>
                    <% } %>
                    <div class="button-container">
                        <button
                                type="submit"
                                class="btn btn-primary register"

                        >
                            Register
                        </button>
                    </div>
                    <div class="button-container">
                        <label>Already have an account? </label>
                        <a class="register-text" href="login">
                            <b>Login here</b></a
                        >
                    </div>
                </form>
            </div>

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
