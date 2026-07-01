package com.example.cloudnativehub.repository;

import com.example.cloudnativehub.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User save(User userDto);
}
