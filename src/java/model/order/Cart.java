/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.order;

/**
 *
 * @author Admin
 */
public class Cart {
    private int totalQuantity;
    private double totalPrice;

    public Cart() {
    }

    public Cart(int totalQuantity, double totalPrice) {
        this.totalQuantity = totalQuantity;
        this.totalPrice = totalPrice;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }
    
    
}
