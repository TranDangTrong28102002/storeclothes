/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAO;
import entity.account;
import entity.danhmucsanpham;
import entity.danhsachhoadon;
import entity.khachhang;
import entity.sanpham;
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
@WebServlet(name = "admin", urlPatterns = {"/admin"})
public class admin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAO DAO = new DAO();
        
        List<danhmucsanpham> dmsp = DAO.getAllDanhMucSanPham();
        List<danhsachhoadon> dshd = DAO.getALlDSHD();
        List<account> acc = DAO.getAllAccount();
        List<sanpham> sp = DAO.getAllProduct();
        
        HttpSession session = request.getSession();
        String sdtKH = (String) session.getAttribute("user");
        khachhang kh = DAO.getInfoKhachHang(sdtKH);
        
        request.setAttribute("kh", kh);
        request.setAttribute("user", session.getAttribute("user"));
        request.setAttribute("sp", sp);
        request.setAttribute("acc", acc);
        request.setAttribute("dshd", dshd);
        request.setAttribute("dmsp", dmsp);
        
        
        String roles = (String) session.getAttribute("roles");
        if (roles == null){
            response.sendRedirect("login");
        }
        else if(roles.equals("Nhân viên")){
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        }
        else{
            response.sendError(403);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
