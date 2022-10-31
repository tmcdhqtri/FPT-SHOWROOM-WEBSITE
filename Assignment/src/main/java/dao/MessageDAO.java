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
import model.Message;

public class MessageDAO {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
     public boolean addMessage(String Name, String Email, String Note) {
        try {
            String sql = "insert into Message values(?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, Name);
            ps.setString(2, Email);
            ps.setString(3, Note);
            int row = ps.executeUpdate();

            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        } catch (Exception e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        }
        return false;
    }
     public List<Message> getAllMessage() throws Exception {
        try {
            String sql = "select * from Message";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<Message> blogs = new ArrayList<Message>();
            while (rs.next()) {
                blogs.add(new Message(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
            return blogs;
        } catch (SQLException e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        }
        return null;
    }
    
}
