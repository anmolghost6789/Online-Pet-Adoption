package com.example.petadoption;

public interface UserDao {
    void saveUser(User user);

    User getUserByUsername(String username);
}
