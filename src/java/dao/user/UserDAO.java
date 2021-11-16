/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.user;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author DELL
 */
public interface UserDAO <T>{
    int addCustomer(String phone,String mail,String numberhouse,String street,String distinct,String city,String firstname,String midname,String lastname);
    int getUserID(String phone,String mail);
    int updateCustomer(int id,String phone,String mail,String numberhouse,String street,String distinct,String city,String firstname,String midname,String lastname);
    T viewOrder(int orderID);
    ArrayList<T> getAllOrder(int UserID);
}
