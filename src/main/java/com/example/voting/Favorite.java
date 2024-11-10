package com.example.petadoption;

public class Favorite {
    private int id; // Unique identifier for the favorite action (optional)
    private int userId; // User who marked the pet as a favorite
    private int petId; // Pet that the user is interested in

    // Constructor
    public Favorite(int userId, int petId) {
        this.userId = userId;
        this.petId = petId;
    }

    // Getters and setters for the fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }
}
