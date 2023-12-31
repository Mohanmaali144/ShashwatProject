package com.shashwat.model;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.shashwat.model.BlogDAO;
import java.util.ArrayList;

public class BlogDTO {

    public boolean insertBlog(BlogDAO blogdao, int userId) {

        System.out.println("" + blogdao.getCategory() + "in dto");
        boolean flag = false;
        Connection con = GetConnection.getConnection();
        String query = "INSERT INTO blog (title,user_id,Category,content,img_url) VALUES (?,?,?,?,?)";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, blogdao.getTitle());
            ps.setInt(2, userId);
            ps.setString(3, blogdao.getCategory());
            ps.setString(4, blogdao.getContent());
            ps.setString(5, blogdao.getImgage());

            if (ps.executeUpdate() > 1) {

                flag = true;
            }
        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }

//    --------------------------get blog -----------------
    public boolean getBlog(ArrayList<BlogDAO> bloglist, String category) {
        boolean flag = false;

        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM blog WHERE category = ?";

        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, category);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                BlogDAO blogdao = new BlogDAO();

                blogdao.setBlogId(rs.getInt("blog_id"));
                blogdao.setTitle(rs.getString("title"));
                blogdao.setCategory(rs.getString("category"));
                blogdao.setPublicationDate(rs.getString("publication_date"));
                blogdao.setContent(rs.getString("content"));
                blogdao.setLikes(rs.getInt("likes"));
                blogdao.setImgage(rs.getString("img_url"));
                bloglist.add(blogdao);
                flag = true;
            }

        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }

    public static boolean getUserBlog(ArrayList<BlogDAO> bloglist, int userId) {
        boolean flag = false;

        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM blog WHERE user_id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            System.out.println("blog===2");
            System.out.println("userid===" + userId);

            while (rs.next()) {
                BlogDAO blogdao = new BlogDAO();
                System.out.println("blog===5");
                blogdao.setBlogId(rs.getInt("blog_id"));
                blogdao.setTitle(rs.getString("title"));
                blogdao.setCategory(rs.getString("category"));
                blogdao.setPublicationDate(rs.getString("publication_date"));
                blogdao.setContent(rs.getString("content"));
                blogdao.setLikes(rs.getInt("likes"));
                blogdao.setImgage(rs.getString("img_url"));
                bloglist.add(blogdao);
                flag = true;
            }

        } catch (SQLException e) {

            System.out.println(e);
            System.out.println("blog===3");
            flag = false;
        }
        System.out.println("blog===4");
        return flag;
    }

    public boolean DeleteUserBlog(ArrayList<BlogDAO> bloglist, int user_id, int blog_id) {
        boolean flag = false;

        Connection con = GetConnection.getConnection();
        String query = " DELETE FROM blog WHERE blog_id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, blog_id);
            if (ps.executeUpdate() > 0) {

                flag = true;
                getUserBlog(bloglist, user_id);
            }
        } catch (SQLException e) {
            System.out.println(e);

            flag = false;
        }

        return flag;
    }

// ===============Like Blog======
    public boolean updateLike(ArrayList<BlogDAO> bloglist, int user_id, int blog_id) {
        boolean flag = false;

        Connection con = GetConnection.getConnection();
        String query = "UPDATE Blog SET likes = ? WHERE blog_id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, blog_id);
            if (ps.executeUpdate() > 0) {

                flag = true;
                getUserBlog(bloglist, user_id);
            }
        } catch (SQLException e) {
            System.out.println(e);

            flag = false;
        }

        return flag;
    }

//    ==============END=========
}
