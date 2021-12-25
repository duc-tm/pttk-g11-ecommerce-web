/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.book;

import dao.utils.ConDB;
import dao.utils.Mapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.util.Pair;
import model.book.Author;
import model.book.Book;
import model.book.BookItem;
import model.book.Publisher;

/**
 *
 * @author DELL
 */
public class BookDAOImpl implements BookDAO {

    private final Connection conn;
    private final String DELETE_BOOK_WITH_BOOKID = "DELETE FROM book where ID=? ;";
    private final String DELETE_BOOK_AUTHOR_WITH_BOOKID = "DELETE FROM bookauthor where BookID=? ;";
    private final String UPDATE_BOOK = "UPDATE book SET IBSN = ?, Tittle = ?, Sumary = ?, PublicationYear = ?, NumberOfPage = ?, Cost = ?, Language = ?, RemainingQuantity = ?, status = ? WHERE (ID = ?);";
    private final String UPDATE_AUTHOR = "Update author SET Name=?,Biography=?,Email=?,Adress=?" + "where ID=?";
    private final String UPDATE_PUBLISHER = "Update publisher SET Name=?,Adress=?" + "where ID=?";
    private final String GET_BOOK = "SELECT * FROM book where id=?;";
    private final String GET_BOOK_PUBLISHER = "SELECT * FROM publisher where BookID=?;";
    private final String GET_LIST_BOOK_AUTHOR = "Select author.ID,author.name,author.Biography,author.Email,author.address\n"
            + "FROM ((bookauthor "
            + "INNER JOIN book ON book.ID=bookauthor.BookID) "
            + "INNER JOIN author ON author.ID=bookauthor.AuthorID) "
            + "where book.ID=?;";
    private final String GET_BOOKITEM_WITH_BOOKITEMID = "SELECT * FROM bookitem where ID=?;";
    private final String DELETE_PUBLISHER_WITH_BOOKID = "DELETE FROM publisher WHERE (BookID = ?);";
    private final String GET_BOOK_WITH_BOOKITEMID = "SELECT * FROM book where bookItemId=?;";
    private final String GET_BOOKITEMID_WITH_BOOKID = "SELECT BookitemID FROM book where ID=?";
    private final String GET_BOOKID_WITH_BOOKITEMID = "SELECT ID FROM book where BookitemID=?";

    public BookDAOImpl() {
        conn = ConDB.getJDBCCOnection();
    }

    public int deletePublisher(int bookID) {
        PreparedStatement ps;
        {
            try {
                ps = conn.prepareStatement(DELETE_PUBLISHER_WITH_BOOKID);
                ps.setInt(1, bookID);
                int rowDeleted = ps.executeUpdate();
                return rowDeleted;
            } catch (SQLException ex) {
                Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
                return -1;
            }
        }
    }

    public int deleteBookauthor(int bookID) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(DELETE_BOOK_AUTHOR_WITH_BOOKID);
            ps.setInt(1, bookID);
            int rowDeleted = ps.executeUpdate();
            return rowDeleted;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public int deleteBook(int id) {
        PreparedStatement ps;
        try {
            int rowDeleted = deleteBookauthor(id);
            int rowDeleted1 = deletePublisher(id);
            ps = conn.prepareStatement(DELETE_BOOK_WITH_BOOKID);
            ps.setInt(1, id);
            int rowDeleted2 = ps.executeUpdate();
            return rowDeleted2;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public int updateBook(Book Book) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(UPDATE_BOOK);
            ps.setString(1, Book.getIBSN());
            ps.setString(2, Book.getTitle());
            ps.setString(3, Book.getSummary());
            ps.setString(4, Book.getPublicationYear().toString());
            ps.setInt(5, Book.getNumberOfPage());
            ps.setFloat(6, Book.getCost());
            ps.setString(7, Book.getLanguage());
            ps.setInt(8, Book.getRemainingQuantity());
            ps.setBoolean(9, Book.getStatus());
            ps.setInt(10, Book.getId());
            int rowcount1 = ps.executeUpdate();
            return rowcount1;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }

    }

    @Override
    public int UpdateAuthor(Author Author) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(UPDATE_AUTHOR);
            ps.setString(1, Author.getName());
            ps.setString(2, Author.getBiography());
            ps.setString(3, Author.getEmail());
            ps.setString(4, Author.getAddress());
            ps.setInt(5, Author.getId());
            int rowcount2 = ps.executeUpdate();
            return rowcount2;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public int UpdatePublisher(Publisher publisher) {
        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(UPDATE_PUBLISHER);
            ps.setString(1, publisher.getName());
            ps.setString(2, publisher.getAddress());
            ps.setInt(3, publisher.getId());
            int rowcount3 = ps.executeUpdate();
            return rowcount3;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }

    @Override
    public Book getBook(int id) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = conn.prepareStatement(GET_BOOK);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            Book b = new Book();
            if (rs.next()) {
                b.setId(rs.getInt("book.id"));
                b.setIBSN(rs.getString("book.IBSN"));
                b.setTitle(rs.getString("book.tittle"));
                b.setSummary(rs.getString("book.sumary"));
                b.setPublicationYear(rs.getString("book.publicationYear"));
                b.setNumberOfPage(rs.getInt("book.numberOfPage"));
                b.setCost(rs.getFloat("book.cost"));
                b.setLanguage(rs.getString("book.language"));
                b.setRemainingQuantity(rs.getInt("book.RemainingQuantity"));
                b.setStatus(rs.getBoolean("book.status"));
            }
            return b;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public Publisher getBookPUB(int bookId) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = conn.prepareStatement(GET_BOOK_PUBLISHER);
            ps.setInt(1, bookId);
            rs = ps.executeQuery();
            Publisher p = new Publisher();
            while (rs.next()) {
                p.setId(rs.getInt("publisher.id"));
                p.setAddress(rs.getString("publisher.address"));
                p.setName(rs.getString("publisher.name"));
            }
            return p;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    @Override
    public ArrayList<Author> getBookAU(int bookId) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = conn.prepareStatement(GET_LIST_BOOK_AUTHOR);
            ps.setInt(1, bookId);
            rs = ps.executeQuery();
            ArrayList<Author> list = new ArrayList<>();
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("author.id"));
                a.setName(rs.getString("author.name"));
                a.setBiography(rs.getString("author.biography"));
                a.setEmail(rs.getString("author.email"));
                a.setAddress(rs.getString("author.address"));
                list.add(a);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public int getBookItemIDWithBookID(int bookID) {
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = conn.prepareStatement(GET_BOOKITEMID_WITH_BOOKID);
            ps.setInt(1, bookID);
            rs = ps.executeQuery();
            int bookitemID = 0;
            if (rs.next()) {
                bookitemID = rs.getInt("book.bookItemId");
            }
            return bookitemID;
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }

    @Override
    public BookItem getBookIT(int bookitemID) {
        BookItem bookItem = null;
        
        try (PreparedStatement ps = conn.prepareStatement(GET_BOOKITEM_WITH_BOOKITEMID)) {
            ps.setInt(1, bookitemID);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                bookItem = Mapper.mapBookItem(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return bookItem;
        }
    }

    @Override
    public Pair<BookItem, Book> getBookAllSttWithBookID(int bookId) {
        Book b = getBook(bookId);
        b.setPub(getBookPUB(bookId));
        b.setAut(getBookAU(bookId));
        int bookitemID = getBookItemIDWithBookID(bookId);
        Pair<BookItem, Book> tmp = new Pair(getBookIT(bookitemID), b);
        return tmp;
    }

    @Override
    public Book getBookWithBookitemID(int bookItemId) {
        Book book = null;

        try (PreparedStatement ps = conn.prepareStatement(GET_BOOK_WITH_BOOKITEMID)) {
            ps.setInt(1, bookItemId);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                book = Mapper.mapBook(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return book;
        }
    }

    @Override
    public Pair<BookItem, Book> getBooAllSTTWithBookItemID(int bookItemID) {
        Book b = getBookWithBookitemID(bookItemID);
        int bookID = b.getId();
        b.setPub(getBookPUB(bookID));
        b.setAut(getBookAU(bookID));
        Pair<BookItem, Book> tmp = new Pair(getBookIT(bookItemID), b);
        return tmp;
    }

}
