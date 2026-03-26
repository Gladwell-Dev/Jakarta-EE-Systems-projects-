/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

/**
 *
 * @author Gladwell
 */



import com.model.Book;
import com.service.BookService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/books")
public class CdiTestServlet extends HttpServlet {
    @Inject
    private BookService bookService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        
        out.println("<html><body>");
        out.println("<h1>Library Books</h1>");
        out.println("<ul>");

        for (Book book : bookService.findAllBooks()) {
            out.println("<li>" + book.getTitle() + " by " + book.getAuthor() + "</li>");
        }

        out.println("</ul>");
        out.println("</body></html>");
    }
}