/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.*;
import Model.Account;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import Common.*;

/**
 *
 * @author Admin
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String user = req.getParameter("username");
        String pass = req.getParameter("password");
        AccountDAO accountDao = new AccountDAO();
        Account a = accountDao.getAccount(user, pass);
        if (Validate.checkUsername(user) && Validate.checkPassword(pass)) {
            if (a != null) {
                resp.sendRedirect("HomePage");
                session.setAttribute("Account", a);
                return;
            }
            session.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
            session.setAttribute("Account", null);
            resp.sendRedirect("HomePage");
        } else {
            session.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
            session.setAttribute("Account", null);
            resp.sendRedirect("HomePage");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("error", null);
        session.setAttribute("Account", null);
        resp.sendRedirect("HomePage");
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
}
