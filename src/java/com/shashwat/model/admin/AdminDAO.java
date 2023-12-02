/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.admin;

import java.io.Serializable;

/**
 *
 * @author HP
 */
public class AdminDAO implements Serializable{
    private int admin_id;
    private String admin_name;
    private String admin_code;

    public AdminDAO() {
    }

    public AdminDAO(String admin_name, String admin_code) {
        this.admin_name = admin_name;
        this.admin_code = admin_code;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getAdmin_code() {
        return admin_code;
    }

    public void setAdmin_code(String admin_code) {
        this.admin_code = admin_code;
    }
    
}
