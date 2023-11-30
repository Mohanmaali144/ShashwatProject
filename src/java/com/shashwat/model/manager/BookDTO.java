package com.shashwat.model.manager;

import com.shashwat.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookDTO {

    public boolean addBook(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        System.out.println("Connection Done");
        boolean flag = false;
        int auth = addAuthor(bookdao);
        int gen = addGenre(bookdao);

        System.out.println(auth);
        System.out.println(gen);

       
        if (auth != 0 && gen != 0) {
            try {
                System.out.println("nitin 2");

                String sql = "insert into BookDetails(bookName, publishingYear,pageNo,img_path,pdf_path,genre_id,Author_id) values(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, bookdao.getBookName());
                ps.setString(2, bookdao.getPublishingYear());
                ps.setInt(3, bookdao.getPageNo());
                ps.setString(4, bookdao.getImg());
                ps.setString(5, bookdao.getPdf());
                ps.setInt(6, gen);
                ps.setInt(7, auth);
                if (ps.executeUpdate() > 0) {

                    System.out.println("Inserted");
                    flag = true;
                }

            } catch (SQLException e) {
                System.out.println(e);
                flag = false;
            }
        }

        return flag;
    }

    private int addAuthor(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();

        try {

            String gen = "SELECT Author_id FROM AuthorInfo WHERE Author_name = ?";
            PreparedStatement ps = con.prepareStatement(gen);
            ps.setString(1, bookdao.getAuthorName());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return 0;
    }

    private int addGenre(BookDAO bookdao) throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();

        try {
            String gen = "SELECT genre_id FROM GenreInfo WHERE genre = ?";
            PreparedStatement ps = con.prepareStatement(gen);
            ps.setString(1, bookdao.getGenre());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
        return 0;
    }

    public ArrayList<BookDAO> getAuthor() throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        ArrayList<BookDAO> al = new ArrayList<BookDAO>();
        try {
            String sql = "select * from AuthorInfo;";
            PreparedStatement ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bookdao = new BookDAO();
                System.out.println(rs.getInt(1));
                System.out.println(rs.getString(2));
                bookdao.setAuthorId(rs.getInt(1));
                bookdao.setAuthorName(rs.getString(2));

                al.add(bookdao);

            }

//            System.out.println(al + "Added to array list");
        } catch (SQLException e) {
            System.out.println(e);
        }
        return al;
    }

    public ArrayList<BookDAO> getGenre() throws ClassNotFoundException {
        Connection con = GetConnection.getConnection();
        ResultSet rs = null;
        ArrayList<BookDAO> al = new ArrayList<>();
        try {
            String sql = "select * from GenreInfo;";
            PreparedStatement ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                BookDAO bookdao = new BookDAO();

                bookdao.setGenreId(rs.getInt(1));
                bookdao.setGenre(rs.getString(2));

                al.add(bookdao);

            }

            System.out.println(al + "Added to array list");
        } catch (SQLException e) {
            System.out.println(e);
        }
        return al;
    }

    public static void main(String[] args) throws ClassNotFoundException {
        BookDAO dao = new BookDAO();
        dao.getGenre();
    }

}
