package com.shashwat.controller;

import com.shashwat.model.BlogDAO;
import com.shashwat.model.BlogDTO;
import com.shashwat.model.Borrow;
import com.shashwat.model.BorrowDTO;
import com.shashwat.model.Subscription;
import com.shashwat.model.SubscriptionDTO;
import com.shashwat.model.UserDAO;
import com.shashwat.model.manager.BookDAO;
import com.shashwat.model.manager.BookDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GetBook extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            /// user Home
            String userhome = request.getParameter("userhome");

            HttpSession session = request.getSession();
            ArrayList<BookDAO> bookdao = new ArrayList<>();

            BookDTO bookdto = new BookDTO();

            //             -------------getBook BookDAO 
            if (bookdto.getBook(bookdao)) {
                session.setAttribute("bookdao", bookdao);

                ArrayList<BookDAO> genredao = bookdto.getGenre();
                session.setAttribute("genredao", genredao);

                if (userhome != null) {

                    response.sendRedirect("./UserView/index.jsp");

                } else {

//                -------------Subscription dao 
                    Subscription subdao = new Subscription();
                    UserDAO udao = (UserDAO) session.getAttribute("udao");
                    subdao.setId(udao.getId());

//                subdao.setIsSubscribed(false);
                    SubscriptionDTO subdto = new SubscriptionDTO();
                    if (subdto.getSubscription(subdao)) {
                        session.setAttribute("subdao", subdao);

                        response.sendRedirect("./UserView/Home.jsp");
                    } else {
                        session.setAttribute("subdao", subdao);

                        response.sendRedirect("./UserView/Home.jsp");
                    }

                    BorrowDTO borrowdto = new BorrowDTO();
                    ArrayList<Borrow> borrowdao = new ArrayList<>();
                    borrowdto.getBorrow(borrowdao, udao.getId());
                    session.setAttribute("borrowdao", borrowdao);

//                ==================getBlog===============================
                    ArrayList<BlogDAO> userblog = new ArrayList<>();
                    if (BlogDTO.getUserBlog(userblog, udao.getId())) {

                        session.setAttribute("userblog", userblog);
                    }

                    //update by mohan +++++ continue.......
                }
            } else {
                response.sendRedirect("./UserView/index.jsp");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GetBook.class.getName()).log(Level.SEVERE, null, ex);

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
