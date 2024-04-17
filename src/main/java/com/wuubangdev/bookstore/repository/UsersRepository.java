package com.wuubangdev.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wuubangdev.bookstore.domain.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Long> {

}
