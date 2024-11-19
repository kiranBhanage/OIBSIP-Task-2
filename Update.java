package com.ty;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/update")
public class Update extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("email");
     
        String name = req.getParameter("name");
        
        
        String phone = req.getParameter("phone");
        
        
        
        
        String age = req.getParameter("age");

        Connection connection = ConnectionPool.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE ReservationSys SET name=?, phone=?, standard=? WHERE email=?");
            ps.setString(1, name);
                          ps.setString(2, phone);
            ps.setString(3, age);
                  ps.setString(4, email);
            
            int rowsUpdated = ps.executeUpdate();
            
            if (rowsUpdated > 0) {
                req.setAttribute("message", "Record updated successfully!");
                RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
                rd.forward(req, resp);
            } else {
                req.setAttribute("message", "Record update failed.");
                RequestDispatcher rd = req.getRequestDispatcher("Update.jsp");
                rd.forward(req, resp);
            }
            
            RequestDispatcher rd = req.getRequestDispatcher("Update.jsp");
            rd.forward(req, resp);
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionPool.submitConnection(connection);
        }
    }
}
