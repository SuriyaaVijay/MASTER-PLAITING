<%--
    Document   : confirmation
    Created on : 25 Jul, 2021, 7:42:55 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .r{
                text-align: right;
            }
       </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/invoice.css" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
             <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" />
<link href="fontawesome/css/all.min.css" rel="stylesheet" />

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="r">


                                    <a class="btn btn-danger" href="homepage.jsp">BACK <span class="sr-only">(current)</span></a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <br><br>

                                <form action="Logout">
                                    <input type="submit" class="btn btn-danger" value="LOG OUT">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </form>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;




            </div>
        </header>
    <center>
        <section>
            <jsp:useBean id="random" class="java.util.Random" scope="application" />
        <div class="container">
            <div class="row confirmDiv">
                <div class="col-12 ">
                   <h2><i class="fa fa-check" aria-hidden="true"></i>Your booking Confirmartion no. is ${random.nextInt(1000000)}</h2>
                </div>
            </div>
        </div>
        </section><br><br>
    </center>
                   <%
                      String num=(String)session.getAttribute("c");
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/travel?useSSL=false","root","1234");
              Statement stmi=con.createStatement();
              String sql ="select * from hotel_user_info where hotel_user_info.mobilenum='"+num+"'";
              ResultSet rs=stmi.executeQuery(sql);
              rs.next();


                   %>


<div class="container bootstrap snippets bootdeys">
<div class="row">
  <div class="col-sm-12">
	  	<div class="panel panel-default invoice" id="invoice">
		  <div class="panel-body">
                      <h1><b>MASTER PLAITING</b></h1>
			<div class="invoice-ribbon"><div class="ribbon-inner">PAID</div></div>
		    <div class="row">

				<div class="col-sm-6 top-left">
					<i class="fa fa-rocket"></i>
				</div>

				<div class="col-sm-6 top-right">
						<h3 class="marginright">INVOICE-1234578</h3>
						<span class="marginright"><% java.util.Date d = new java.util.Date();
                out.println(d.toString()); %>
                                                </span>
			    </div>

			</div>
			<hr>
			<div class="row">
                            <b>
			<div class="col-xs-4 from">
                                    <p class="lead marginbottom"><b>From:</b></p><p> MASTER PLAITING</p>
					<p></p>
					<p>MIT Road,Radha Nagar</p>
					<p>Chrompet,Chennai-600 044</p>
                                        <p>TamilNadu</p>
					<p>Phone: 044-1212 8989</p>
					<p>Email: masterplaiting@gmail.com</p>
                                </div></b>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="col-xs-4 to">
                                    <b>
                                    <p class="lead marginbottom"><b>To:</b></p><p><%=rs.getString("travel_Div")%>.<%=rs.getString("name1") %></p>
                                    <p><%=rs.getString("address") %></p>
				    <p>Phone: <%=num%></p>
                                    <p>Email: <%=rs.getString("email") %></p>
                                    </b>
			    </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%
                               Statement stm=con.createStatement();
                               String sq ="select hotel_amt from hotels where select_hotel='yes'";
                               ResultSet ras=stm.executeQuery(sq);
                              ras.next();

                              Statement st=con.createStatement();
                              ResultSet r=st.executeQuery("select flight_amt from flights where select_flight='yes'");
                              r.next();

                              int total = 30000+ras.getInt("hotel_amt")+Integer.parseInt(r.getString("flight_amt"));
%>
			    <div class="col-xs-4 text-right payment-details">
                                <b>
					<p class="lead marginbottom payment-info">Payment details</p>
					<p>Date: <% java.util.Date date = new java.util.Date();
                out.println(date.toString()); %>
</p>
					<p>GST: TN9876066 </p>
					<p>Total Amount:₹ <%=total %></p>
                                </b>

			    </div>

			</div>
                                <br>
                                <u><h3>PACKAGE DETAILS</h3></u>
			<div class="row table-row">
				<table class="table table-striped">
			      <thead>
			        <tr>
			          <th class="text-center" style="width:5%">#</th>
			          <th style="width:50%">SUPPLIER</th>
			          <th class="text-right" style="width:15%">DESTINATION</th>
			          <th class="text-right" style="width:15%">ACTIVITIES</th>
			          <th class="text-right" style="width:15%">Total Price</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr>
			          <td class="text-center">1</td>
			          <td>MASTER PLAITING</td>
			          <td class="text-right">ROME</td>
			          <td class="text-right">BOOKED</td>
			          <td class="text-right">₹ 30,000</td>
			        </tr>
                                 </tbody>
			    </table>
                            <%

                String yes="yes";
                Statement fl=con.createStatement();
                ResultSet va=fl.executeQuery("select * from flights where select_flight='"+yes+"'");
                va.next();
                Statement f=con.createStatement();
                ResultSet v=f.executeQuery("select * from flight_details where mobilenum='"+num+"'");
                v.next();

                %>
                <u>
                    <h4>FLIGHT DETAILS</h4></u>

                     <table class="table table-striped">
			      <thead>
			        <tr>
			          <th class="text-center" style="width:5%">#</th>
			          <th class="text-center" style="width:25%">SUPPLIER</th>
			          <th class="text-right" style="width:15%">FLIGHT NO</th>
			          <th class="text-right" style="width:15%">NAME</th>
                                  <th class="text-right" style="width:15%">BOARDING</th>
                                  <th class="text-right" style="width:15%">DESTINATION</th>
                                  <th class="text-right" style="width:25%">DATE</th>
                                  <th class="text-right" style="width:15%">PASSENGERS</th>
			          <th class="text-right" style="width:15%">Total Price</th>
			        </tr>
			      </thead>
			        <tr>
                                    <td class="text-center">1</td>
			          <td class="text-center">MASTER PLAITING</td>
			          <td class="text-right"><%=va.getInt("flight_no")%></td>
                                  <td class="text-right"><%=va.getString("flight_name")%></td>
			          <td class="text-right"><%=v.getString("departure")%></td>
                                  <td class="text-right"><%=v.getString("arrival")%></td>
			          <td class="text-right"><%=v.getString("depart_on")%></td>
			          <td class="text-right"><%=v.getInt("passengers")%></td>
                                  <td class="text-right">₹<%=Integer.parseInt(r.getString("flight_amt"))%></td>
			        </tr>
                                </tbody>
			    </table>
                                 <%

                         String y="yes";
                        Statement ho=con.createStatement();
                        ResultSet sa =ho.executeQuery("select * from hotels where select_hotel='"+y+"'");
                        sa.next();
                        Statement de=con.createStatement();
                        ResultSet det=de.executeQuery("select * from hotel_details where mobilenum='"+num+"'");
                        det.next();

                %>
                <u><h4>HOTEL DETAILS</h4></u>
                                <table class="table table-striped">
			      <thead>
			        <tr>
			          <th class="text-center" style="width:5%">#</th>
			          <th class="text-center" style="width:25%">SUPPLIER</th>
			          <th class="text-right" style="width:15%">HOTEL ID</th>
			          <th class="text-right" style="width:15%">NAME</th>
                                  <th class="text-right" style="width:15%">PLACE</th>
                                  <th class="text-right" style="width:15%">DAYS</th>
                                  <th class="text-right" style="width:15%">CHECK IN</th>
                                  <th class="text-right" style="width:15%">CHECK OUT</th>
                                  <th class="text-right" style="width:15%">ROOM</th>
			          <th class="text-right" style="width:15%">Total Price</th>
			        </tr>
			      </thead>
                                <tr>
                                    <td class="text-center">1</td>
			          <td class="text-center">MASTER PLAITING</td>
			          <td class="text-right"><%=sa.getInt("hotelid")%></td>
                                  <td class="text-right"><%=sa.getString("hotelname")%></td>
			          <td class="text-right"><%=det.getString("place")%></td>
                                  <td class="text-right"><%=det.getString("days")%></td>
                                  <td class="text-right"><%=det.getString("checkin")%></td>
			          <td class="text-right"><%=det.getString("checkout")%></td>
			          <td class="text-right"><%=det.getString("roomtype")%></td>
                                  <td class="text-right">₹<%=ras.getInt("hotel_amt")%></td>
			        </tr>




			       </tbody>
			    </table>

			</div>

			<div class="row">
			<div class="col-xs-6 margintop">
                            <p class="lead marginbottom">THANK YOU!</p>
                             <button onclick="window.print()" class="btn btn-danger"><i class="fa fa-envelope-o"></i> Print Invoice</button>
			     <button class="btn btn-danger"><i class="fa fa-envelope-o"></i> Mail Invoice</button>
			</div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <div class="col-xs-6 text-right pull-right invoice-total">
                                    <h5><b>

                              <p>Subtotal : ₹<%=total%></p>
                                          <%
                                              int gst=(10*total)/100;
                                              int totalamt=total+gst;
                                          %>
			       <p>GST (10%) : ₹<%=gst %> </p>
                               <p><u>Total : ₹<%=totalamt %> </p></u>
                                </b>
                                          </h5>
                            </div>

			</div>

		  </div>
		</div>
	</div>
</div>
</div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



    </body>
</html>
