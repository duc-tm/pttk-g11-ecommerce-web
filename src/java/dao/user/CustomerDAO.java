/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.user;

import java.util.List;
import model.user.Account;
import model.user.User;

/**
 *
 * @author DELL
 */
public interface CustomerDAO<T> {

    boolean checkUsernameExist(String username);

    User createUserAccount(Account account);

    T getOrderDetail(int orderID);

    List<T> getAllOrder(int userID);
}
