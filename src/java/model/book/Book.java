/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.book;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Book {
    private String id;
    private String IBSN;
    private String title;
    private String sumary;
    private Date publicationDate;
    private int numberOfPage;
    private int quantityOfGood;
    private float cost;
    private String language;
    private String color;

    public Book() {
    }

    public Book(String id, String IBSN, String title, String sumary, Date publicationDate, int numberOfPage, int quantityOfGood, float cost, String language, String color) {
        this.id = id;
        this.IBSN = IBSN;
        this.title = title;
        this.sumary = sumary;
        this.publicationDate = publicationDate;
        this.numberOfPage = numberOfPage;
        this.quantityOfGood = quantityOfGood;
        this.cost = cost;
        this.language = language;
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIBSN() {
        return IBSN;
    }

    public void setIBSN(String IBSN) {
        this.IBSN = IBSN;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Date getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(Date publicationDate) {
        this.publicationDate = publicationDate;
    }

    

    public int getNumberOfPage() {
        return numberOfPage;
    }

    public void setNumberOfPage(int numberOfPage) {
        this.numberOfPage = numberOfPage;
    }

    public String getSumary() {
        return sumary;
    }

    public void setSumary(String sumary) {
        this.sumary = sumary;
    }

    public int getQuantityOfGood() {
        return quantityOfGood;
    }

    public void setQuantityOfGood(int quantityOfGood) {
        this.quantityOfGood = quantityOfGood;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }
    
}
