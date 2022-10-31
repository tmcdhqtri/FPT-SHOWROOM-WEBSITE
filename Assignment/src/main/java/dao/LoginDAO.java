/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import helpers.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.AdminInfo;
import model.Blog;
import model.CarDetail;
import model.CustomerInfo;

/**
 *
 * @author Admin
 */
public class LoginDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public void addAccountCustomer(String customerName, String phone, String email, String address, String dateOfBirth, String username, String password) {
        String query = "insert into CustomerInfor\n" +
    "values (?,?,?,?, ?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, customerName);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, dateOfBirth);
            ps.setString(6, username);
            ps.setString(7, password);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public void updateCustomerAcc(int ID, String customerID, String customerName, String phone, String email, String address, String dateOfBirth, String username, String password){
        String query = "update CustomerInfor set CustomerName= ?,Phone= ?, Email=?, CusAddress=?, DateOfBirth=?, Password=? where Username= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, customerName);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, dateOfBirth);
            ps.setString(6, password);
            ps.setString(7, username);
            ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("SQL error in updateCustomerAcc " + e.getMessage());
        }
    }
    public void updateAdminAcc(String adminID, boolean role, String adminName, String phone, String email, String address, String dateOfBirth, String username, String password, String imageURL){
        String query = "update AdminInfor set AdminName= ?,Phone= ?, Email=?, AdminAddress=?, DateOfBirth=?, Password=?,Image=? where Username= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, adminName);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, dateOfBirth);
            ps.setString(6, password);
            ps.setString(7, imageURL);
            ps.setString(8, username);
            ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("SQL error in updateCustomerAcc " + e.getMessage());
        }
    }
    public AdminInfo checkLoginAdmin(String user, String pass) {
        String query = "select * from AdminInfor where Username=? and Password=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new AdminInfo(
                        rs.getString(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }

    public CustomerInfo checkLoginCustomer(String user, String pass) {
        String query = "select * from CustomerInfor where Username=? and Password=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new CustomerInfo(
                        rs.getInt(1),
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }

    public List<AdminInfo> getAllAdminAcc() throws Exception {
        try {
            String sql = "select * from AdminInfor";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<AdminInfo> AdminList = new ArrayList<AdminInfo>();
            while (rs.next()) {
                AdminList.add(new AdminInfo(rs.getString(1), rs.getBoolean(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return AdminList;
        } catch (SQLException e) {
            System.out.println("SQL error in AdminInfo" + e.getMessage());
        }
        return null;
    }

    public List<CustomerInfo> getAllUserAcc() throws Exception {
        try {
            String sql = "select * from CustomerInfor";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<CustomerInfo> CustomerList = new ArrayList<CustomerInfo>();
            while (rs.next()) {
                CustomerList.add(new CustomerInfo(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
            return CustomerList;
        } catch (SQLException e) {
            System.out.println("SQL error in CarDetail " + e.getMessage());
        }
        return null;
    }

    public CustomerInfo checkAccountExist(String user) {
        String query = "select * from CustomerInfor where Username=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new CustomerInfo(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }
    public AdminInfo checkAdminExist(String user) {
        String query = "select * from AdminInfor where Username=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new AdminInfo(
                        rs.getString(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }
    public void deleteCustomerAccount(String user){
        String query = "delete from CustomerInfor where Username=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.executeUpdate();
        }
        catch (Exception e) {

        }
    }
//    public boolean CusOrAdmin(String username){
//        
//    }
}
