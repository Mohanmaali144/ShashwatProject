/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.admin;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class AdminDTO {
    public boolean adminLogin(AdminDAO adao)
    {
        boolean b=false;
        Connection con=GetConnection.getConnection();
        if(con != null)
        {
            String sql="select * from AdminInfo where admin_name= ? and admin_code= ?";
            try{
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, adao.getAdmin_name());
                ps.setString(2, adao.getAdmin_code());
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    b=true;
                }
            }
            catch(SQLException e){
                System.out.println(e);
            }
        }
        return b;
    }
}    
      
          