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
public class PodcastDTO {
    
     //    --------------------------show data in User table----------------------------------------------------

    public ArrayList<PodcastDAO> getPodcast() {
        Connection con = GetConnection.getConnection();
        ArrayList<PodcastDAO> al = new ArrayList<PodcastDAO>();
        try {
            String sql = "select * from podcastinfo";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("Entered Getmanager");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PodcastDAO dao = new PodcastDAO();
                dao.setCategory(rs.getString("category"));
                dao.setDescription(rs.getString("description"));
                dao.setHostName(rs.getString("host_name"));
                dao.setLanguage(rs.getString("language"));
                dao.setLikes(rs.getInt("likes"));
                dao.setPodcastId(rs.getShort("podcast_id"));
                dao.setReleaseDate(rs.getString("release_date"));
                dao.setThumbnail(rs.getString("thumbnail"));
                dao.setTimeDuration(rs.getString("timeDuration"));
                dao.setTitle(rs.getString("title"));
                dao.setVideoUrl(rs.getString("video_url"));
                al.add(dao);
            }
            System.out.println("" + al);
        } catch (Exception e) {
            System.out.println(e);
        }
        return al;
    }
    
}
