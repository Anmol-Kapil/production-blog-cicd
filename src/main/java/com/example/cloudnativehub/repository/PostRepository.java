package com.example.cloudnativehub.repository;

import com.example.cloudnativehub.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<Post, Long> {
}
