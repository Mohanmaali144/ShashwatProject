package com.shashwat.model;

import java.io.Serializable;

public class BookDAO implements Serializable {

    int bookId, page;
    private String bookName, publishingYear, image, pdf;

    public BookDAO() {

    }

    public BookDAO(String bookName, int page, String publishingYear, String image, String pdf) {
        this.bookName = bookName;
        this.page = page;
        this.publishingYear = publishingYear;
        this.image = image;
        this.pdf = pdf;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getPublishingYear() {
        return publishingYear;
    }

    public void setPublishingYear(String publishingYear) {
        this.publishingYear = publishingYear;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
    }

}
