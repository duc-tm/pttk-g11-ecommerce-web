/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.clothes;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class ClothesOrigin {
    private String companyName;
    private String address;
    private Date dateOfManufacture;

    public ClothesOrigin() {
    }

    public ClothesOrigin(String companyName, String address, Date dateOfManufacture) {
        this.companyName = companyName;
        this.address = address;
        this.dateOfManufacture = dateOfManufacture;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDateOfManufacture() {
        return dateOfManufacture;
    }

    public void setDateOfManufacture(Date dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }
    
}
