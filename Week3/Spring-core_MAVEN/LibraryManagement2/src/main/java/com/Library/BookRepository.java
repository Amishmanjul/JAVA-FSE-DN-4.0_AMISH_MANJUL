package com.Library;

import org.springframework.stereotype.Repository;

@Repository
public class BookRepository {

    public void save(Book book) {
        System.out.println("Book saved: " + book.getTitle());
    }
}
