/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.shoes;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class ShoesOrigin {
    private String companyName;
    private String address;
    private Date dateOfManfacture;

    public ShoesOrigin() {
    }

    public ShoesOrigin(String companyName, String address, Date dateOfManfacture) {
        this.companyName = companyName;
        this.address = address;
        this.dateOfManfacture = dateOfManfacture;
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

    public Date getDateOfManfacture() {
        return dateOfManfacture;
    }

    public void setDateOfManfacture(Date dateOfManfacture) {
        this.dateOfManfacture = dateOfManfacture;
    }
    
}
