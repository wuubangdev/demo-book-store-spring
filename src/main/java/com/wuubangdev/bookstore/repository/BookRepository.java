package com.wuubangdev.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wuubangdev.bookstore.domain.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

}
