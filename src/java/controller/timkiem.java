/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.DAO;
import entity.danhmucsanpham;
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
@WebServlet(name="timkiem", urlPatterns={"/timkiem"})
public class timkiem extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String sanphamtimkiem = request.getParameter("sanphamtimkiem");
        System.out.println("sanphamtimkiem=" + sanphamtimkiem);
        DAO DAO = new DAO();
        List<sanpham> list = DAO.getAllProduct();
        List<sanpham> listP = new ArrayList<>();
        for(sanpham p:list){
                String productName = p.getTitle().toLowerCase(); 
                if (productName.contains(sanphamtimkiem)) {
                    listP.add(p);
                }
            }
        List<danhmucsanpham> list_menu_nu = DAO.getAllDanhMucSanPham();
        List<danhmucsanpham> list_menu_nam = list_menu_nu;
        List<danhmucsanpham> list_menu_treEm = list_menu_nu;
        List<danhmucsanpham> list_menu_boSuuTap = list_menu_nu;
    
        request.setAttribute("listPNu", list_menu_nu);
        request.setAttribute("listPNam", list_menu_nam);
        request.setAttribute("listPTreEm", list_menu_treEm);
        request.setAttribute("listPboSuuTap", list_menu_boSuuTap);
        request.setAttribute("listP", listP);
        request.setAttribute("sanphamtimkiem", sanphamtimkiem);
        request.getRequestDispatcher("timkiemsanpham.jsp").forward(request, response);
    }

}
