package com.torm.demo;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "confirmAccountServlet", value = "/confirm-account")
public class ConfirmAccount extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to the desired JSP file
        request.getRequestDispatcher("confirm-account.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String username = request.getParameter( "username" );

        if (StringUtil.isNotEmpty(code) && StringUtil.isNotEmpty(username)) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("username", username);
            request.setAttribute("error", "Please enter the code.");
            request.getRequestDispatcher("confirm-account.jsp").forward(request, response);
        }
    }
}
