/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.LoginDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.AdminInfo;
import model.CustomerInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private static final String pattern = "^admin";

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
//        Pattern pattern = Pattern.compile("^(admin)");
        boolean check1 = false, check2 = false;
        String username = request.getParameter("USERNAME");
        String password = request.getParameter("PASSWORD");
        LoginDAO dao = new LoginDAO();
//        System.out.println(pattern.matcher(username).matches());
//        if (username.matches(pattern)) {            
        AdminInfo accAdmin = dao.checkLoginAdmin(username, password);
        System.out.println(accAdmin);
        if (accAdmin != null) {
            check1 = true;
            if (accAdmin.isRole()) {
                HttpSession session = request.getSession();
                session.setAttribute("ROLE", accAdmin);
                session.setAttribute("ROLEADMIN", 1);
                session.setAttribute("ROLESALE", 1);
                response.sendRedirect("HomeServlet");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("ROLE", accAdmin);
                session.setAttribute("ROLEADMIN", 1);
                session.setAttribute("ROLESALE", 0);
                response.sendRedirect("HomeServlet");
                
            }
        } else {
            CustomerInfo accUser = dao.checkLoginCustomer(username, password);
            if (accUser != null) {
                check2 = true;
                HttpSession session = request.getSession();
                response.sendRedirect("HomeServlet");
                session.setAttribute("ROLEUSER", accUser);
            }
        }
        if (check1==false && check2==false){
        request.setAttribute("MESSAGE", "Wrong Username or Password");
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
    }// </editor-fold>

}
