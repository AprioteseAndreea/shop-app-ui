<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot password</title>
    <link href="./resources/css/login.css"
          rel="stylesheet"/>
    <link href="./resources/css/forgot-password.css"
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
            <div class="title-container">
                <div class="title"><b>Forgot Password</b></div>
                <div class="subtitle">
                    A validation code has been sent to the email address associated with the user <b><%= request.getAttribute("username") %></b>. To reset
                    your password please complete the fields below.
                </div>
            </div>
            <form class="form" action="forgot-password-two" method="post">
                <div class="form-group">
                    <input type="hidden" class="form-control" id="username" name="username"
                           placeholder="Enter your user name" value="<%= request.getAttribute("username") %>">

                </div>
                <div class="form-group">
                    <label for="code">*Validation code</label>
                    <input type="number" class="form-control" id="code" name="code"
                           placeholder="Enter the validation code">

                </div>
                <div class="form-group">
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
                </div>
                <div class="form-group">
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
                    <span id="passwordMatchError" style="color: red;"></span>
                    <script>
                        const passwordInput = document.getElementById("password");
                        const confirmPasswordInput = document.getElementById("repeated-password");
                        const passwordMatchError = document.getElementById("passwordMatchError");

                        confirmPasswordInput.addEventListener("keyup", function() {
                            const password = passwordInput.value;
                            const confirmPassword = confirmPasswordInput.value;

                            if (password !== confirmPassword) {
                                passwordMatchError.textContent = "Passwords do not match.";
                            } else {
                                passwordMatchError.textContent = "";
                            }
                        });
                    </script>
                </div>

                <% if (request.getAttribute("error") != null) { %>
                <div class="alert alert-danger" role="alert" id="pass-error">
                    <%= request.getAttribute("error") %>
                </div>
                <% } %>
                <div class="button-container">
                    <input type="submit" class="btn btn-primary login-btn" value="Reset password" id="submitButton"/>
                </div>
<%--                <script>--%>
<%--                    const usernameInput = document.getElementById("username");--%>
<%--                    const codeInput = document.getElementById("code");--%>
<%--                    const passwordInput2 = document.getElementById("password");--%>
<%--                    const confirmPasswordInput2 = document.getElementById("repeated-password");--%>
<%--                    const submitButton = document.getElementById("submitButton");--%>

<%--                    function validateForm() {--%>
<%--                        const username = usernameInput.value;--%>
<%--                        const code = codeInput.value;--%>
<%--                        const password = passwordInput2.value;--%>
<%--                        const confirmPassword = confirmPasswordInput2.value;--%>

<%--                        if (username && code && password && confirmPassword && password === confirmPassword) {--%>
<%--                            submitButton.disabled = false;--%>
<%--                        } else {--%>
<%--                            submitButton.disabled = true;--%>
<%--                        }--%>
<%--                    }--%>

<%--                    usernameInput.addEventListener("keyup", validateForm);--%>
<%--                    codeInput.addEventListener("keyup", validateForm);--%>
<%--                    passwordInput2.addEventListener("keyup", validateForm);--%>
<%--                    confirmPasswordInput2.addEventListener("keyup", validateForm);--%>
<%--                </script>--%>

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