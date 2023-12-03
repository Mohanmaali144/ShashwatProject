/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BorrowDTO {

    public boolean adBorrow(Borrow borrowdao) {
        Connection con = GetConnection.getConnection();

        boolean flag = false;
        try {

            String sql = "insert into borrowInfo(user_id,book_id,borrow_date,borrow_expiry,amount,period,isBorrowed) values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, borrowdao.getId());
            ps.setInt(2, borrowdao.getBookId());
            ps.setString(3, borrowdao.getBorrow_date());
            ps.setString(4, borrowdao.getBorrow_expiry());
            ps.setDouble(5, borrowdao.getAmount());
            ps.setInt(6, borrowdao.getPeriod());
            ps.setBoolean(7, true);
            if (ps.executeUpdate() > 0) {

                System.out.println("Boorow Inserted");
                flag = true;

            } else {

            }

        } catch (SQLException e) {
            System.out.println(e);
            return flag;
        }
        return flag;
    }

    public boolean getBorrow(ArrayList<Borrow> borrowdao,int user_id) {
        Connection con = GetConnection.getConnection();

        boolean flag = false;
        try {
            String sql = "SELECT * FROM borrowInfo WHERE user_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Borrow bdao = new Borrow();               
                bdao.setBookId(rs.getInt("book_id"));
                bdao.setBorrow_date(rs.getString("borrow_date"));
                bdao.setBorrow_expiry(rs.getString("borrow_expiry"));
                bdao.setAmount(rs.getDouble("amount"));
                bdao.setPeriod(rs.getInt("period"));
                bdao.setIsBorrowed(rs.getBoolean("isBorrowed"));
                flag = true;
            } 

        } catch (SQLException e) {
            System.out.println(e);
            return flag;
        }
        return flag;
    }

}
