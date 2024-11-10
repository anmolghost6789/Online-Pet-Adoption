package com.example.petadoption;

import java.sql.*;

public class JdbcFavoriteDao implements FavoriteDao {

    private Connection getConnection() throws SQLException {
        // Updated database connection details
        String url = "jdbc:mysql://localhost:3306/pet_adoption_platform";
        String user = "root";
        String password = "root";

        return DriverManager.getConnection(url, user, password);
    }

    @Override
    public void saveFavorite(Favorite favorite) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(
                     "INSERT INTO favorites (user_id, pet_id) VALUES (?, ?)")) {
            statement.setInt(1, favorite.getUserId());
            statement.setInt(2, favorite.getPetId());
            statement.executeUpdate();
            System.out.println("Favorite added successfully for user ID: " + favorite.getUserId());
        } catch (SQLException e) {
            e.printStackTrace();
            // Consider adding a logger or custom exception handling
        }
    }
}
