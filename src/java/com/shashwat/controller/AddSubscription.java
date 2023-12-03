package com.shashwat.controller;

import com.shashwat.model.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;

import com.shashwat.model.Subscription;
import com.shashwat.model.SubscriptionDTO;

public class AddSubscription extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            out.println("<h1>Servlet AddSubscription at " + request.getContextPath() + "</h1>");

            HttpSession session = request.getSession();
            UserDAO udao = (UserDAO) session.getAttribute("udao");

            //  the current date
            LocalDate StartDate = LocalDate.now();
            out.println(StartDate);
            String date = StartDate.toString();
            LocalDate current = LocalDate.parse(date);

            // Calculate three months later
            LocalDate subsExpiryDate = current.plusMonths(3);

            String exdate = subsExpiryDate.toString();
            int subsPeriod = 3;
            double subAmmount = 199.0;

            Subscription subdao = new Subscription(subsPeriod, date, exdate, subAmmount);
            subdao.setId(udao.getId());
            SubscriptionDTO subdto = new SubscriptionDTO();

            if (subdto.adSubscription(subdao)) {

                out.print("succsessfull added");

                if (subdto.getSubscription(subdao)) {
                    session.setAttribute("subdao", subdao);

                    response.sendRedirect("./UserView/Home.jsp");
                } else {
                    session.setAttribute("subdao", subdao);

                    response.sendRedirect("./UserView/Home.jsp");
                }

            }

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
