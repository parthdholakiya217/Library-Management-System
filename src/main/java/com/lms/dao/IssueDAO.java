package com.lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lms.model.IssueBook;
import com.lms.util.DBConnection;

public class IssueDAO {

    public String issueBook(IssueBook issue) {

        try {

            Connection con = DBConnection.getConnection();

            // Check Student ID
            PreparedStatement ps1 = con.prepareStatement(
                    "select id from student where id=?");

            ps1.setInt(1, issue.getStudentId());

            ResultSet rs1 = ps1.executeQuery();

            if (!rs1.next()) {
                return "Invalid Student ID";
            }

            // Check Book ID
            PreparedStatement ps2 = con.prepareStatement(
                    "select quantity from book where id=?");

            ps2.setInt(1, issue.getBookId());

            ResultSet rs2 = ps2.executeQuery();

            if (!rs2.next()) {
                return "Invalid Book ID";
            }

            int quantity = rs2.getInt("quantity");

            if (quantity <= 0) {
                return "Book not available";
            }

            // Insert issue record
            PreparedStatement ps3 = con.prepareStatement(
                    "insert into issue_book(student_id,book_id,issue_date,status) values(?,?,?,?)");

            ps3.setInt(1, issue.getStudentId());
            ps3.setInt(2, issue.getBookId());
            ps3.setString(3, issue.getIssueDate());
            ps3.setString(4, "issued");

            ps3.executeUpdate();

            // Decrease book quantity
            PreparedStatement ps4 = con.prepareStatement(
                    "update book set quantity = quantity - 1 where id=?");

            ps4.setInt(1, issue.getBookId());

            ps4.executeUpdate();

            return "success";

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "error";
    }

    public String returnBook(int issueId, String returnDate) {

        try {

            Connection con = DBConnection.getConnection();

            // check issue id and get book id + status
            PreparedStatement ps1 = con.prepareStatement(
                    "select book_id, status from issue_book where id=?");

            ps1.setInt(1, issueId);

            ResultSet rs = ps1.executeQuery();

            if(!rs.next()){
                return "Invalid Issue ID";
            }

            int bookId = rs.getInt("book_id");
            String status = rs.getString("status");

            if(status.equals("returned")){
                return "Book already returned";
            }

            // update issue record
            PreparedStatement ps2 = con.prepareStatement(
                    "update issue_book set return_date=?, status='returned' where id=? AND status ='issued'");

            ps2.setString(1, returnDate);
            ps2.setInt(2, issueId);

            ps2.executeUpdate();

            // increase book quantity
            PreparedStatement ps3 = con.prepareStatement(
                    "update book set quantity = quantity + 1 where id=?");

            ps3.setInt(1, bookId);

            ps3.executeUpdate();

            return "success";

        } catch(Exception e){
            e.printStackTrace();
        }

        return "error";
    }
}