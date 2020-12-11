/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.webfinal.controller;

import com.mycompany.webfinal.DAO.userDao;
import com.mycompany.webfinal.models.User;
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
 * @author aldom
 */
@WebServlet(name = "LogInController", urlPatterns = {"/LogInController"})
public class LogInController extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        User user = new User(Email, Password);
        User logIn = userDao.LogInUser(user);
        String mea = "<script>alert('Datos incorrectos')</script>";
        if(logIn != null){
            HttpSession session = request.getSession();
            session.setAttribute("UserName", logIn.getEmail());
            session.setAttribute("Img", logIn.getPassword());
            response.sendRedirect("P2.jsp");
        }else{
            HttpSession session = request.getSession();
            response.sendRedirect("index.jsp");
            session.setAttribute("meso", mea);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
