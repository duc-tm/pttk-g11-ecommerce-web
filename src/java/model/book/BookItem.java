/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.book;

/**
 *
 * @author DELL
 */
public class BookItem {
    private String id;
    private String barcode;
    private float price;
    private float discount;
    private String sellingStatus;

    public BookItem() {
    }

    public BookItem(String id, String barcode, float price, float discount, String sellingStatus) {
        this.id = id;
        this.barcode = barcode;
        this.price = price;
        this.discount = discount;
        this.sellingStatus = sellingStatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getSellingStatus() {
        return sellingStatus;
    }

    public void setSellingStatus(String sellingStatus) {
        this.sellingStatus = sellingStatus;
    }
    
}
