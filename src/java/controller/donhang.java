/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAO;
import entity.chitiethoadon;
import entity.mau;
import entity.sanpham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "donhang", urlPatterns = {"/donhang"})
public class donhang extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String idDH = request.getParameter("id");
        DAO DAO = new DAO();
        if (action.equals("detail")){
            List<chitiethoadon> ds = DAO.getChiTietHoaDonByID(Integer.parseInt(idDH));
            
            List<sanpham> sp = new ArrayList<>();
            for(chitiethoadon i : ds){
                sp.add(DAO.getProductByID(Integer.toString(i.getIdSanPham())));
            }
            
            List<String> mau = new ArrayList<>();
            for(sanpham i : sp){
                mau.add(DAO.getMauByID(i.getIdMau()).getColor());
            } 
            request.setAttribute("chiTietDH", ds);
            request.setAttribute("sp", sp);
            request.setAttribute("mau", mau);
            request.getRequestDispatcher("detail.jsp").forward(request, response);
        }
    }


}
