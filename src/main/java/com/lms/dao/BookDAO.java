package com.lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lms.model.Book;
import com.lms.util.DBConnection;

public class BookDAO {

    public void addBook(Book b) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "insert into book(book_name,author,category,quantity) values(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, b.getBookName());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getCategory());
            ps.setInt(4, b.getQuantity());

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void updateBook(Book b) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "update book set book_name=?,author=?,category=?,quantity=? where id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, b.getBookName());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getCategory());
            ps.setInt(4, b.getQuantity());
            ps.setInt(5, b.getId());

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteBook(int id) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "delete from book where id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}