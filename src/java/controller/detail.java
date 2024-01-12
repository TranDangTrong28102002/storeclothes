/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import entity.sanpham;
import dao.DAO;
import entity.gioHang;
import entity.danhmucsanpham;
import entity.kichco;
import entity.mau;
import entity.productimage;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
@WebServlet(name="detail", urlPatterns={"/detail"})
public class detail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idSanPham =  request.getParameter("idSanPham") ;
        DAO DAO = new DAO();
        
        
        List<productimage> listPimg = DAO.getProductImageByID(idSanPham);
        List<danhmucsanpham> list_menu_nu = DAO.getAllDanhMucSanPham();
        List<danhmucsanpham> list_menu_nam = list_menu_nu;
        List<danhmucsanpham> list_menu_treEm = list_menu_nu;
        List<danhmucsanpham> list_menu_boSuuTap = list_menu_nu;
        sanpham p = DAO.getProductByID(idSanPham);
        kichco kichCo = DAO.getKichCoByID(idSanPham);
        mau mau = DAO.getMauByID(p.getIdMau());
        
        request.setAttribute("listPNu", list_menu_nu);
        request.setAttribute("listPNam", list_menu_nam);
        request.setAttribute("listPTreEm", list_menu_treEm);
        request.setAttribute("listPboSuuTap", list_menu_boSuuTap);
        
        request.setAttribute("detailP", p);
        request.setAttribute("listPimg", listPimg);
        request.setAttribute("kichCo", kichCo);
        request.setAttribute("mau", mau);
        
        request.getRequestDispatcher("trangsanpham.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        String soDienThoaiKH = (String) session.getAttribute("user");
        String idSanPham = request.getParameter("idSanPham");
        String soLuong = request.getParameter("soLuong");
        String size = request.getParameter("size");
        
        System.out.println(size);

        gioHang gioHang = new gioHang("null", soDienThoaiKH, idSanPham, soLuong, size);
  
        DAO DAO = new DAO();
        DAO.InsertGioHangByID(gioHang);
        response.sendRedirect("detail?idSanPham=" + idSanPham);
    }

}
