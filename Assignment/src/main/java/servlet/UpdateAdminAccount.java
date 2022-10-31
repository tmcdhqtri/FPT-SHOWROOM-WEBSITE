/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.LoginDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import jakarta.servlet.http.*;
import java.util.ArrayList;
import jakarta.servlet.annotation.*;
import java.nio.file.Files;
import java.nio.file.Path;
import model.AdminInfo;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "UpdateAdminAccount", urlPatterns = {"/UpdateAdminAccount"})
public class UpdateAdminAccount extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("username");

        LoginDAO dao = new LoginDAO();
        AdminInfo acc = dao.checkAdminExist(user);
       
        request.setAttribute("u", acc);        
        System.out.println("Before: " + acc.toString());

        request.getRequestDispatcher("UpdateAdminAccount.jsp").
                forward(request, response);
    }


    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        AdminInfo acc = (AdminInfo) session.getAttribute("ROLE");
        if (acc== null){
            response.sendRedirect("HomeServlet");
        } else {
        String adminID = request.getParameter("ADMINID");
        String user = request.getParameter("USERNAME");
        String pass = request.getParameter("PASSWORD");
        String name = request.getParameter("ADMINNAME");
        String phone = request.getParameter("PHONE");
        String email = request.getParameter("EMAIL");
        String address = request.getParameter("ADDRESS");
        String birthday = request.getParameter("DATEOFBIRTH");
        boolean role = Boolean.parseBoolean(request.getParameter("ROLE"));
        LoginDAO dao = new LoginDAO();
        
         Part part = request.getPart("photo");
        String photoPath = request.getServletContext().getRealPath("/images");

        String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(photoPath))) {
            Files.createDirectories(Path.of(photoPath));
        }
        part.write(photoPath + "/" + filename);
        dao.updateAdminAcc(adminID,role,name,phone,email,address,birthday,user,pass,"images/" + filename);
        response.sendRedirect("AdminManageServlet");
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
