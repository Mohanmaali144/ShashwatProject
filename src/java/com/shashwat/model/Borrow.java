/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shashwat.model;

import com.shashwat.model.manager.BookDAO;

public class Borrow extends BookDAO {
    
    private String borrow_date,borrow_expiry;
    private double amount;
    private boolean isBorrowed;
    private int period;

    public Borrow() {
    }

    public Borrow(String borrow_date, String borrow_expiry, double amount, boolean isBorrowed, int period) {
        this.borrow_date = borrow_date;
        this.borrow_expiry = borrow_expiry;
        this.amount = amount;
        this.isBorrowed = isBorrowed;
        this.period = period;
    }

    public String getBorrow_date() {
        return borrow_date;
    }

    public void setBorrow_date(String borrow_date) {
        this.borrow_date = borrow_date;
    }

    public String getBorrow_expiry() {
        return borrow_expiry;
    }

    public void setBorrow_expiry(String borrow_expiry) {
        this.borrow_expiry = borrow_expiry;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public boolean isIsBorrowed() {
        return isBorrowed;
    }

    public void setIsBorrowed(boolean isBorrowed) {
        this.isBorrowed = isBorrowed;
    }

    public int getPeriod() {
        return period;
    }

    public void setPeriod(int period) {
        this.period = period;
    }
    
    
    
}
