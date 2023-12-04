package com.shashwat.model;

import com.shashwat.model.manager.BookDAO;
import com.shashwat.service.GetConnection;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class UserDTO {

    private static SecretKeySpec secretKey;
    private static byte[] key;

    //    -------login----
    public boolean login(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM usersinfo WHERE userName = ?";
        ResultSet rs;
        boolean b = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getUsername());

            rs = ps.executeQuery();
            if (rs.next()) {

                String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                if (decryptedPassword.equals(udao.getPassword())) { // Compare the decrypted password with the input password
                    b = true;

                    udao.setId(rs.getInt("id"));
                    udao.setFullname(rs.getString("fullname"));
                    udao.setUsername(rs.getString("userName"));
                    udao.setEmail(rs.getString("email"));
                    udao.setMobile(rs.getString("mobile"));
                    udao.setGender(rs.getString("gender"));
                    udao.setPassword(decryptedPassword);

                }
                return b;
            }

        } catch (SQLException ex) {

            System.out.println("some Exception");

            System.out.println("" + ex);
            return b;

        } finally {

            try {
                con.close();
            } catch (SQLException ex) {

            }
        }

        return b;
    }

    //-----------Registration or insertdata--------------
    public boolean insert(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "insert into usersinfo (fullname,username, email,mobile,gender, password,dob) values(?,?,?,?,?,?,?)";
        boolean result = false;
        try {
            String encryptPassword = encrypt(udao.getPassword());

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getFullname());
            ps.setString(2, udao.getUsername());
            ps.setString(3, udao.getEmail());
            ps.setString(4, udao.getMobile());
            ps.setString(5, udao.getGender());
            ps.setString(6, encryptPassword);
            ps.setString(7, udao.getDob());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);
            result = false;
        }

        return result;
    }

//    ------------------password encription--------------------
    public static void setKey(String myKey) {
        try {
            key = myKey.getBytes("UTF-8");
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16); // use only first 128 bit
            secretKey = new SecretKeySpec(key, "AES");
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
        }
    }

    public static String encrypt(String strToEncrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error while encrypting: " + e.toString());
        }
        return null;
    }

    public static String decrypt(String strToDecrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
//            System.out.println("Input length: " + strToDecrypt.length()); // Log the length of the input string
            return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error while decrypting: " + e.toString());
        }

        return null;
    }

    public boolean addReadingStatus(int status, int bookId, int userId) {
        boolean wantToRead = false;
        boolean currentlyReading = false;
        boolean alreadyRead = false;
        switch (status) {
            case 1 ->
                wantToRead = true;
            case 2 ->
                currentlyReading = true;
            case 3 ->
                alreadyRead = true;
        }
        boolean check = checkBook(bookId, userId);
        System.out.println("Check : " + check);
        if (!check) {
            Connection con = GetConnection.getConnection();
            String query = "insert into reading_status(user_id,book_id,currently_reading,want_to_read,already_read) values(?,?,?,?,?)";
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setInt(1, userId);
                ps.setInt(2, bookId);
                ps.setBoolean(3, currentlyReading);
                ps.setBoolean(4, wantToRead);
                ps.setBoolean(5, alreadyRead);
                return ps.executeUpdate() > 0;
            } catch (SQLException e) {

                System.out.println("some Exception");
                System.out.println(e);
                return false;
            }
        } else {
            Connection con = GetConnection.getConnection();
            String query = "UPDATE reading_status SET currently_reading=?, want_to_read=?, already_read=? WHERE book_id=? and user_id=?";
            try {

                PreparedStatement ps = con.prepareStatement(query);

                ps.setBoolean(1, currentlyReading);
                ps.setBoolean(2, wantToRead);
                ps.setBoolean(3, alreadyRead);
                ps.setInt(4, bookId);
                ps.setInt(5, userId);
                return ps.executeUpdate() > 0;
            } catch (SQLException e) {

                System.out.println("some Exception");
                System.out.println(e);
                return false;
            }
        }

    }

    private boolean checkBook(int bookId, int userId) {
        Connection con = GetConnection.getConnection();
        String query = "select * from reading_status where book_id=? and user_id=?";
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bookId);
            ps.setInt(2, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);

        }
        return false;
    }

    public boolean getReadingStatus(ArrayList<BookDAO> bookDao, int status, int userId) {
        boolean flag = false;
        String column = null;
        switch (status) {
            case 1 ->
                column = "currently_reading";
            case 2 ->
                column = "want_to_read";
            case 3 ->
                column = "already_read";
            default -> {
            }
        }
        Connection con = GetConnection.getConnection();
        String query = "SELECT bookdetails.book_id, bookdetails.bookName, bookdetails.publishingYear, bookdetails.pageNo, bookdetails.img_path, bookdetails.pdf_path, bookdetails.description, bookdetails.freebook, bookdetails.genre_id AS book_genre_id, bookdetails.Author_id AS book_author_id, authorinfo.Author_id AS authorinfo_Author_id, authorinfo.Author_name, genreinfo.genre_id AS genreinfo_genre_id, genreinfo.genre FROM bookdetails JOIN authorinfo ON bookdetails.Author_id = authorinfo.Author_id JOIN genreinfo ON bookdetails.genre_id = genreinfo.genre_id JOIN reading_status ON bookdetails.book_id = reading_status.book_id WHERE reading_status." + column + " = true AND user_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            System.out.println("HEYYYYYYY");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                BookDAO bdao = new BookDAO();

                bdao.setBookId(rs.getInt("book_id"));
                bdao.setBookName(rs.getString("bookName"));
                bdao.setPublishingYear(rs.getString("publishingYear"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setImg(rs.getString("img_path"));
                bdao.setPdf(rs.getString("pdf_path"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setAuthorId(rs.getInt("authorinfo_Author_id"));
                bdao.setDiscription(rs.getString("description"));
                bdao.setFreebook(rs.getBoolean("freebook"));
                bdao.setGenreId(rs.getInt("genreinfo_genre_id"));
                bookDao.add(bdao);
                flag = true;
            }

        } catch (SQLException e) {

            System.out.println(e);
            flag = false;
        }

        return flag;
    }

//    --------------
    public ArrayList<BookDAO> search(String search) {
        System.out.println("Dto" + search);
        ArrayList<BookDAO> bookdao = new ArrayList<BookDAO>();
        Connection con = GetConnection.getConnection();
        BookDAO dao = null;
        try {

            String sql = "SELECT bookdetails.* FROM bookdetails "
                    + "JOIN genreinfo ON bookdetails.genre_id = genreinfo.genre_id "
                    + "JOIN authorinfo ON bookdetails.author_id = authorinfo.author_id "
                    + "WHERE bookdetails.bookName LIKE ? OR genreinfo.genre LIKE ? OR authorinfo.Author_name LIKE ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, "%" + search + "%");
            preparedStatement.setString(2, "%" + search + "%");
            preparedStatement.setString(3, "%" + search + "%");

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                // Retrieve data from the result set
                BookDAO bdao = new BookDAO();

                bdao.setBookId(rs.getInt("book_id"));
                bdao.setBookName(rs.getString("bookName"));
                bdao.setPublishingYear(rs.getString("publishingYear"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setImg(rs.getString("img_path"));
                bdao.setPdf(rs.getString("pdf_path"));
                bdao.setPageNo(rs.getInt("pageNo"));
                bdao.setAuthorId(rs.getInt("Author_id"));
                bdao.setDiscription(rs.getString("description"));
                bdao.setFreebook(rs.getBoolean("freebook"));
                System.out.println("comming in getbook dto");
                bdao.setGenreId(rs.getInt("genre_id"));

                bookdao.add(bdao);

            }
            System.out.println("bookdao");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookdao;
    }

//    ---------------------
    public boolean addReview(int bookId, int userId, String review, int rating) {
        Connection con = GetConnection.getConnection();
        String query = "INSERT INTO review (book_id,user_id,review,rating) values(?,?,?,?)";
        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, bookId);
            ps.setInt(2, userId);
            ps.setString(3, review);
            ps.setInt(4, rating);

            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);

        }
        return false;
    }
}
