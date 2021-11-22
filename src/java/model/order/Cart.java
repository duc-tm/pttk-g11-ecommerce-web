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
    private int id;
    private int Quantity;
    private double totalPrice;

   public Cart(){
       
   }
    public Cart(int id,int Quantity, double totalPrice) {
        this.id=id;
        this.Quantity = Quantity;
        this.totalPrice = totalPrice;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.Quantity = totalQuantity;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalQuantity() {
        return Quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }
    
    
}
