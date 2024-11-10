package com.example.petadoption;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create a new User object
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        // Implement registration logic using UserService
        UserService userService = new UserService(new JdbcUserDao());
        boolean isRegistered = userService.registerUser(user);

        // Redirect based on registration success or failure
        if (isRegistered) {
            // Redirect to a success page or user dashboard after registration
            response.sendRedirect("dashboard.jsp");
        } else {
            // Display error message if registration fails
            request.setAttribute("errorMessage", "Registration failed. Username may already be taken.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
