/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

/**
 *
 * @author Gladwell
 */
import com.model.Book;
import jakarta.enterprise.context.ApplicationScoped;
import java.util.ArrayList;
import java.util.List;

@ApplicationScoped
public class InMemoryBookService implements BookService {
    private final List<Book> books;

    public InMemoryBookService() {
        books = new ArrayList<>();
        books.add(new Book(1L, "The Great Gatsby", "F. Scott Fitzgerald"));
        books.add(new Book(2L, "To Kill a Mockingbird", "Harper Lee"));
        books.add(new Book(3L, "1984", "George Orwell"));
    }

    @Override
    public List<Book> findAllBooks() {
        return new ArrayList<>(books);
    }
}
