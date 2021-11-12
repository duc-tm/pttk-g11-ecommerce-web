/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class User {
    private String id;
    private FullName fullName;
    private String phone;
    private String mail;
    private Address address;
    private Account account;

    public User() {
    }

    public User(String id, FullName fullName, String phone, String mail, Address address, Account account) {
        this.id = id;
        this.fullName = fullName;
        this.phone = phone;
        this.mail = mail;
        this.address = address;
        this.account = account;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setFullName(FullName fullName) {
        this.fullName = fullName;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getId() {
        return id;
    }

    public FullName getFullName() {
        return fullName;
    }

    public String getPhone() {
        return phone;
    }

    public String getMail() {
        return mail;
    }

    public Address getAddress() {
        return address;
    }

    public Account getAccount() {
        return account;
    }
    
    
}
