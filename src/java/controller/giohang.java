/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import entity.gioHang;
import dao.DAO;
import entity.danhmucsanpham;
import entity.mau;
import java.io.IOException;
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
@WebServlet(name="giohang", urlPatterns={"/giohang"})
public class giohang extends HttpServlet {

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
        String soDienThoaiKH = (String) session.getAttribute("user");
        
        List<gioHang> gioHang = DAO.getProductBySDTKhachHang(soDienThoaiKH);
        List<mau> mau = DAO.getListMau();
        
        if(request.getParameter("action") != null){
            String idGH = request.getParameter("idGH");
            DAO.deleteGHById(Integer.parseInt(idGH));
        }
        
        request.setAttribute("sdtKH", soDienThoaiKH);
        request.setAttribute("gioHang", gioHang);
        request.setAttribute("mau", mau);

        if(request.getParameter("action") != null){
            response.sendRedirect("giohang");
        }
        else{
            request.getRequestDispatcher("GIO_HANG.jsp").forward(request, response);
        }
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }
}
