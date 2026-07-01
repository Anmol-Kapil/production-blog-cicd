package com.example.cloudnativehub.service;

import com.example.cloudnativehub.model.User;

public interface UserService {
    User findByUsername(String username);

    User save(User userDto);

}