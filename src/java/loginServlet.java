/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author user
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Hello");
        String dusername=null, dpassword=null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println(username);
        out.println(password);

//        String sql = "SELECT * FROM user";
//        try {
//           
//            Class.forName("com.mysql.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/shop";
//            Connection con = DriverManager.getConnection(url, "root", "");
//            out.println(con);
//            Statement stmt = con.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//            
//            while (rs.next()) {
//                 dusername = rs.getString("username");
//                 dpassword = rs.getString("password");
//                
//            }
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
        if(new ConnectionFactory().checkLogin(username, password)){
             RequestDispatcher rd = request.getRequestDispatcher("UserList.jsp");
            rd.forward(request, response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
//        if (dusername.equals(username) && dpassword.equals(password)) {
//            RequestDispatcher rd = request.getRequestDispatcher("shop.html");
//            rd.forward(request, response);
//        } else {
//            RequestDispatcher rd = request.getRequestDispatcher("index.html");
//            rd.forward(request, response);
//        }

    }
}