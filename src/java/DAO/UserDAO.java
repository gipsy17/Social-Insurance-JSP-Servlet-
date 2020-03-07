/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.con;
import Model.*;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class UserDAO extends DAO{

    public UserDAO() {
        getInstance();
    }
    public User getUser(Account a)
    {
        User u = null;
        String username = a.getUserName();
        String password = a.getPassWord();
        String sql = "Select * from user where Username=\"" + username + "\" and password=\"" + password + "\"";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("Username");
                String passWord = rs.getString("Password");
                String name = rs.getString("name");
                String address = rs.getString("address");
                String phonenumber = rs.getString("phonenumber");
                String insuranceNumber = rs.getString("insurancenumber");
                int insuranceStatus = rs.getInt("insuranceStatus");
                int mainsalary = rs.getInt("mainsalary");
                int jobsalary = rs.getInt("jobsalary");
                int responsalary = rs.getInt("responsalary");
                Date birthday = rs.getDate("birthday");
                Salary s = new Salary(mainsalary, jobsalary, responsalary);
                u = new User(a, name, address, phonenumber, insuranceNumber, birthday, s, insuranceStatus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }
    public void deleteUser(Account a)
    {
        String username = a.getUserName();
        String pass = a.getPassWord();
        String sql = "delete from user where Username=\"" + username + "\"";
        System.out.println(sql);
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }   
    }
    public void addUser(User u)
    {
        String username = u.getA().getUserName();
        String pass = u.getA().getPassWord();
        String name = u.getName();
        String address = u.getAddress();
        String phoneNumber = u.getPhonenumber();
        String insuranceNumber = u.getInsurancenumber();
        int mainsalary = u.getS().getMainsalary();
        int jobsalary = u.getS().getJobsalary();
        int responsalary = u.getS().getResponsalary();
        String sql = "insert into insurance.user(Username, Password, "
                + "name, address, phonenumber, insurancenumber, mainsalary,"
                + "jobsalary, responsalary )\n"
                + "values ('" + username + "','" + pass + "','" + 
                name + "','" + address + "','" + phoneNumber + "',"
                + "'" + insuranceNumber + "','" + mainsalary + "','" + jobsalary + "','" + responsalary + "');";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        UserDAO ud = new UserDAO();
        Account a = new Account("b", "b");
        Salary s = new Salary(11, 12, 13);
        User u = new User(a, "hoi", "bn", "323124", "sv13123", null, s, 0);
        ud.addUser(u);
    }
}
