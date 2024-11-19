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

@WebServlet("/Register")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String username = req.getParameter("sname");
	    String useremail = req.getParameter("semail");
	    String userphone = req.getParameter("sphone");
	    String userage = req.getParameter("sage");
	    String userpass = req.getParameter("spass");

	    Connection connection = null;

	    try {
	        connection = ConnectionPool.getConnection();
	        PreparedStatement ps = connection.prepareStatement(
	        	    "INSERT INTO public.\"reservation\" (name, email, phone, age, password) VALUES (?, ?, ?, ?, ?)");

	        ps.setString(1, username);
	        ps.setString(2, useremail);
	        ps.setString(3, userphone);
	        ps.setString(4, userage);
	        ps.setString(5, userpass);

	        int insert = ps.executeUpdate();

	        if (insert > 0) {
	            req.setAttribute("msg", "Registration Successful");
	            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
	            rd.forward(req, resp);
	        } else {
	            req.setAttribute("msg", "Registration Failed");
	            RequestDispatcher rd = req.getRequestDispatcher("Register.jsp");
	            rd.forward(req, resp);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        req.setAttribute("msg", "SQL Error: " + e.getMessage()); 
	        RequestDispatcher rd = req.getRequestDispatcher("Register.jsp");
	        rd.forward(req, resp);
	    } finally {
	        if (connection != null) {
	            ConnectionPool.submitConnection(connection);
	        }
	    }
	}
}
