package com.torm.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "forgotPasswordServlet", value = "/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to the desired JSP file
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        if (StringUtil.isNotEmpty(username)) {
            request.setAttribute("username", username);
            request.getRequestDispatcher("forgot-password-two.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Please enter the user name.");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);

        }
    }
}
