/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.DAO;
import entity.danhmucsanpham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name="register", urlPatterns={"/register"})
public class register extends HttpServlet {

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
        
        request.getRequestDispatcher("register.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("kh_dienthoai");
        String password1 = request.getParameter("kh_matkhau1");
        String password2 = request.getParameter("kh_matkhau2");
        
        String sdtKhachHang = username;
        String tenKhachHang = request.getParameter("kh_ten");
        String gioiTinh = request.getParameter("kh_gioitinh");
        String diachi = request.getParameter("kh_diachi");
        String email = request.getParameter("kh_email");
        System.out.println(username + " " + password1);
        DAO DAO = new DAO();
        DAO.InsertAccount(username, password1);
        DAO.InsertKhachHang(sdtKhachHang, tenKhachHang,gioiTinh,diachi,email);
        response.sendRedirect("login");
    }

}
