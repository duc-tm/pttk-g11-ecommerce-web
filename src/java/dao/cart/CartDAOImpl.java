/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.cart;

import dao.utils.ConDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author DELL
 */
public class CartDAOImpl implements CartDAO{
    private Connection conn;
    PreparedStatement preStatement;
    PreparedStatement preStatement1;
    PreparedStatement preStatement2;
    Statement Statement;
    Statement Statement1;
    Statement Statement2;
    Statement Statement3;
    ResultSet rs;
    public CartDAOImpl() {
        conn =ConDB.getJDBCCOnection();
    }

}
//        String sql1="SELECT * FROM shopbanhang.book where id="+bookid+";";
//        
//           String sql4="Select author.name,author.Biography,author.Email,author.Address\n" +
//"from((book_author\n" +
//"inner join book on book.ID=book_author.BookID)\n" +
//"inner join author on author.ID=book_author.AuthorID) \n" +
//"where book.ID="+bookid+";";
//          BookSTT b= new BookSTT();
//        try {
//            Statement= conn.createStatement();
//            rs=Statement.executeQuery(sql1);
//            int itemid=0;
//            int pubid=0;
//            if(rs.next()){
//                pubid=rs.getInt(2);
//                itemid=rs.getInt(3);
//                b.setISBN(rs.getString(4));
//                b.setTitle(rs.getString(5));
//                b.setSumary(rs.getString(6));
//                b.setPublicationDate(new java.sql.Date(rs.getDate(7).getTime()));
//                b.setNumberOfPage(rs.getInt(8));
//                b.setQuantityOfGood(rs.getInt(9));
//                b.setStatus(rs.getBoolean(10));
//                b.setCost(rs.getFloat(11));
//               }
//            String sql2="SELECT * FROM shopbanhang.publisher where id="+pubid+";";
//            Statement1=conn.createStatement();
//            rs=Statement1.executeQuery(sql2);
//            if(rs.next())
//            {
//                b.setPnane(rs.getString(2));
//                b.setPaddress(rs.getString(3));
//            }
//            String sql3="SELECT * FROM shopbanhang.bookitem where ID="+itemid+";";
//            Statement2=conn.createStatement();
//            rs=Statement2.executeQuery(sql3);
//            if(rs.next())
//            {
//                b.setBarcode(rs.getString(2));
//                b.setPrice(rs.getFloat(3));
//                b.setDiscount(rs.getFloat(4));
//                b.setSellingStatus(rs.getString(5));
//            }
//            Statement3=conn.createStatement();
//            rs=Statement3.executeQuery(sql4);
//            while(rs.next()){
//                ArrayList<String> aname=new ArrayList<>();
//                ArrayList<String> abio=new ArrayList<>();
//                ArrayList<String> aemail=new ArrayList<>();
//                ArrayList<String> aadress=new ArrayList<>();
//                aname.add(rs.getString(1));
//                
//            }
//        } 
//        catch (SQLException ex) {
//            Logger.getLogger(CartDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
//            return -1;
//        }
//        return 0;
//        
           
   

