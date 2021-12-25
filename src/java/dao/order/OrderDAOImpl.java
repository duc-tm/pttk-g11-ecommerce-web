/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.order;

import dao.bookitem.BookItemDAOImpl;
import dao.utils.ConDB;
import dao.utils.Mapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.util.Pair;
import model.book.BookItem;
import model.order.Order;
import model.order.Shipment;
import model.user.UserSTT;

/**
 *
 * @author DELL
 */
public class OrderDAOImpl implements OrderDAO {

    private Connection conn;

    private final String GET_CART_ID = "INSERT INTO cart (UserID, TotalPrice) VALUES (?, ?);";
    private final String GET_ALL_SHIPMENT_SQL = "SELECT * FROM shipment";

    private final String INSERT_SHIPMENT_SQL = "INSERT INTO shipment (Type, Cost ,ShipUnit) VALUES (?, ? ,?);";
    private final String INSERT_ORDER_SQL = "INSERT INTO order (CustomerUserID ,ShipmentID,Status,PaymentID) VALUES (?, ?, ?, ?);";

    private final String DELETE_ORDER = "DELETE FROM order WHERE id=?";

    private final String ADD_ITEM_TO_ORDER = "INSERT INTO orderitem (Quantity, BookitemID, OrderID) VALUES (?, ?, ?)";

    public OrderDAOImpl() {
        conn = ConDB.getJDBCCOnection();
    }

    @Override
    public int createOrder(int userID, Order order, int paymentid, int shipmentid, Pair pair) {
        int rowCount = 0;

        try (PreparedStatement ps = conn.prepareStatement(INSERT_ORDER_SQL, Statement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, userID);
            ps.setInt(2, shipmentid);
            ps.setInt(3, order.getStatus());
            ps.setInt(4, paymentid);

            rowCount = ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();

            if (rs.next()) {
                int orderId = rs.getInt(1);
                rowCount = addItemsToOrder(pair, orderId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        } finally {
            return rowCount;
        }
    }

    @Override
    public int updateOrder(int orderID, String shipType, float cost, Date createdDate, int status, float amount, String payType, String shipUnit) {
//        String UPDATE_ORDER = "Update ORDER\n"
//                + "set createDate= ? , status = ? \n"
//                + "where id= " + orderID + ";";
//        String UPDATE_PAYMENT = "Update payment\n"
//                + "set Status=?,Amount=?,Type=?\n"
//                + "where id=?";
//        String GET_SHIPMENTID_FROM_ORDERID = "Select ShipmentID from order Where ID=" + orderID + ";";
//        String GET_PAYMENTID_FROM_ORDERID = "Select ShipmentID from order Where ID=" + orderID + ";";
//        String UPDATE_SHIPMENT = "Update shipment\n"
//                + "set Type=?,Cost=?,ShipUnit=?\n"
//                + "where id=?";
//
//        try {
//            preStatement = conn.prepareStatement(UPDATE_ORDER);
//            preStatement.setDate(1, new java.sql.Date(createdDate.getTime()));
//            preStatement.setInt(2, status);
//            int rowcout = preStatement.executeUpdate();
//            Statement1 = conn.createStatement();
//            rs = Statement1.executeQuery(GET_PAYMENTID_FROM_ORDERID);
//            int paymentid = 0;
//            while (rs.next()) {
//                paymentid = rs.getInt(1);
//            }
//            preStatement1 = conn.prepareStatement(UPDATE_PAYMENT);
//            preStatement1.setInt(1, status);
//            preStatement1.setFloat(2, amount);
//            preStatement1.setString(3, payType);
//            preStatement1.setInt(4, paymentid);
//            int rowcout1 = preStatement1.executeUpdate();
//            Statement = conn.createStatement();
//            rs = Statement.executeQuery(GET_SHIPMENTID_FROM_ORDERID);
//            int shipmentid = 0;
//            while (rs.next()) {
//                shipmentid = rs.getInt(1);
//            }
//            preStatement2 = conn.prepareStatement(UPDATE_SHIPMENT);
//            preStatement2.setString(1, shipType);
//            preStatement2.setFloat(2, cost);
//            preStatement2.setString(3, shipUnit);
//            preStatement2.setInt(4, shipmentid);
//            int rowcout2 = preStatement2.executeUpdate();
//            return rowcout2;
//        } catch (SQLException ex) {
//            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
//            return 0;
//        }
        return 1;
    }

    @Override
    public int deleteOrder(int orderID) {
        int rowCount = 0;

        try (PreparedStatement ps = conn.prepareStatement(DELETE_ORDER);) {
            ps.setInt(1, orderID);

            rowCount = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return rowCount;
        }
    }

    @Override
    public UserSTT getUser(int userID) {
        String sql = "Select user.Phone,user.mail,address.NumberHouse,address.Street,address.Distincts,address.City,fullname.FirstName,fullname.Midname,fullname.LastName \n"
                + "from((user\n"
                + "inner join address on user.ID=address.UserID)\n"
                + "inner join fullname on user.ID=fullname.UserID) \n"
                + "Where user.id=" + userID + ";";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            UserSTT u = new UserSTT();
            while (rs.next()) {
                u.setPhone(rs.getString(1));
                u.setMail(rs.getString(2));
                u.setNumberHouse(rs.getString(3));
                u.setStreet(rs.getString(4));
                u.setDistinct(rs.getString(5));
                u.setCity(rs.getString(6));
                u.setFirstname(rs.getString(7));
                u.setMidname(rs.getString(8));
                u.setLastname(rs.getString(9));
            }
            return u;
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }

    }

    @Override
    public int addItemsToOrder(Pair listBookItemAndQuantity, int orderID) {
        List<BookItem> bookItem = (List<BookItem>) listBookItemAndQuantity.getKey();
        List<Integer> quantity = (List< Integer>) listBookItemAndQuantity.getValue();

        int rowCount = 0;

        for (int i = 0; i < bookItem.size(); i++) {
            try (PreparedStatement ps = conn.prepareStatement(ADD_ITEM_TO_ORDER)) {
                ps.setInt(1, quantity.get(i));
                ps.setInt(2, bookItem.get(i).getID());
                ps.setInt(3, orderID);

                rowCount += ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return rowCount;
    }

    public List<Shipment> getShipmentList() {
        List<Shipment> listShipment = new ArrayList<>();

        try (PreparedStatement ps = conn.prepareStatement(GET_ALL_SHIPMENT_SQL)) {
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                listShipment.add(Mapper.mapShipment(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return listShipment;
        }
    }
}
