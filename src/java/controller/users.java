/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAO;
import entity.danhmucsanpham;
import entity.danhsachhoadon;
import entity.khachhang;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "users", urlPatterns = {"/users"})
public class users extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        DAO DAO = new DAO();
        
        List<danhmucsanpham> list_menu_nu = DAO.getAllDanhMucSanPham();
        List<danhmucsanpham> list_menu_nam = list_menu_nu;
        List<danhmucsanpham> list_menu_treEm = list_menu_nu;
        List<danhmucsanpham> list_menu_boSuuTap = list_menu_nu;
        List<danhsachhoadon> dshd = DAO.getALlDanhSachHoaDon((String) session.getAttribute("user"));
        
        request.setAttribute("dshd", dshd);
        System.out.println("dshd_size=" + dshd.size());
        request.setAttribute("listPNu", list_menu_nu);
        request.setAttribute("listPNam", list_menu_nam);
        request.setAttribute("listPTreEm", list_menu_treEm);
        request.setAttribute("listPboSuuTap", list_menu_boSuuTap);
        String roles = (String) session.getAttribute("roles");
        if (roles == null){
            response.sendRedirect("login");
        }
        else if(roles.equals("Khách hàng")){
            if(session.getAttribute("user") == null){
                response.sendRedirect("login");
            }
            else{
                String sdtKH = (String) session.getAttribute("user");
                khachhang kh = DAO.getInfoKhachHang(sdtKH);
                request.setAttribute("kh", kh);
                if(request.getParameter("action") != null){
                    String idDH = request.getParameter("id");
                    DAO.deleteHoaDonByID(Integer.parseInt(idDH));
                    DAO.deleteChiTietHoaDonByID(Integer.parseInt(idDH));
                }
                if(request.getParameter("action") != null){
                    response.sendRedirect("users?done=true");
                }
                else{
                    request.getRequestDispatcher("users.jsp").forward(request, response);
                }
            }
        }
        else{
            response.sendError(403);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        DAO DAO = new DAO();
        if(action.equals("update_info")){
            String ten = request.getParameter("ten");
            String diaChi = request.getParameter("diaChi");
            String sdtKH = (String) session.getAttribute("user");
            String emailKH = request.getParameter("emailKH");
            String gioiTinh = request.getParameter("gioiTinh");
            String ngaySinh = request.getParameter("ngaySinh");
            khachhang kh = new khachhang(sdtKH, ten, diaChi, emailKH, gioiTinh);
            DAO.updateKH(kh);
            response.sendRedirect("users");
        }
    }
}
