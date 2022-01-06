/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.cart;

import model.user.User;

/**
 *
 * @author DELL
 */
public interface CartDAO {

    public int getCartByUserID(User user);

    public int createCartByUserID(int ID);

    public int deleteItemInCartByItemID(int itemId, int cartId);

    public int addItemToCart(int quantity, int cartID, int itemID);

    public int updateItemAmountByItemID(int quantity, int itemId, int cartId);

    public int getItemAmountById(int cartId, int itemId);

    public int checkItemExistInCart(int userId, int bookItemId);

    public int addExistedItemToCart(int cartItemId, int quantity);
}
