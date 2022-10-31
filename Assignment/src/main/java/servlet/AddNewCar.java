/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.LoginDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import jakarta.servlet.http.*;
import java.util.ArrayList;
import jakarta.servlet.annotation.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.AdminInfo;
import model.CarDetail;
import model.CarIntro;
import model.CustomerInfo;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "AddNewCar", urlPatterns = {"/AddNewCar"})
public class AddNewCar extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        String url = "";
        HttpSession session = request.getSession();
        AdminInfo acc = (AdminInfo) session.getAttribute("ROLE");
        if (acc== null){
            response.sendRedirect("HomeServlet");
        }
        else{
        String carID = request.getParameter("CARID");
        String carName = request.getParameter("CARNAME");
        String model = request.getParameter("MODEL");
        String description = request.getParameter("DESCRIPTION");
        int quantity = Integer.parseInt(request.getParameter("QUANTITY"));
        int price = Integer.parseInt(request.getParameter("PRICE"));
        int numSeat = Integer.parseInt(request.getParameter("NUMSEAT"));
        int doors = Integer.parseInt(request.getParameter("DOORS"));
        String color = request.getParameter("COLOR");
        String date = request.getParameter("YEAR");
        String madeIn = request.getParameter("MADEIN");
        int engineSize = Integer.parseInt(request.getParameter("ENGINESIZE"));
        int power = Integer.parseInt(request.getParameter("POWER"));    
        String cylinders = request.getParameter("CYLINDERS");
        CarDAO dao = new CarDAO();
        
        Part part = request.getPart("photo");
        String photoPath = request.getServletContext().getRealPath("/images");

        String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(photoPath))) {
            Files.createDirectories(Path.of(photoPath));
        }
        part.write(photoPath + "/" + filename);
        
        boolean check = dao.checkCarIDExist(carID);
        if (check==true) {
            request.setAttribute("MESSAGE", "Exist CarID ");
            url = "AddNewCar.jsp";
        } else {
            dao.addCar(carID, carName, model, description);
            dao.addDetail(carID, quantity, price, numSeat, doors, color, date, madeIn, engineSize, power, cylinders, "images/" + filename);
            url = "AdminManageServlet";

        }
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AddNewCar.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AddNewCar.class.getName()).log(Level.SEVERE, null, ex);
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
