package com.ty;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Delete")
public class Delete extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		String useremail=(String) session.getAttribute("semail");
		
		Connection connection=ConnectionPool.getConnection();
		
		try {
			PreparedStatement ps=connection.prepareStatement("DELETE FROM reservation WHERE email=?");
			ps.setString(1, useremail);
			
			ps.executeUpdate();
			
			resp.sendRedirect("Register.jsp");
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ConnectionPool.submitConnection(connection);
		}
	}

}
