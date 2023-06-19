package com.torm.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "register", value = "/register")

public class RegisterServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to the desired JSP file
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repeatedPassword = request.getParameter("repeated-password");
        if (StringUtil.isNotEmpty(email) && StringUtil.isNotEmpty(username) && StringUtil.isNotEmpty(password) && StringUtil.isNotEmpty(repeatedPassword)) {
            // All properties are not empty, redirect to confirm-account.jsp
            response.sendRedirect("confirm-account.jsp");
        } else {
            // At least one property is empty, print a error message
            request.setAttribute("error", "Please fill in all fields!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }



    }
}
