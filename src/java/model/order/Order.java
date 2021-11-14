/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.order;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Order {
    private String id;
    private Date createdDate;

    public Order() {
    }

    public Order(String id, Date createdDate) {
        this.id = id;
        this.createdDate = createdDate;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getId() {
        return id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }
    
    
}
