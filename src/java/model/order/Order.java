/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.order;

import java.util.Date;

/**
 * @author Admin
 */
public class Order {

    private int id;
    private Date createdDate;
    private Shipment shipmentInfo;
    private Payment paymentInfo;

    /**
     * Status of payment. 0 - pending approved, 1 - preparing, 2 - shipping, 3 -
     * received success, 4 - received failed
     */
    private int status;

    public Order() {
    }

    public Order(int id, Date createdDate, int status) {
        this.id = id;
        this.createdDate = createdDate;
        this.status = status;
    }

    public Order(int status, Shipment shipmentInfo, Payment paymentInfo) {
        this.status = status;
        this.shipmentInfo = shipmentInfo;
        this.paymentInfo = paymentInfo;
    }

    public Shipment getShipmentInfo() {
        return shipmentInfo;
    }

    public Payment getPaymentInfo() {
        return paymentInfo;
    }

    public void setShipmentInfo(Shipment shipmentInfo) {
        this.shipmentInfo = shipmentInfo;
    }

    public void setPaymentInfo(Payment paymentInfo) {
        this.paymentInfo = paymentInfo;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public int getId() {
        return id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
