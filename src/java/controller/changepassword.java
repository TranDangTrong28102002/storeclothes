/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAO;
import entity.account;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "changepassword", urlPatterns = {"/changepassword"})
public class changepassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("user");
        if(username == null){
            response.sendRedirect("login");
        }
        else{
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oldPassword = request.getParameter("old_password");
        String newPassword = request.getParameter("new_password");
        String newPassword2 = request.getParameter("new_password2");
        System.out.println(newPassword);
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("user");
        System.out.println("username=" + username);
        System.out.println("username= " + session.getAttribute("user"));
        DAO DAO = new DAO();
        account user = DAO.getAccountByUserName(username, oldPassword);
        System.out.println(user);
        if(user != null){
            DAO.updateAccount(username, newPassword);
            response.sendRedirect("logout");
        }
        else{
            response.sendRedirect("changepassword"); 
        }
    }


}
