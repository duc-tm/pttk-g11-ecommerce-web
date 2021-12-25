/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.user;

import dao.utils.Mapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.order.Order;
import model.order.OrderSTT;
import model.user.Account;
import model.user.User;

/**
 *
 * @author DELL
 */
public class CustomerDAOImpl implements CustomerDAO {

    private Connection conn;

    private final String CHECK_USERNAME_EXIST_SQL = "SELECT 1 FROM account WHERE username = ?";
    private final String CREATE_EMPTY_USER_SQL = "INSERT INTO user VALUES ()";
    private final String CREATE_EMPTY_USER_FULLNAME_SQL = "INSERT INTO fullname (userid) VALUES (?)";
    private final String CREATE_EMPTY_USER_ADDRESS_SQL = "INSERT INTO address (userid) VALUES (?)";
    private final String CREATE_USER_ACCOUNT_SQL = "INSERT INTO account (userid, username, password) values (?, ?, ?)";

    private final String GET_ALL_ORDER = "SELECT * FROM ("
            + "(order INNER JOIN shipment ON order.shipmentid = shipment.id) "
            + "INNER JOIN payment ON order.paymentid = payment.id) "
            + "WHERE order.UserID =?";
    private final String GET_ORDER_DETAIL = "SELECT * FROM order, shipment, payment WHERE order.id = ? "
            + "AND order.shipmentid = shipment.id "
            + "AND order.paymentid = payment.id";

    @Override
    public boolean checkUsernameExist(String username) {
        try (PreparedStatement ps = conn.prepareStatement(CHECK_USERNAME_EXIST_SQL)) {
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return true;
        }
    }

    @Override
    public User createUserAccount(Account account) {
        User user = null;
        PreparedStatement ps;
        ResultSet rs;

        try {
            ps = conn.prepareStatement(CREATE_EMPTY_USER_SQL, Statement.RETURN_GENERATED_KEYS);

            int rowAffected = ps.executeUpdate();

            if (rowAffected > 0) {
                rs = ps.getGeneratedKeys();

                if (rs.next()) {
                    int userId = rs.getInt(1);

                    ps = conn.prepareStatement(CREATE_EMPTY_USER_FULLNAME_SQL);
                    ps.setInt(1, userId);
                    ps.executeUpdate();

                    ps = conn.prepareStatement(CREATE_EMPTY_USER_ADDRESS_SQL);
                    ps.setInt(1, userId);
                    ps.executeUpdate();

                    ps = conn.prepareStatement(CREATE_USER_ACCOUNT_SQL);
                    ps.setInt(1, userId);
                    ps.setString(2, account.getUsername());
                    ps.setString(3, account.getPassword());

                    rowAffected = ps.executeUpdate();

                    if (rowAffected > 0) {
                        user = new User();
                        user.setId(userId);
                        user.setAccount(account);
                    }
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return user;
        }

    }

    @Override
    public Order getOrderDetail(int orderID) {
        Order order = null;

        try (PreparedStatement ps = conn.prepareStatement(GET_ORDER_DETAIL)) {
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                order = Mapper.mapOrder(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return order;
        }
    }

    @Override
    public List<Order> getAllOrder(int userID) {
        List<Order> listOrder = new ArrayList<>();

        try (PreparedStatement ps = conn.prepareStatement(GET_ALL_ORDER)) {
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = Mapper.mapOrder(rs);
                listOrder.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return listOrder;
        }
    }
}
