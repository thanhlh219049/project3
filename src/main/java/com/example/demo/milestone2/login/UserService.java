package com.example.demo.milestone2.login;

import com.example.demo.milestone2.login.domain.User;


public interface UserService {
    User findByUsername(String username);
    User findByEmail(String email);
    User register(User user);
    User login(String username, String password);
    User changePassword(String username, String oldPassword, String newPassword);
    User updateProfile(String username, User updatedUser);
    User resetPassword(String username, String email);
}


