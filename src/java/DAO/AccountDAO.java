/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Common.*;

/**
 *
 * @author Admin
 */
public class AccountDAO extends DAO {

    public AccountDAO() {
        getInstance();
    }

    public Account getAccount(String username, String password) {
        Account a = null;
        String sql = "Select * from user where Username=\"" + username + "\" and password=\"" + password + "\"";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("Username");
                String passWord = rs.getString("Password");
                a = new Account(userName, passWord);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }

    public boolean checkAccount(String user) {
        String sql = "Select * from user where Username=\"" + user + "\"";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String userName = rs.getString("Username");
                if (userName.equals(user)) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addAccount(String user, String pass) {
        if (checkAccount(user) || Validate.checkUsername(user)==false || Validate.checkPassword(pass)==false) {
            return false;
        }
        String sql = "insert into insurance.user(Username, Password)\n"
                + "values ('" + user + "','" + pass + "');";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();
        System.out.println(ad.addAccount("@!@", "12345"));
    }
}
