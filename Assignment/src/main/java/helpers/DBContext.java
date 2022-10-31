/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package helpers;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class DBContext {
    public Connection getConnection() throws Exception{
    String connectionUrl = "jdbc:sqlserver://localhost:1433;"
            + "databaseName=Showroom;User=sa;Password=@Manhcuong22";
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection(connectionUrl);
    return con;
    }
}
