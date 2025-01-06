package com.example.voting.dao;

import com.onlinepetadoption.model.Pet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PetDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/petadoption";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "password";

    public List<Pet> getAllPets() throws SQLException {
        List<Pet> pets = new ArrayList<>();
        String query = "SELECT * FROM pets";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Pet pet = new Pet(
                    resultSet.getInt("id"),
                    resultSet.getString("name"),
                    resultSet.getString("breed"),
                    resultSet.getInt("age"),
                    resultSet.getString("description")
                );
                pets.add(pet);
            }
        }
        return pets;
    }
}
