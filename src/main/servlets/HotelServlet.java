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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Suriyaa
 */
@WebServlet(urlPatterns = {"/HotelServlet"})
public class HotelServlet extends HttpServlet {

     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
try(PrintWriter out = response.getWriter()) {  
    HttpSession session = request.getSession();
    String n=request.getParameter("selectCity");
    String p=request.getParameter("picker1");
    String e=request.getParameter("picker2");
    String c=request.getParameter("mobilenum");
    String b=request.getParameter("ppl");
    int d=Integer.parseInt(request.getParameter("days"));
    String a=request.getParameter("travelRoom");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
        
        PreparedStatement ps=con.prepareStatement(
                "insert into hotel_details values(?,?,?,?,?,?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,e);
        ps.setString(4,b);
        ps.setString(5,a);
        ps.setString(6,c);
       ps.setInt(7,0);
        ps.setInt(8,d);
        
        int i=ps.executeUpdate();
        if(i>0){
            session.setAttribute("d",d);
            session.setAttribute("c",c);
            response.sendRedirect("hotel-details.jsp");
        }
          
    }catch (ClassNotFoundException | SQLException e2) {System.out.println(e2);}
      
          }  
  
}
}