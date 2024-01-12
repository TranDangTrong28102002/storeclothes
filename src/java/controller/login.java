/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.DAO;
import entity.account;
import entity.danhmucsanpham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name="login", urlPatterns={"/login"})
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAO DAO = new DAO();
        List<danhmucsanpham> list_menu_nu = DAO.getAllDanhMucSanPham();
        List<danhmucsanpham> list_menu_nam = list_menu_nu;
        List<danhmucsanpham> list_menu_treEm = list_menu_nu;
        List<danhmucsanpham> list_menu_boSuuTap = list_menu_nu;
       
        
        request.setAttribute("listPNu", list_menu_nu);
        request.setAttribute("listPNam", list_menu_nam);
        request.setAttribute("listPTreEm", list_menu_treEm);
        request.setAttribute("listPboSuuTap", list_menu_boSuuTap);
        HttpSession session = request.getSession();
        
        System.out.println(session.getAttribute("user"));
        if(session.getAttribute("user") != null){
            response.sendRedirect("./");
            return;
        }
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        DAO DAO = new DAO();
        account acc = DAO.getAccountByUserName(user,pass);
        if(acc.getUsename()!=null){
            Cookie cuser = new Cookie("cuser", user);
            Cookie cpass = new Cookie("cpass", pass);
            cuser.setMaxAge(24*60*60);
            cpass.setMaxAge(24*60*60);
            response.addCookie(cuser);
            response.addCookie(cpass);
            HttpSession session = request.getSession();
            session.setAttribute("user", acc.getUsename());
            session.setAttribute("roles", acc.getChucVu());
            System.out.println("login: " + acc.getUsename());
            System.out.println("session: " + session.getAttribute("user"));
            session.setAttribute("pass", acc.getPassword());
            if(acc.getChucVu().equals("Nhân viên")){
                response.sendRedirect("admin");
            }
            else{
                response.sendRedirect("./");
            }
       }
        else{
            response.sendRedirect("login");
        }
    }
}
