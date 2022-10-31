package dao;

import helpers.DBContext;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import model.CarDetail;
import model.CarIntro;
import model.CarTestingRegister;
import model.Message;

/**
 *
 * @author Admin
 */
public class CarDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    // *CAR*
    public boolean addCar(String CarID, String CarName, String Model, String Description) {
        try {
            String sql = "insert into CarNames values(?, ?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarID);
            ps.setString(2, CarName);
            ps.setString(3, Model);
            ps.setString(4, Description);
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

    public boolean updateCar(String CarName, String Model, String Description, String CarID) {
        try {
            String sql = "update CarNames set CarName=?, Model=?, Description=? where CarID=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarName);
            ps.setString(2, Description);
            ps.setString(3, Model);
            ps.setString(4, CarID);
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

    public boolean deleteCar(String CarID) throws Exception {
        try {
            String sql = "delete from CarNames where CarID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarID);

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

    public List<CarIntro> getAllCar() throws Exception {
        try {
            String sql = "select * from CarNames";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<CarIntro> cars = new ArrayList<CarIntro>();
            while (rs.next()) {
                cars.add(new CarIntro(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
            return cars;
        } catch (SQLException e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        }
        return null;
    }

    public boolean checkCarIDExist(String CarID) throws Exception {
        try {
            conn = new DBContext().getConnection();
            String sql = "select * from CarNames where CarID = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarID);

            rs = ps.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("SQL error in CarDAO " + e.getMessage());
        }
        return false;
    }

    public boolean addDetail(String CarID, int Quantity, int Price, int NumSeat, int Doors, String Color, String Year, String MadeIn, int EngineSize, int Power, String Cylinders, String Image) {
        try {
            String sql = "insert into CarDetail values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarID);
            ps.setInt(2, Quantity);
            ps.setInt(3, Price);
            ps.setInt(4, NumSeat);
            ps.setInt(5, Doors);
            ps.setString(6, Color);
            ps.setString(7,Year);
            ps.setString(8, MadeIn);
            ps.setInt(9, EngineSize);
            ps.setInt(10, Power);
            ps.setString(11, Cylinders);
            ps.setString(12, Image);
            int row = ps.executeUpdate();

            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        } catch (Exception e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        }
        return false;
    }

    public boolean updateDetail(String carID, int quantity, int price, int numSeat, int doors, String color, String date, String madeIn, int engineSize, int power, String cylinders, String imageURL) {
        try {
            String sql = "update CarDetail set Quantity=?, Price=?, NumSeat=?, Doors=?, Color=?, Year=?, MadeIn=?, EngineSize=?, Power=?, Cylinders=?, Image=? where CarID=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, price);
            ps.setInt(3, numSeat);
            ps.setInt(4, doors);
            ps.setString(5, color);
            ps.setString(6, date);
            ps.setString(7, madeIn);
            ps.setInt(8, engineSize);
            ps.setInt(9, power);
            ps.setString(10, cylinders);
            ps.setString(11, imageURL);
            ps.setString(12, carID);
            int row = ps.executeUpdate();

            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        } catch (Exception e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        }
        return false;
    }

    public boolean deleteDetail(String CarID) throws Exception {
        try {
            String sql = "delete from CarDetail where CarID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CarID);

            int row = ps.executeUpdate();

            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        } catch (Exception e) {
            System.out.println("SQL error in DetailDAO " + e.getMessage());
        }
        return false;
    }

    public List<CarDetail> getAllCarModel() throws Exception {
        try {
            String sql = "select * from CarDetail";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            List<CarDetail> carDetails = new ArrayList<CarDetail>();
            while (rs.next()) {
                carDetails.add(new CarDetail(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
            return carDetails;
        } catch (SQLException e) {
            System.out.println("SQL error in CarDetail " + e.getMessage());
        }
        return null;
    }

    public CarDetail getInfoCar(String carID) {
        String query = "select * from CarDetail  where CarID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, carID);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new CarDetail(
                        rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }
    public CarIntro getCarDesc(String carID){
        String query = "select * from CarNames where CarID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, carID);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new CarIntro(
                        rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
                );
            }

        } catch (Exception e) {

        }
        return null;
    }
    public static void main(String[] args) throws Exception {
        MessageDAO dao = new MessageDAO();
        List<Message> blogs = dao.getAllMessage();
        System.out.print(blogs);
        
    }
    public void addCarTester(String customerName,String phone, String carID, String dateTest, String desc){
        String sql = "insert into RegisterToDrive\n" +
                        "values (?,?,?,GETDATE(),?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, customerName);
            ps.setString(2,phone);
            ps.setString(3, carID);
            ps.setString(4, dateTest);
            ps.setString(5, carID);            
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public boolean checkContainCar(String carID){
            if (getInfoCar(carID)!=null) return false;   
        return true;
    }
//    public boolean checkContainCus(String className, List<CustomerInfo> list){
//        for (ClassDTO c : list){
//            if (getClassByName(className)!=null) return false;
//        }
//        return true;
//    }
    public CarDetail searchCarID(String carID, List<CarDetail> list){
        for (CarDetail car:list){
            if (car.getCarID().equalsIgnoreCase(carID))
                return car;
        }
        return null;
    }
    public List<CarIntro> searchCarByName(String carName, List<CarIntro> list) throws Exception{
        List<CarIntro> nameList = new ArrayList<>();
        for (CarIntro car:list){
            if (carName.matches(car.getCarName()))
                nameList.add(car);
        }
        return nameList;
    }
    public List<CarDetail> searchCar(String carID){
        String sql = "  select * from CarDetail where [CarID] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+ carID+"%");   
            rs = ps.executeQuery();
            List<CarDetail> cars = new ArrayList<>();
            while (rs.next()) {
                cars.add(new CarDetail(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
            }
            return cars;
        } catch (Exception e) {
        }
        return null;
    }
//    public static void main(String[] args) throws Exception {
//        CarDAO dao = new CarDAO();
//        List<CarDetail> list = dao.getAllCarModel();
//        System.out.print(dao.searchCarID("A0001", list));
//    }
//    public boolean checkCarIDExist(String CarID) throws Exception{
//        try {
//            conn = new DBContex   t().getConnection();
//            String sql = "select * from CarDetail where CarID = ?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, CarID);
//            
//            rs = ps.executeQuery();
//            
//            while(rs.next()) {
//                return true;
//            }
//        } catch (Exception e){
//            System.out.println("SQL error in DetailDAO " + e.getMessage());
//        }
//        return false;
//    }
}
