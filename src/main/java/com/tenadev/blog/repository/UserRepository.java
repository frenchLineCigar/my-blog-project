package com.tenadev.blog.repository;

import com.tenadev.blog.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository <User, Integer> {

}
