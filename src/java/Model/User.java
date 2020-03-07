/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class User {
    private Account a;
    private String name;
    private String address;
    private String phonenumber;
    private String insurancenumber;
    private Date birthday ;
    private Salary s;
    private int insuranceStatus;

    public User() {
    }

    public Account getA() {
        return a;
    }

    public void setA(Account a) {
        this.a = a;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getInsurancenumber() {
        return insurancenumber;
    }

    public void setInsurancenumber(String insurancenumber) {
        this.insurancenumber = insurancenumber;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Salary getS() {
        return s;
    }

    public void setS(Salary s) {
        this.s = s;
    }

    public int getInsuranceStatus() {
        return insuranceStatus;
    }

    public void setInsuranceStatus(int insuranceStatus) {
        this.insuranceStatus = insuranceStatus;
    }

    public User(Account a, String name, String address, String phonenumber, String insurancenumber, Date birthday, Salary s, int insuranceStatus) {
        this.a = a;
        this.name = name;
        this.address = address;
        this.phonenumber = phonenumber;
        this.insurancenumber = insurancenumber;
        this.birthday = birthday;
        this.s = s;
        this.insuranceStatus = insuranceStatus;
    }

    @Override
    public String toString() {
        return "User{" + "a=" + a + ", name=" + name + ", address=" + address + ", phonenumber=" + phonenumber + ", insurancenumber=" + insurancenumber + ", birthday=" + birthday + ", s=" + s + ", insuranceStatus=" + insuranceStatus + '}';
    }

}