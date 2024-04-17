package com.wuubangdev.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wuubangdev.bookstore.domain.Books;

@Repository
public interface BooksRepository extends JpaRepository<Books, Long> {

}
