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
        String query = "SELECT * FROM usersinfo WHERE username =? AND password = ?";
        ResultSet rs;
        boolean b = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {

                String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                if (decryptedPassword.equals(udao.getPassword())) { // Compare the decrypted password with the input password
                    b = true;

                    udao.setId(rs.getInt("id"));
                    udao.setFullname(rs.getString("name"));
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

}
