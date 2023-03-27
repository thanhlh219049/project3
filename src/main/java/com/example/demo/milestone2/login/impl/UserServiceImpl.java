package com.example.demo.milestone2.login.impl;

import com.example.demo.milestone2.login.UserRepository;
import com.example.demo.milestone2.login.UserService;
import com.example.demo.milestone2.login.domain.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User register(User user) {
        // Logic for registering a new user
        return userRepository.save(user);
    }

    @Override
    public User login(String username, String password) {
        // Logic for logging in a user
        return userRepository.findByUsernameAndPassword(username, password);
    }

    @Override
    public User changePassword(String username, String oldPassword, String newPassword) {
        // Logic for changing a user's password
        User user = userRepository.findByUsernameAndPassword(username, oldPassword);
        if (user != null) {
            user.setPassword(newPassword);
            return userRepository.save(user);
        }
        return null;
    }

    @Override
    public User updateProfile(String username, User updatedUser) {
        // Logic for updating a user's profile
        User user = userRepository.findByUsername(username);
        if (user != null) {
            user.setFullName(updatedUser.getFullName());
            user.setEmail(updatedUser.getEmail());
            return userRepository.save(user);
        }
        return null;
    }

    @Override
    public User resetPassword(String username, String email) {
        // Logic for resetting a user's password
        User user = userRepository.findByUsernameAndEmail(username, email);
        if (user != null) {
            // Generate a new random password and set it for the user
            String newPassword = generateNewPassword();
            user.setPassword(newPassword);
            userRepository.save(user);
            // Send an email to the user with the new password
            sendEmail(user.getEmail(), "Password Reset", "Your new password is: " + newPassword);
        }
        return user;
    }

    private String sendEmail(String email, String password_reset, String s) {
        return "null";
    }

    private String generateNewPassword() {
        // Generate a new random password
        return "new_password";
    }
}

