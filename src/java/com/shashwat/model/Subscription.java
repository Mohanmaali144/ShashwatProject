package com.shashwat.model;

public class Subscription extends UserDAO {

    public Subscription() {
    }

    private int subs_id, subsPeriod;
    private boolean isSubscribed;
    private String start_date, subsExpiryDate, created_at;
    private double subsAmount;

    public Subscription(int subsPeriod, String start_date, String subsExpiryDate, double subsAmount) {
        this.subsPeriod = subsPeriod;

        this.start_date = start_date;
        this.subsExpiryDate = subsExpiryDate;
        this.subsAmount = subsAmount;
    }

    public int getSubs_id() {
        return subs_id;
    }

    public void setSubs_id(int subs_id) {
        this.subs_id = subs_id;
    }

    public int getSubsPeriod() {
        return subsPeriod;
    }

    public void setSubsPeriod(int subsPeriod) {
        this.subsPeriod = subsPeriod;
    }

    public boolean isIsSubscribed() {
        return isSubscribed;
    }

    public void setIsSubscribed(boolean isSubscribed) {
        this.isSubscribed = isSubscribed;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getSubsExpiryDate() {
        return subsExpiryDate;
    }

    public void setSubsExpiryDate(String subsExpiryDate) {
        this.subsExpiryDate = subsExpiryDate;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public double getSubsAmount() {
        return subsAmount;
    }

    public void setSubsAmount(double subsAmount) {
        this.subsAmount = subsAmount;
    }

}
