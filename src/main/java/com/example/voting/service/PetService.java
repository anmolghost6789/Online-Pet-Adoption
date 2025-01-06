package com.onlinepetadoption.service;

import com.onlinepetadoption.dao.PetDAO;
import com.onlinepetadoption.model.Pet;

import java.sql.SQLException;
import java.util.List;

public class PetService {
    private PetDAO petDAO = new PetDAO();

    public List<Pet> getAllPets() throws SQLException {
        return petDAO.getAllPets();
    }
}
