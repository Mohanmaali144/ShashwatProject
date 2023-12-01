package com.shashwat.model;

import com.shashwat.service.GetConnection;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

    public boolean addReadingStatus(int status, int bookId,int userId) {
        boolean wantToRead = false;
        boolean currentlyReading = false;
        boolean alreadyRead = false;
        switch (status) {
            case 1 -> wantToRead = true;
            case 2 -> currentlyReading = true;
            case 3 -> alreadyRead = true;
        }
        boolean check = checkBook(bookId);
        
        Connection con = GetConnection.getConnection();
        String query = "insert into reading_status(user_id,book_id,currently_reading,want_to_read,already_read) values(?,?,?,?,?)";
        try {
            
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,userId);
            ps.setInt(2, bookId);
            ps.setBoolean(3,currentlyReading);
            ps.setBoolean(4,wantToRead);
            ps.setBoolean(5,alreadyRead);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);
            return false;
        }

    }
    private boolean checkBook(int bookId)
    {
         Connection con = GetConnection.getConnection();
        String query = "select * from reading_status where book_id=?";
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,bookId);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
                return true;
            }
            else
            {
                return false;
            }
        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);
            return false;
        }
    }
}
