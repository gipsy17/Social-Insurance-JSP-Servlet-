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

/**
 *
 * @author Admin
 */
public class AccountDAO extends DAO{

    public AccountDAO() {
        getInstance();
    }
    public Account getAccount(String username,String password)
    {
        Account a = null;
        String sql = "Select * from account where Username=\""+username+"\" and password=\""+password+"\"";
        System.out.println(sql);
        try
        {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                String userName = rs.getString("Username");
                String passWord = rs.getString("Password");
                a = new Account(userName, passWord);
            }
            System.out.println(a);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return a;
    }
    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();
        ad.getAccount("gipsy17","12345");
    }
}
