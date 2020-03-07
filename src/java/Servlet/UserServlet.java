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
import Model.Salary;
import Model.User;

/**
 *
 * @author Admin
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String typeSubmit = req.getParameter("submit");
        String user = req.getParameter("username");
        String pass = req.getParameter("password");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String phonenumber = req.getParameter("phonenumber");
        String insurancenumber = req.getParameter("insurancenumber");
        AccountDAO accountDao = new AccountDAO();
        UserDAO userDao = new UserDAO();
        if (typeSubmit.equals("login")) {
            if (Validate.checkUsername(user) && Validate.checkPassword(pass)) {
                Account a = accountDao.getAccount(user, pass);
                if (a != null) {
                    resp.sendRedirect("HomePage");
                    session.setAttribute("Account", a);
                    User u = userDao.getUser(a);
                    session.setAttribute("User", u);
                    return;
                }
                session.setAttribute("errorlogin", "Tên đăng nhập hoặc mật khẩu không đúng!");
                session.setAttribute("Account", null);
                resp.sendRedirect("HomePage");
            } else {
                session.setAttribute("errorlogin", "Tên đăng nhập hoặc mật khẩu không đúng!");
                session.setAttribute("Account", null);
                resp.sendRedirect("HomePage");
            }
        } else if (typeSubmit.equals("signup")) {
            String passr = req.getParameter("passwordrepeat");
            if (accountDao.checkAccount(user)) {
                session.setAttribute("errorsignup", "Tên đăng nhập đã tồn tại");
                resp.sendRedirect("HomePage");
                return;
            }
            if (passr.equals(pass)) {
                if (Validate.checkUsername(user) && Validate.checkPassword(passr)) {
                    accountDao.addAccount(user, pass);
                    resp.sendRedirect("HomePage");
                } else {
                    session.setAttribute("errorsignup", "Tên đăng nhập hoặc mật khẩu bị lỗi");
                    resp.sendRedirect("HomePage");
                }
            } else {
                session.setAttribute("errorsignup", "Nhập lại mật khẩu không đúng");
                resp.sendRedirect("HomePage");
            }

        } else if (typeSubmit.equals("confirm")) {
            if (!Validate.checkName(name)) {
                session.setAttribute("errorinfo", "Tên không được chứa kí tự đặc biệt và số");
                resp.sendRedirect("HomePage");
                return;
            }
            if (!Validate.checkNumber(req.getParameter("mainsalary"))
                    || !Validate.checkNumber(req.getParameter("jobsalary"))
                    || !Validate.checkNumber(req.getParameter("mainsalary"))
                    || !Validate.checkNumber(phonenumber)) {
                session.setAttribute("errorinfo", "Lương hoặc số điện thoại không được chứa chữ, kí tự đặc biệt");
                resp.sendRedirect("HomePage");
                return;
            }
            if (!Validate.checkAddress(address) || !Validate.checkAddress(insurancenumber)) {
                session.setAttribute("errorinfo", "Địa chỉ hoặc số bảo hiểm không được chứa kí tự đặc biệt");
                resp.sendRedirect("HomePage");
                return;
            }
            int mainsalary = Integer.parseInt(req.getParameter("mainsalary"));
            int jobsalary = Integer.parseInt(req.getParameter("jobsalary"));
            int responsalary = Integer.parseInt(req.getParameter("responsalary"));
            Salary s = new Salary(mainsalary, jobsalary, responsalary);
            Account a = (Account) session.getAttribute("Account");
            User u = new User(a, name, address, phonenumber, insurancenumber, null, s, 0);
            userDao.deleteUser(a);
            userDao.addUser(u);
            session.setAttribute("Account", a);
            session.setAttribute("User", u);
            resp.sendRedirect("HomePage");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("error", null);
        session.setAttribute("Account", null);
        session.setAttribute("User", null);
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
