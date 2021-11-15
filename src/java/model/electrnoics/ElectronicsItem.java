/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.electrnoics;

/**
 *
 * @author DELL
 */
public class ElectronicsItem {
    private String id;
    private String color;
    private float price;
    private String barcode;
    private float discount;
    private String sellingStatus;
    private int Insuarance;

    public ElectronicsItem() {
    }

    public ElectronicsItem(String id, String color, float price, String barcode, float discount, String sellingStatus, int Insuarance) {
        this.id = id;
        this.color = color;
        this.price = price;
        this.barcode = barcode;
        this.discount = discount;
        this.sellingStatus = sellingStatus;
        this.Insuarance = Insuarance;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
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

    public int getInsuarance() {
        return Insuarance;
    }

    public void setInsuarance(int Insuarance) {
        this.Insuarance = Insuarance;
    }
    
}
