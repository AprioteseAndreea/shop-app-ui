package com.torm.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "forgotPasswordTwo", value = "/forgot-password-two")
public class ForgotPasswordTwo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgot-password-two.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        String repeatedPassword = request.getParameter("repeated-password");
        String username = request.getParameter("username");

        if (StringUtil.isNotEmpty(password) && StringUtil.isNotEmpty(code) && StringUtil.isNotEmpty(repeatedPassword)) {
            response.sendRedirect("login.xhtml");
        } else {
            request.setAttribute("username", username);
            request.setAttribute("error", "Please fill in all fields!");
            request.getRequestDispatcher("forgot-password-two.jsp").forward(request, response);
        }
    }
}
