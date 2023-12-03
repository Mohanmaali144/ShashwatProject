/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shashwat.controller;

import com.shashwat.model.Borrow;
import com.shashwat.model.BorrowDTO;
import com.shashwat.model.Subscription;
import com.shashwat.model.SubscriptionDTO;
import com.shashwat.model.UserDAO;
import com.shashwat.model.manager.BookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author Mohan_Maali
 */
public class AddBorrow extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int bookid = Integer.parseInt(request.getParameter("bookid"));

            out.println("<h1>Servlet AddBorrow at " + request.getContextPath() + "</h1>");

            HttpSession session = request.getSession();
            UserDAO udao = (UserDAO) session.getAttribute("udao");

            //  the current date
            LocalDate StartDate = LocalDate.now();
            out.println(StartDate);

            String date = StartDate.toString();
            LocalDate current = LocalDate.parse(date);

            // Calculate three months later
            LocalDate borrowExpiryDate = current.plusDays(15);
            String exdate = borrowExpiryDate.toString();

            int timePeriod = 15;
            double borrowAmmount = 14.0;
            boolean isBorrowed = true;

            out.println("" + exdate);
            Borrow borrow = new Borrow(date, exdate, borrowAmmount, isBorrowed, timePeriod);
            borrow.setId(udao.getId());
            borrow.setBookId(bookid);
            BorrowDTO borrowdto = new BorrowDTO();

            out.println("" + exdate);
            if (borrowdto.adBorrow(borrow)) {
                out.print("succsessfull added in borrow");

                ArrayList<Borrow> borrowdao = new ArrayList<>();
                borrowdto.getBorrow(borrowdao, udao.getId());
                session.setAttribute("borrowdao", borrowdao);
            }

            out.println("<h1>Servlet AddBorrow at " + request.getContextPath() + "</h1>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
