package com.ty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String train = request.getParameter("train");
        String classType = request.getParameter("class");
        String date = request.getParameter("date");
        String from = request.getParameter("from");
        String to = request.getParameter("to");

        response.getWriter().println("<html>");
        response.getWriter().println("<head>");
        response.getWriter().println("<link rel='stylesheet' type='text/css' href='css/styles.css'>");
        response.getWriter().println("</head>");
        response.getWriter().println("<body>");
        response.getWriter().println("<div class='container'>"); 
        response.getWriter().println("<h1>Ticket Details</h1>");

        if (name != null && !name.isEmpty()) {
            response.getWriter().println("<p><strong>Name:</strong> " + name + "</p>");
            response.getWriter().println("<p><strong>Age:</strong> " + age + "</p>");
            response.getWriter().println("<p><strong>Train:</strong> " + train + "</p>");
            response.getWriter().println("<p><strong>Class Type:</strong> " + classType + "</p>");
            response.getWriter().println("<p><strong>Date of Journey:</strong> " + date + "</p>");
            response.getWriter().println("<p><strong>From:</strong> " + from + "</p>");
            response.getWriter().println("<p><strong>To:</strong> " + to + "</p>");
        } else {
            response.getWriter().println("<p>No data available. Please fill out the form first.</p>");
        }

        response.getWriter().println("<a href='ReservationForm.jsp'>Back to Form</a>");
        response.getWriter().println("</div>");
        response.getWriter().println("</body>");
        response.getWriter().println("</html>");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
