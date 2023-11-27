package com.shashwat.model;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookDTO {

//    --------insert----------
    public boolean insertBook(BookDAO bdao) {

        boolean flag = false;
        Connection con = GetConnection.getConnection();
        String query = "INSER INTO bookinfo (BookName,PublishingYear,PageNo,Image,Pdf) VALUES (?,?,?,?,?)";

        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, bdao.getBookName());
            ps.setString(2, bdao.getPublishingYear());
            ps.setInt(3, bdao.getPage());

            ps.setString(4, bdao.getImage());
            ps.setString(5, bdao.getPdf());
            if (ps.executeUpdate() > 1) {

                flag = true;
            }
        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }

//    ------------Update----------
    public boolean updateBook(BookDAO bdao) {

        boolean flag = false;
        Connection con = GetConnection.getConnection();
        String query = "Update bookinfo set bookName = ?, PublishingYear = ?,PageNo = ?, Image = ?,Pdf = ? WHERE  bookId = ?";

        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, bdao.getBookName());
            ps.setString(2, bdao.getPublishingYear());
            ps.setInt(3, bdao.getPage());

            ps.setString(4, bdao.getImage());
            ps.setString(5, bdao.getPdf());
            ps.setInt(6, bdao.getBookId());
            if (ps.executeUpdate() > 1) {

                flag = true;
            }
        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }
}
