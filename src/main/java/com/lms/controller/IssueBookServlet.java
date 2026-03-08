package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.lms.dao.IssueDAO;
import com.lms.model.IssueBook;

@WebServlet("/issueBook")
public class IssueBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int studentId = Integer.parseInt(request.getParameter("student_id"));
        int bookId = Integer.parseInt(request.getParameter("book_id"));
        String issueDate = request.getParameter("issue_date");

        IssueBook issue = new IssueBook();

        issue.setStudentId(studentId);
        issue.setBookId(bookId);
        issue.setIssueDate(issueDate);

        IssueDAO dao = new IssueDAO();

        String result = dao.issueBook(issue);

        if(result.equals("success")) {

        	response.sendRedirect(request.getContextPath() + "/jsp/viewIssuedBooks.jsp");   

        } else {

            request.setAttribute("error", result);

            RequestDispatcher rd =
                    request.getRequestDispatcher("/jsp/issueBook.jsp");

            rd.forward(request, response);
        }
    }
}