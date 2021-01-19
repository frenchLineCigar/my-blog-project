package com.tenadev.blog.repository;

import com.tenadev.blog.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository  extends JpaRepository <User, Integer> {
    // JPA Named Query
    // SELECT * FROM user WHERE username = ?1 AND password = ?2"
    User findByUsernameAndPassword(String username, String password);

    // @Query(value = "SELECT * FROM user WHERE username = ?1 AND password = ?2", nativeQuery = true)
    // User login(String username, String password);

}
