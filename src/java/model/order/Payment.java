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
public class Payment {
    private String id;
    private String type;
    private boolean status;

    public Payment() {
    }

    public Payment(String id, String type, boolean status) {
        this.id = id;
        this.type = type;
        this.status = status;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public boolean isStatus() {
        return status;
    }
    
    
}
