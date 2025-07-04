package com.Library;

import org.springframework.stereotype.Service;

@Service
public class BookService {

    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void addBook(Book book) {
        System.out.println("Adding book: " + book.getTitle());
        bookRepository.save(book);
    }
}
