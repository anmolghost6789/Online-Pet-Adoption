package com.example.petadoption;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Implement login logic using UserService
        UserService userService = new UserService(new JdbcUserDao());
        User user = userService.loginUser(username, password);

        // Handle login success or failure
        if (user != null) {
            // Redirect to the main page for the pet adoption platform or a user dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // Redirect to a login error page or display an error message
            request.setAttribute("errorMessage", "Invalid username or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
