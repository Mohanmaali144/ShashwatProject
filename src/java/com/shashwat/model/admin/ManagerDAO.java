/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model.admin;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author HP
 */
public class ManagerDAO implements Serializable{
    private int manager_id;
    private String manager_name,email_id,phone_number,gender,address,manager_password;
       
    public ManagerDAO() {
    }

    public ManagerDAO(String manager_name, String email_id, String phone_number, String gender, String address, String manager_password) {
        this.manager_name = manager_name;
        this.email_id = email_id;
        this.phone_number = phone_number;
        this.gender = gender;
        this.address = address;
        this.manager_password = manager_password;
    }

    public int getManager_id() {
        return manager_id;
    }

    public void setManager_id(int manager_id) {
        this.manager_id = manager_id;
    }

    public String getManager_name() {
        return manager_name;
    }

    public void setManager_name(String manager_name) {
        this.manager_name = manager_name;
    }

    public String getEmail_id() {
        return email_id;
    }

    public void setEmail_id(String email_id) {
        this.email_id = email_id;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getManager_password() {
        return manager_password;
    }

    public void setManager_password(String manager_password) {
        this.manager_password = manager_password;
    }
    
}
