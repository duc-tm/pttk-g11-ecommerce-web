/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.order.OrderSTT;

/**
 *
 * @author Admin
 */
public class UserDAOImpl implements UserDAO<OrderSTT>{
    private Statement statement;
    private Statement statement1;
    private Statement statement2;
    private PreparedStatement prestatement;
    private PreparedStatement prestatement1;
    private PreparedStatement prestatement2;
    private Connection conn;
    private ResultSet rs;
    public UserDAOImpl() {
        conn =ConDB.getJDBCCOnection();
    }

    @Override
    public int addCustomer(String phone,String mail,String numberhouse,String street,String distinct,String city,String firstname,String midname,String lastname) {
        String sql1="Insert into address (UserID,NumberHouse,Street,Distincts,city)\n" +
"values (?,?,?,?,?);";
        String sql2=
"Insert into fullname (UserID,FirstName,MidName,LastName)\n" +
"values (?,?,?,?);";   
        try {
            prestatement1 = conn.prepareStatement(sql1);
            int uid=getUserID(phone, mail); 
            System.out.println(uid);
            prestatement1.setInt(1, uid);
            prestatement1.setString(2, numberhouse);
            prestatement1.setString(3, street);
            prestatement1.setString(4, distinct);
            prestatement1.setString(5, city);
            int rowcount1 = prestatement1.executeUpdate();
            prestatement2 = conn.prepareStatement(sql2);
            prestatement2.setInt(1,uid);
            prestatement2.setString(2, firstname);
            prestatement2.setString(3, midname);
            prestatement2.setString(4, lastname);
            int rowcount2 = prestatement2.executeUpdate();
            return rowcount2;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        
    }

    @Override
    public OrderSTT viewOrder(int orderID) {
        String sql1="SELECT * FROM shopbanhang.order WHERE ID="+orderID+";";
        OrderSTT o=new OrderSTT();
        try {
            statement= conn.createStatement();
            rs=statement.executeQuery(sql1);
            int shipmentid = 0;
            while(rs.next()){
            shipmentid=rs.getInt("ShipmentID");
            o.setCreatedDate(rs.getDate("CreatedDate"));
            }
            String sql2="SELECT * FROM shopbanhang.shipment WHERE ID="+shipmentid+";";
            statement1=conn.createStatement();
            rs=statement1.executeQuery(sql2);
            while(rs.next()){
                o.setType(rs.getString(2));
                o.setCost(rs.getFloat(3));
            }
            String sql3="SELECT * FROM shopbanhang.payment WHERE ID="+orderID+";";
            statement2=conn.createStatement();
            rs=statement2.executeQuery(sql3);
            while(rs.next()){
                o.setStatus(rs.getString(3));
                o.setAmmount(rs.getFloat(4));
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return o;    
    }

    @Override
    public ArrayList<OrderSTT> getAllOrder(int UserID) {
        String sql1="SELECT Shipment.Type,Shipment.Cost,shopbanhang.Order.CreatedDate,payment.status,payment.Amount\n" +
"FROM ((shopbanhang.order\n" +
"inner join shipment on shopbanhang.order.ShipmentID = shipment.ID)\n" +
"inner join payment on shopbanhang.order.ID = payment.OrderID)\n" +
"WHERE Shopbanhang.order.UserID ="+UserID+";";
        ArrayList<OrderSTT> listorder=new ArrayList<>();
        try {
            statement=conn.createStatement();
            rs=statement.executeQuery(sql1);
            while(rs.next()){
                OrderSTT o = new OrderSTT();
                o.setType(rs.getString(1));
                o.setCost(rs.getFloat(2));
                o.setCreatedDate(rs.getDate(3));
                o.setStatus(rs.getString(4));
                o.setAmmount(rs.getFloat(5));
                listorder.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
        return listorder; 
    }


    @Override
    public int getUserID(String phone, String mail) {
         String sql="Insert into user (Phone,Mail)  values (?,?);";
        try {
            prestatement=conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            prestatement.setString(1,phone);
            prestatement.setString(2, mail);
            int rowcount=prestatement.executeUpdate();
            rs =prestatement.getGeneratedKeys();
            int idValue = 0;
            if (rs.next()) {
			idValue = rs.getInt(1);
		}
            return idValue;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        
    }

    @Override
    public int updateCustomer(int id,String phone, String mail, String numberhouse, String street, String distinct, String city, String firstname, String midname, String lastname) {
        String sql1="Update user\n" +
"set Phone=?,mail=?\n" +
"where id=?";
        String sql2="Update address\n" +
"set Numberhouse=?,street=?,Distincts=?,city=?" +
"where Userid=?";
        String sql3="Update fullname\n" +
"set firstname=?,midname=?,lastname=?\n" +
"where Userid=?";
        try {
            prestatement=conn.prepareStatement(sql1);
            prestatement.setString(1, phone);
            prestatement.setString(2, mail);
            prestatement.setInt(3, id);
            int rowcount1=prestatement.executeUpdate();
            prestatement1=conn.prepareStatement(sql2);
            prestatement1.setString(1, numberhouse);
            prestatement1.setString(2, street);
            prestatement1.setString(3, distinct);
            prestatement1.setString(4, city);
            prestatement1.setInt(5, id);
            int rowcount2=prestatement1.executeUpdate();
            prestatement2=conn.prepareStatement(sql3);
            prestatement2.setString(1, firstname);
            prestatement2.setString(2, midname);
            prestatement2.setString(3, lastname);
            prestatement2.setInt(4, id);
            int rowcount3=prestatement2.executeUpdate();
            return rowcount3;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        }
        
    }
    
}
