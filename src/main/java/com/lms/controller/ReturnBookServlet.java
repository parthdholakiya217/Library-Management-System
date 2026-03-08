package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.lms.dao.IssueDAO;

@WebServlet("/returnBook")
public class ReturnBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int issueId = Integer.parseInt(request.getParameter("issue_id"));
        String returnDate = request.getParameter("return_date");

        IssueDAO dao = new IssueDAO();

        String result = dao.returnBook(issueId, returnDate);

        if(result.equals("success")){

            response.sendRedirect("jsp/viewIssuedBooks.jsp");

        } else {

            request.setAttribute("error", result);

            RequestDispatcher rd =
                    request.getRequestDispatcher("/jsp/returnBook.jsp");

            rd.forward(request, response);
        }
    }
}