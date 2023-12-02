/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.manager;

import com.shashwat.service.GetConnection;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author HP
 */
public class AudioDTO {
    
    //    --------------------------show data in User table----------------------------------------------------

    public ArrayList<AudioDAO> getAudioBooks() {
        Connection con = GetConnection.getConnection();
        ArrayList<AudioDAO> al = new ArrayList<AudioDAO>();
        try {
            String sql = "select * from audiobooks";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("Entered Getmanager");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                AudioDAO dao = new AudioDAO();
                dao.setAudioId(rs.getInt("audio_id"));
                dao.setDescription(rs.getString("description"));
                dao.setGenre(rs.getString("genre"));
                dao.setLanguage(rs.getString("language"));
                dao.setLikes(rs.getInt("likes"));
                dao.setReleaseDate(rs.getString("release_date"));
                dao.setSpeakerName(rs.getString("speaker_name"));
                dao.setThumbnail(rs.getString("thumbnail"));
                dao.setTimeDuration(rs.getString("timeDuration"));
                dao.setTitle(rs.getString("title"));
                dao.setUrl(rs.getString("audio_url"));
                al.add(dao);
            }
            System.out.println("" + al);
        } catch (Exception e) {
            System.out.println(e);
        }
        return al;
    }
    
}
