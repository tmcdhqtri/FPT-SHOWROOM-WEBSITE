/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.LoginDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.AdminInfo;
import model.CarDetail;
import model.CarIntro;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CarDetailServlet", urlPatterns = {"/CarDetailServlet"})
public class CarDetailServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String carID = request.getParameter("carID");
            CarDAO dao = new CarDAO();
            LoginDAO adao = new LoginDAO();
            
            CarDetail car = dao.getInfoCar(carID);
            CarIntro intro = dao.getCarDesc(carID);
            List<AdminInfo> alist = adao.getAllAdminAcc();
            AdminInfo admin1 = alist.get(0);
            
            request.setAttribute("intro", intro);
            request.setAttribute("car", car);
            request.setAttribute("adminContact", admin1);
            request.getRequestDispatcher("car-detail.jsp").
                    forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CarDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
