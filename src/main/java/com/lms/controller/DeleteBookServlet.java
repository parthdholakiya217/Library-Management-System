package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.lms.dao.BookDAO;

@WebServlet("/deleteBook")
public class DeleteBookServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        BookDAO dao = new BookDAO();

        dao.deleteBook(id);

        response.sendRedirect("jsp/viewBooks.jsp");
    }
}