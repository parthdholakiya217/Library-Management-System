package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.lms.dao.AdminDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        boolean status = dao.login(username, password);

        if (status) {

            HttpSession session = request.getSession();
            session.setAttribute("admin", username);

            response.sendRedirect("jsp/dashboard.jsp");

        } else {

            response.sendRedirect("jsp/login.jsp?error=1");

        }
    }
}