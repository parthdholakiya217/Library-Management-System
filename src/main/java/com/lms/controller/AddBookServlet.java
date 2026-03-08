package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.lms.dao.BookDAO;
import com.lms.model.Book;

@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String bookName = request.getParameter("book_name");
        String author = request.getParameter("author");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Book b = new Book();

        b.setBookName(bookName);
        b.setAuthor(author);
        b.setCategory(category);
        b.setQuantity(quantity);

        BookDAO dao = new BookDAO();

        dao.addBook(b);

        response.sendRedirect("jsp/viewBooks.jsp");
    }
}