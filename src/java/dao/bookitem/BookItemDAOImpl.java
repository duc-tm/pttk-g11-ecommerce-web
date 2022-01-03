/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.bookitem;

import dao.book.BookDAOImpl;
import dao.utils.ConDB;
import dao.utils.Mapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.book.BookItem;

/**
 *
 * @author ADMIN
 */
public class BookItemDAOImpl implements BookItemDAO {

    private final Connection conn;
    private final String GET_BOOKID_WITH_BOOKITEMID = "SELECT * FROM book WHERE BookitemID=?";
    private final String sql1 = "DELETE FROM bookitem where ID = ?;";
    private final String DELETE_CARTITEM_WITH_BOOKITEMID = "DELETE FROM cartitem where bookitemID = ?;";
    private final String DELETE_ORDERITEM_WITH_BOOKITEMID = "DELETE FROM orderitem where bookitemID = ?;";
    private final String sql2 = "UPDATE bookitem SET Price = ?, Discount = ?, SellingStatus = ?, Description = ?, Image = ? ,Name = ? ,Category = ? WHERE (ID = ?);";
    private final String sql3 = "SELECT * FROM bookitem WHERE ID = ?;";
    private final String GET_NEW_ITEMS_LIMIT_SQL = "SELECT * FROM bookitem WHERE id < ? ORDER BY id DESC LIMIT ?";
    private final String GET_ITEMS_FILTER_BY_NAME_SQL = "SELECT * FROM bookitem WHERE id < ? AND name LIKE ? ORDER BY id DESC LIMIT ?";
    private final String GET_NEW_ITEMS_LIMIT_BY_CATEGORY_SQL = "SELECT * FROM bookitem WHERE id <= ? AND category = ? ORDER BY id DESC LIMIT ?";
    private final String GET_ITEMS_FILTER_BY_CATEGORY_AND_NAME_SQL = "SELECT * FROM bookitem WHERE id <= ? AND category = ? AND name LIKE ? ORDER BY id DESC LIMIT ?";
    private final String GET_ITEM_CATEGORY_SQL = "SELECT category FROM bookitem WHERE id = ?";
    private final String GET_MULTIPLE_BOOK_ITEM_SQL = "SELECT * FROM bookitem WHERE id IN ";

    public BookItemDAOImpl() {
        conn = ConDB.getJDBCCOnection();
    }

    public int deleteCartItem(int bookitemID) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(DELETE_CARTITEM_WITH_BOOKITEMID);
            ps.setInt(1, bookitemID);
            int rowcount = ps.executeUpdate();
            return rowcount;
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }

    }

    public int deleteOrderItem(int bookitemID) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(DELETE_ORDERITEM_WITH_BOOKITEMID);
            ps.setInt(1, bookitemID);
            int rowcount = ps.executeUpdate();
            return rowcount;
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }

    }

    public int getBookID(int bookitemID) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = conn.prepareStatement(GET_BOOKID_WITH_BOOKITEMID);
            ps.setInt(1, bookitemID);
            rs = ps.executeQuery();
            int biID = 0;
            if (rs.next()) {
                biID = rs.getInt(rs.getInt("book.id"));
            }
            return biID;
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public int deleteBookItem(int id) {
        PreparedStatement prestatement;
        ResultSet rs;

        try {
            int rdelete = deleteCartItem(id);
            int rdelete1 = deleteOrderItem(id);
            int bookID = getBookID(id);
            BookDAOImpl bDAO = new BookDAOImpl();
            bDAO.deleteBook(bookID);
            prestatement = conn.prepareStatement(sql1);
            prestatement.setInt(1, id);
            int rowDeleted = prestatement.executeUpdate();
            return rowDeleted;
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }

    }

    @Override
    public int updateBookItem(BookItem bookitem) {
        PreparedStatement prestatement;

        try {
            prestatement = conn.prepareStatement(sql2);
            prestatement.setFloat(1, bookitem.getPrice());
            prestatement.setFloat(2, bookitem.getDiscount());
            prestatement.setInt(3, bookitem.getSellingStatus());
            prestatement.setString(4, bookitem.getDescription());
            prestatement.setString(5, bookitem.getImage());
            prestatement.setString(6, bookitem.getName());
            prestatement.setString(7, bookitem.getCategory());
            prestatement.setInt(8, bookitem.getID());
            int rowcount1 = prestatement.executeUpdate();
            return rowcount1;
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public List<BookItem> getMultipleBookItem(int[] bookItemIdArray) {
        List<BookItem> listBookItem = new ArrayList<>();

//        prepare statement
        int arraySize = bookItemIdArray.length;

        String PREPARED_GET_MULTIPLE_BOOK_ITEM_SQL = GET_MULTIPLE_BOOK_ITEM_SQL + "(";
        for (int i = 0; i < arraySize - 1; i++) {
            PREPARED_GET_MULTIPLE_BOOK_ITEM_SQL += "?, ";
        }
        PREPARED_GET_MULTIPLE_BOOK_ITEM_SQL += "?)";

        try (PreparedStatement ps = conn.prepareStatement(PREPARED_GET_MULTIPLE_BOOK_ITEM_SQL)) {
            for (int i = 1; i <= arraySize; i++) {
                ps.setInt(i, bookItemIdArray[i - 1]);
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookItem bookItem = Mapper.mapBookItem(rs);
                listBookItem.add(bookItem);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return listBookItem;
        }
    }

    @Override
    public BookItem getBookItem(int id) {
        BookItem bookItem = new BookItem();

        try (PreparedStatement ps = conn.prepareStatement(sql3)) {
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                bookItem = Mapper.mapBookItem(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return bookItem;
        }
    }

    @Override
    public List<BookItem> getNewItems(int limit, int from, String itemName) {
        List<BookItem> listItem = new ArrayList<>();

        try {
            PreparedStatement ps;

            if (itemName == null) {
                ps = conn.prepareStatement(GET_NEW_ITEMS_LIMIT_SQL);
                ps.setInt(1, from);
                ps.setInt(2, limit);
            } else {
                ps = conn.prepareStatement(GET_ITEMS_FILTER_BY_NAME_SQL);
                ps.setInt(1, from);
                ps.setString(2, "%" + itemName + "%");
                ps.setInt(3, limit);
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookItem bookeItem = Mapper.mapBookItem(rs);
                listItem.add(bookeItem);
            }

            System.out.println("List item length " + listItem.size());
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return listItem;
        }
    }

    @Override
    public List<BookItem> getNewItemsByCategory(int limit, int from, String category, String itemName) {
        List<BookItem> listItem = new ArrayList<>();

        try {
            PreparedStatement ps;

            if (itemName == null) {
                ps = conn.prepareStatement(GET_NEW_ITEMS_LIMIT_BY_CATEGORY_SQL);
                ps.setInt(1, from);
                ps.setString(2, category);
                ps.setInt(3, limit);
            } else {
                ps = conn.prepareStatement(GET_ITEMS_FILTER_BY_CATEGORY_AND_NAME_SQL);
                ps.setInt(1, from);
                ps.setString(2, category);
                ps.setString(3, "%" + itemName + "%");
                ps.setInt(4, limit);
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookItem bookItem = Mapper.mapBookItem(rs);
                listItem.add(bookItem);
            }

        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return listItem;
        }
    }

    @Override
    public String getItemCategory(int itemId) {
        String category = null;

        try (PreparedStatement ps = conn.prepareStatement(GET_ITEM_CATEGORY_SQL)) {
            ps.setInt(1, itemId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                category = rs.getString("category");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookItemDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return category;
        }
    }
}