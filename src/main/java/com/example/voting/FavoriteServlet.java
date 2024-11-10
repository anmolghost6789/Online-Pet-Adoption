package com.example.petadoption;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FavoriteServlet extends HttpServlet {

    private FavoriteService favoriteService;

    @Override
    public void init() throws ServletException {
        // Create a FavoriteDao instance (replace with your implementation)
        FavoriteDao favoriteDao = new JdbcFavoriteDao(); // Assuming you have a JdbcFavoriteDao class

        // Create a FavoriteService instance with the FavoriteDao
        favoriteService = new FavoriteServiceImpl(favoriteDao);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/favorite.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        int petId = Integer.parseInt(request.getParameter("petId"));

        Favorite favorite = new Favorite(userId, petId); // Creating a Favorite object

        favoriteService.saveFavorite(favorite);

        // Redirect to a confirmation page or display a success message
        response.sendRedirect("favorite_success.jsp");
    }
}
