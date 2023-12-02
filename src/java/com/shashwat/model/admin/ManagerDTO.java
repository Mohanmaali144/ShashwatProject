/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.admin;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.*;

/**
 *
 * @author HP
 */
public class ManagerDTO {

    public boolean addManager(ManagerDAO mdao) {
        boolean b = false;
        Connection con = GetConnection.getConnection();
        String sql = "insert into manager_info (manager_name,email_id,phone_number,gender,address,manager_password) values (?,?,?,?,?,?)";
        try {
            System.out.println("ye bhi..........");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, mdao.getManager_name());
            ps.setString(2, mdao.getEmail_id());
            ps.setString(3, mdao.getPhone_number());
            ps.setString(4, mdao.getGender());
            ps.setString(5, mdao.getAddress());
            ps.setString(6, mdao.getManager_password());
            int i = ps.executeUpdate();
            System.out.println("" + i);
            if (i > 0) {
                System.out.println("ye bhi..........");
                b = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return b;
    }
//    --------------------------show data in manager table----------------------------------------------------

    public ArrayList<ManagerDAO> getManager() {
        Connection con = GetConnection.getConnection();
        ArrayList<ManagerDAO> al = new ArrayList<ManagerDAO>();
        try {
            String sql = "select * from manager_info";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("Entered Getmanager");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ManagerDAO dao = new ManagerDAO();
                dao.setManager_id(rs.getInt("manager_id"));
                dao.setManager_name(rs.getString("manager_name"));
                dao.setEmail_id(rs.getString("email_id"));
                dao.setPhone_number(rs.getString("phone_number"));
                dao.setGender(rs.getString("gender"));
                dao.setAddress(rs.getString("address"));
                dao.setManager_password(rs.getString("manager_password"));
                al.add(dao);
            }
            System.out.println("" + al);
        } catch (Exception e) {
            System.out.println(e);
        }
        return al;
    }
}
