/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.manager;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class LoginDTO {
  public boolean login(LoginDAO logindao)
    {
       boolean b=false;
        Connection con=GetConnection.getConnection();
         String sql = "select * from manager_info  where email_id=? and manager_password=?";
       
        try{
            System.out.println("ye bhi..........");
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,logindao.getEmail_id());
            ps.setString(2, logindao.getManager_password());
          
           ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                
            logindao.setManager_name(rs.getString(1));
            logindao.setEmail_id(rs.getString(2));
            logindao.setGender(rs.getString(3));
           

                
                b=true;
            }
        }
           catch (SQLException e) {
            e.printStackTrace();
        }
          
          return b;
}
}