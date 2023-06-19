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

        if (StringUtil.isNotEmpty(password) && StringUtil.isNotEmpty(code) && StringUtil.isNotEmpty(repeatedPassword)) {
            response.sendRedirect("login.jsp");
        } else {
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }
}
