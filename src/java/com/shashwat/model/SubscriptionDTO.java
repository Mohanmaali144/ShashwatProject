/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model;

import com.shashwat.model.manager.BookDAO;
import com.shashwat.model.manager.BookDTO;
import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;

public class SubscriptionDTO {

    public boolean adSubscription(Subscription subdao) {
        Connection con = GetConnection.getConnection();

        boolean flag = false;
        try {
            System.out.println("nitin 2");

            String sql = "insert into subscriptionInfo(user_id,isSubscribed,start_date,subsExpiryDate,subsPeriod,subsAmount) values(?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, subdao.getId());
            ps.setBoolean(2, true);
            ps.setString(3, subdao.getStart_date());
            ps.setString(4, subdao.getSubsExpiryDate());
            ps.setInt(5, subdao.getSubsPeriod());
            ps.setDouble(6, subdao.getSubsAmount());
            if (ps.executeUpdate() > 0) {

                System.out.println("Inserted");
                flag = true;

            } else {

            }

        } catch (SQLException e) {
            System.out.println(e);
            return flag;
        }
        return flag;
    }

    public boolean getSubscription(Subscription subdao) {
        Connection con = GetConnection.getConnection();

        boolean flag = false;
        try {
            String sql = "select * from subscriptionInfo WHERE user_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, subdao.getId());

            System.out.println("user id ====    "+subdao.getId());
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                
                subdao.setSubs_id(rs.getInt("subs_id"));
                subdao.setIsSubscribed(rs.getBoolean("isSubscribed"));
                subdao.setStart_date(rs.getString("start_date"));
                subdao.setSubsExpiryDate(rs.getString("subsExpiryDate"));
                subdao.setCreated_at(rs.getString("created_at"));
                subdao.setSubsPeriod(rs.getInt("subsPeriod"));
                subdao.setSubsAmount(rs.getDouble("subsAmount"));

                System.out.println("get data");
                flag = true;
                
                System.out.println("come in getSubscription");

            }
        } catch (SQLException e) {
            System.out.println(e);
            return flag;
        }
        return flag;
    }
}
