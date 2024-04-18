package com.wuubangdev.bookstore.services;

import org.springframework.stereotype.Service;

import com.wuubangdev.bookstore.domain.Users;
import com.wuubangdev.bookstore.repository.UsersRepository;

@Service
public class UsersService {
    private final UsersRepository usersRepository;

    public UsersService(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    public void saveUser(Users user) {
        this.usersRepository.save(user);
    }

}
