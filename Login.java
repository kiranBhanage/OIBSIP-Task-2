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

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String useremail = req.getParameter("semail");
		String userpass=req.getParameter("spass");
		
		Connection connection= ConnectionPool.getConnection();
		
		try {
			PreparedStatement ps=connection.prepareStatement("SELECT * FROM reservation WHERE email=?");
			ps.setString(1, useremail);
			
			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
				String dbpass=rs.getString(5);
				if (dbpass.equals(userpass)) {
					HttpSession session=req.getSession();
					session.setAttribute("email", useremail);
					RequestDispatcher rd=req.getRequestDispatcher("Home.jsp");
					rd.forward(req, resp);
				} else {
					req.setAttribute("msg", "Wrong Password");
					RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
					rd.forward(req, resp);
				}
			} else {
				req.setAttribute("msg", "User Not Registered");
				RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
				rd.forward(req, resp);
			}
			
			
		} catch (SQLException e) {
		    e.printStackTrace();  // This will print the stack trace to the server log
		    req.setAttribute("msg", "Something went wrong, please try again later");
		    RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
		    rd.forward(req, resp); // Forward to login in case of an error
		}
finally {
			ConnectionPool.submitConnection(connection);
		}
		
	}

}
