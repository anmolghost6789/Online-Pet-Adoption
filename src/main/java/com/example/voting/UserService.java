package com.example.petadoption;

public class UserService {
    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public boolean registerUser(User user) {
        // Additional validation or checks can be added here
        userDao.saveUser(user);
        return true;
    }

    public User loginUser(String username, String password) {
        User user = userDao.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null; // Return null if login fails
    }
}
