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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/RegServlet"})
public class RegServlet extends HttpServlet {
@Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
response.setContentType("text/html");  
try(    PrintWriter out = response.getWriter()) {  
    String n=request.getParameter("email");
    String p=request.getParameter("psw");
    String e=request.getParameter("psw-repeat");
    if(p.equals(e)){
       try{
           try {
               Class.forName("com.mysql.jdbc.Driver");
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(RegServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
           Connection con;
            con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
           PreparedStatement ps=con.prepareStatement(
                "insert into register values(?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,e);
        int i=ps.executeUpdate();
        if(i>0){
            response.sendRedirect("index.jsp");
     }
        } catch (SQLException ex) {
                Logger.getLogger(RegServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else
        {
            out.println("<meta http-equiv='refresh' content='3;URL=index.jsp'>");//redirects after 3 seconds
   out.println("<center><h3><p style='color:red;'>password and repeat password do not match</p></h3></center>");
        }
}       
    }
}
