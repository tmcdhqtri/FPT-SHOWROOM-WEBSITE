/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class CarTestingRegister {
    private String customerName;
    private String phone;
    private String carID;
    private Date dateRegistered;
    private String dateTest;
    private String desc;

    public CarTestingRegister() {
    }

    public CarTestingRegister(String customerName, String phone, String carID, Date dateRegistered, String dateTest, String desc) {
        this.customerName = customerName;
        this.phone = phone;
        this.carID = carID;
        this.dateRegistered = dateRegistered;
        this.dateTest = dateTest;
        this.desc = desc;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public Date getDateRegistered() {
        return dateRegistered;
    }

    public void setDateRegistered(Date dateRegistered) {
        this.dateRegistered = dateRegistered;
    }

    public String getDateTest() {
        return dateTest;
    }

    public void setDateTest(String dateTest) {
        this.dateTest = dateTest;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
   
}
