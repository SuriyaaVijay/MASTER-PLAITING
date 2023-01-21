<%-- 
    Document   : flight
    Created on : 13 Jul, 2021, 4:46:21 PM
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
                                       String n=request.getParameter("country");
                                       String p=request.getParameter("country1");
                                       String d=request.getParameter("picker");
                                       int c=Integer.parseInt(request.getParameter("passengers"));
                                       String num=request.getParameter("mobilenum");

                            try{  
                                Class.forName("com.mysql.jdbc.Driver");         
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel?useSSL=false","root","");
        
        PreparedStatement ps=con.prepareStatement(
                "insert into flight_details values(?,?,?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,d);
        ps.setString(4,num);
        ps.setInt(5,c);
       
        int i=ps.executeUpdate();
        if(i>0){
            session.setAttribute("num",num);
            response.sendRedirect("flight-details.jsp");
        }
        else
            out.println("invalid response");
         }catch(Exception e)
         {
           System.out.print(e);
          e.printStackTrace();
         }
          

%>
    </body>
</html>
