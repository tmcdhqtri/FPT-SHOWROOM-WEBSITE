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
import model.Blog;

/**
 *
 * @author Admin
 */
public class BlogDAO {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    public boolean addBlog(String blogID, String namePost, String datePost, String ImageURL, String title, String description) {
        try {
            String sql = "insert into Blog values(?, ?, ?, ?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, blogID);
            ps.setString(2, namePost);
            ps.setString(3, datePost);
            ps.setString(4, ImageURL);
            ps.setString(5, title);
            ps.setString(6, description);
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

    public boolean updateBlog(String blogID, String namePost, String datePost, String ImageURL, String title, String description) {
        try {
            String sql = "update Blog set NamePost=?, DatePost=?, Image=?, Title=?, Description=? where BlogID=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, namePost);
            ps.setString(2, datePost);
            ps.setString(3, ImageURL);
            ps.setString(4, title); 
            ps.setString(5, description);
            ps.setString(6, blogID);
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

    public boolean deleteBlog(String blogID) throws Exception {
        try {
            String sql = "delete from Blog where BlogID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, blogID);

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

    public List<Blog> getAllBlogs() throws Exception {
        try {
            String sql = "select * from Blog";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<Blog> blogs = new ArrayList<Blog>();
            while (rs.next()) {
                blogs.add(new Blog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6)));
            }
            return blogs;
        } catch (SQLException e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        }
        return null;
    }
   public Blog getBlog(String blogID) throws Exception{
        try {
            String sql = "select * from Blog where BlogID=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, blogID);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Blog(
                        rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)
                );
            }
        }
        catch (SQLException e) {
            System.out.println("SQL error in BlogDAO " + e.getMessage());
        }
   return null;
   }
}
