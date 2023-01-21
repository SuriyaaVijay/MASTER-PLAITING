/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Suriyaa
 */
@WebServlet(urlPatterns = {"/bookingServlet"})
public class bookingServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
try(    PrintWriter out = response.getWriter()) {  
    String n=request.getParameter("flight_no");
    String yes="yes";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
        
        PreparedStatement ps=con.prepareStatement(
                "UPDATE flights SET select_flight=? WHERE flight_no=?");
        
        ps.setString(1,yes);
        ps.setString(2,n) ;
        int i=ps.executeUpdate();
        if(i>0)
            response.sendRedirect("booking.jsp");
        
          
    }catch (ClassNotFoundException | SQLException e2) {System.out.println(e2);}
      
          }  
  
}
}
