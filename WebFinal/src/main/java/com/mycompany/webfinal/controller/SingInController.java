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
@WebServlet(name = "SingInController", urlPatterns = {"/SingInController"})
public class SingInController extends HttpServlet {

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
        String UserName = request.getParameter("user");
        String Password = request.getParameter("password");
        String Red1 = request.getParameter("red1");
        String Red2 = request.getParameter("red2");
        String Img = request.getParameter("img");
        String mes = "<script>alert('Usuario registrado, ya puedes iniciar sesión con tus datos')</script>";
        String meso = "<script>alert('El usuario que intentas registrar ya existe, intenta con otro')</script>";
        User user = new User(Email,UserName, Password, Red1, Red2, Img);
        if (userDao.SignInUser(user) == 1){
            HttpSession session = request.getSession();
            response.sendRedirect("P2.jsp");
            session.setAttribute("mes", mes);
        }else if (userDao.SignInUser(user) != 1){
            HttpSession session = request.getSession();
            response.sendRedirect("P2.jsp");
            session.setAttribute("meso", meso);
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
