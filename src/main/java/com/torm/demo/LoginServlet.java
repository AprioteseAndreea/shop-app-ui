package com.torm.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Perform form validation
        if (StringUtil.isNotEmpty(username) && StringUtil.isNotEmpty(password)) {
            // Form is valid, redirect to dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // Form is invalid, show error message
            request.setAttribute("error", "Please enter both username and password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
    }
}
