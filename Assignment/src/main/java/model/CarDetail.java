/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class CarDetail {
    private String carID;
    private int quantity;
    private int price;
    private int numSeat;
    private int doors;
    private String color;
    private String date;
    private String madeIn;
    private int engineSize;
    private int power;
    private String cylinders;
    private String imageURL;

    public CarDetail() {
    }

    public CarDetail(String carID, int quantity, int price, int numSeat, int doors, String color, String date, String madeIn, int engineSize, int power, String cylinders, String imageURL) {
        this.carID = carID;
        this.quantity = quantity;
        this.price = price;
        this.numSeat = numSeat;
        this.doors = doors;
        this.color = color;
        this.date = date;
        this.madeIn = madeIn;
        this.engineSize = engineSize;
        this.power = power;
        this.cylinders = cylinders;
        this.imageURL = imageURL;
    }

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNumSeat() {
        return numSeat;
    }

    public void setNumSeat(int numSeat) {
        this.numSeat = numSeat;
    }

    public int getDoors() {
        return doors;
    }

    public void setDoors(int doors) {
        this.doors = doors;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMadeIn() {
        return madeIn;
    }

    public void setMadeIn(String madeIn) {
        this.madeIn = madeIn;
    }

    public int getEngineSize() {
        return engineSize;
    }

    public void setEngineSize(int engineSize) {
        this.engineSize = engineSize;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public String getCylinders() {
        return cylinders;
    }

    public void setCylinders(String cylinders) {
        this.cylinders = cylinders;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    @Override
    public String toString() {
        return "CarDetail{" + "carID=" + carID + ", quantity=" + quantity + ", price=" + price + ", numSeat=" + numSeat + ", doors=" + doors + ", color=" + color + ", date=" + date + ", madeIn=" + madeIn + ", engineSize=" + engineSize + ", power=" + power + ", cylinders=" + cylinders + ", imageURL=" + imageURL + '}';
    }

    
    
}
