<%-- 
    Document   : hotel-traveller
    Created on : 25 Jul, 2021, 12:21:15 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        

        String n=request.getParameter("titleDiv");
        String p=request.getParameter("name");
        String c=request.getParameter("mobileNum");
        String a=request.getParameter("travelCheck");
        String e=request.getParameter("emailId");
      
        String f=request.getParameter("address");
    
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/travel?useSSL=false","root","1234");
        PreparedStatement ps=con.prepareStatement(
                 "insert into hotel_user_info values(?,?,?,?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,e);
        ps.setString(4,c);
        ps.setString(5,a);
        ps.setString(6,f);
        int i=ps.executeUpdate();
        if(i>0){
          response.sendRedirect("Payment.jsp");
        }
        con.close();
                  %>

    </body>
</html>
