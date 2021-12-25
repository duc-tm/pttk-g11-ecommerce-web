/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javafx.util.Pair;
import model.book.BookItem;
import model.order.Order;

/**
 *
 * @author DELL
 * @param <T>
 */
public interface OrderDAO<T> {

    int addItemsToOrder(Pair<List<BookItem>, List<Integer>> listBookItemAndQuantity, int orderID);

    int createOrder(int userID, Order order, int paymentid, int shipmentid, Pair<List<BookItem>, List<Integer>> pair);

    int updateOrder(int orderID, String shipType, float cost, Date createdDate, int status, float amount, String payType, String shipUnit);

    int deleteOrder(int orderID);

    T getUser(int orderID);
}
