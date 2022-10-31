/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import jakarta.servlet.http.*;
import java.util.ArrayList;
import jakarta.servlet.annotation.*;
import java.nio.file.Files;
import java.nio.file.Path;
import model.CarDetail;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "UpdateCarServlet", urlPatterns = {"/UpdateCarServlet"})
public class UpdateCarServlet extends HttpServlet {

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
        String carID = request.getParameter("carID");

        CarDAO dao = new CarDAO();
        CarDetail car = dao.getInfoCar(carID);
       
        request.setAttribute("c", car);
        
        System.out.println("Before: " + car.toString());

        request.getRequestDispatcher("UpdateCar.jsp").
        forward(request, response);
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
        String carID = request.getParameter("CARID");
        int quantity = Integer.parseInt(request.getParameter("QUANTITY"));
        int price = Integer.parseInt(request.getParameter("PRICE"));
        int numseat = Integer.parseInt(request.getParameter("NUMSEAT"));
        int doors = Integer.parseInt(request.getParameter("DOORS"));
        String color = request.getParameter("COLOR");
        String date = request.getParameter("DATE");
        String madeIn = request.getParameter("MADEIN");
        int engineSize = Integer.parseInt(request.getParameter("ENGINESIZE"));
        int power = Integer.parseInt(request.getParameter("POWER"));
        String cylinders = request.getParameter("CYLINDERS");
        System.out.println(quantity);
        System.out.println(price);
        CarDAO dao = new CarDAO();
        
        Part part = request.getPart("photo");
        String photoPath = request.getServletContext().getRealPath("/images");

        String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(photoPath))) {
            Files.createDirectories(Path.of(photoPath));
        }
        part.write(photoPath + "/" + filename);
        dao.updateDetail(carID, quantity, price, numseat, doors, color, date, madeIn, engineSize, power, cylinders,"images/" + filename);
        response.sendRedirect("AdminManageServlet");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
