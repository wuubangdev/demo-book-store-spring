package com.wuubangdev.bookstore.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.wuubangdev.bookstore.domain.User;
import com.wuubangdev.bookstore.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        this.userRepository.save(user);
    }

    public List<User> fetchAll() {
        return this.userRepository.findAll();
    }

    public Optional<User> fetchById(long id) {
        return this.userRepository.findById(id);
    }
}
