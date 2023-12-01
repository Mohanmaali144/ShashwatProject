/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.manager;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UserDTO {
    public boolean User(UserDAO udao){
            boolean b = false;
         Connection con=GetConnection.getConnection();
         String sql = "insert into Userinfo(fullName,userName,userEmail,phoneNo,gender,dob,block) values(?,?,?,?,?,?,?)";
         try{
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, udao.getFullName());
          ps.setString(2,udao.getUserName());
          ps.setString(3,udao.getUserEmail());
          ps.setString(4, udao.getPhoneNo());
          ps.setString(5, udao.getGender());
          ps.setString(5, udao.getDob());
          ps.setString(6, udao.getBlock());
          
           if (ps.executeUpdate() > 0) {
                b = true;
            }
         }
         catch(Exception e){
           System.out.println(e);
         }
          return b;
    }
}
    

