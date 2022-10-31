/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.BlogDAO;
import dao.CarDAO;
import dao.LoginDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.AdminInfo;
import model.Blog;
import model.CarDetail;

/**
 *
 * @author Admin
 */
public class HomeServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        CarDAO cdao = new CarDAO();
        BlogDAO bdao = new BlogDAO();
        LoginDAO adao = new LoginDAO();
        
        List<CarDetail> clist = cdao.getAllCarModel();
        List<Blog> blist = bdao.getAllBlogs();   
        List<AdminInfo> alist = adao.getAllAdminAcc();
        AdminInfo admin1 = alist.get(0);
        request.setAttribute("adminContact", admin1);
        request.setAttribute("listCar", clist);
        request.setAttribute("listBlog", blist);
        RequestDispatcher rd = request.getRequestDispatcher("Homepage.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
