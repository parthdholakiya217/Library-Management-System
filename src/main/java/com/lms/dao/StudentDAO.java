package com.lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lms.model.Student;
import com.lms.util.DBConnection;

public class StudentDAO {

    public void addStudent(Student s) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "insert into student(name,email,course,mobile) values(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());
            ps.setString(4, s.getMobile());

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void updateStudent(Student s) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "update student set name=?,email=?,course=?,mobile=? where id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());
            ps.setString(4, s.getMobile());
            ps.setInt(5, s.getId());

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteStudent(int id) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "delete from student where id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}