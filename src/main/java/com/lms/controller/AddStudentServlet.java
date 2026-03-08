package com.lms.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.lms.dao.StudentDAO;
import com.lms.model.Student;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String mobile = request.getParameter("mobile");

        Student s = new Student();

        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);
        s.setMobile(mobile);

        StudentDAO dao = new StudentDAO();

        dao.addStudent(s);

        response.sendRedirect("jsp/viewStudents.jsp");
    }
}