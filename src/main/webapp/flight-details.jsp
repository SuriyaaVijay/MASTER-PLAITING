<%-- 
    Document   : flight-details
    Created on : 18 Jul, 2021, 1:13:53 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flights JSP Page</title>
    <link rel="shortcut icon" href="assets/images/activity/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="calenplugin/css/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/travel?useSSL=false","root","1234");
        Statement stmt=con.createStatement();  
        String sql ="select * from flights";
        ResultSet ras=stmt.executeQuery(sql); 
        ras.next();
        %>
            <header id="header">
                <div class="container">
                   <nav class="navbar navbar-expand-lg navbar-light">
                      <a href="index.html" class="navbar-brand font-weight-bold wow fadeInDown">
                         <h2>
                            MASTER PLAITING
                            <!--<img src="" class="img-logo img-fluid" alt="logo"/>-->
                         </h2>
                      </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapsenavbar">
                      <i class="fa fa-align-justify"></i>
                      </button>
                      <div class="collapse navbar-collapse text-center" id="collapsenavbar">
                         <ul class="navbar-nav ml-auto ">
                            
                            <li class="nav-item dropdown nav-left">
                               <div class="wow fadeInDown nav-img trip" data-wow-delay="70ms">
                                  <a href="index.html" class="nav-link dropdown-toggle scroll active" data-toggle="dropdown">
                                  <img src="assets/images/inner/user.png" alt="currency">Your Trips
                                  </a>
                                  <div class="dropdown-menu">                              
                                     <a class="dropdown-item" href="">Cancellations</a>
                                     <a class="dropdown-item" href="">Print ticket</a>
                                     <a class="dropdown-item" href="">Print Voucher</a>
                                  </div>
                               </div>
                            </li>
                         </ul>
                        </div>
                    </nav>
                </div>
            </header>

           
                    <div class="col-lg-3 col-md-3 col-12 listInner text-right">
                        <span class="listDiv"><i class="fa fa-plane" aria-hidden="true"></i>All Flights</span>
                    </div>
            <div class="col-md-12 col-lg-9 col-xl-9 col-sm-12 mx-auto mt-3 hotel-listing">
                        <!-- START: HOTEL LIST VIEW -->
                        <div class="row">
                            <div class="col wow zoomIn">
                                <div class="hotel-list-view">                            
                                    <div class="row hotel-name">
                                        <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2">
                                            <a href="">
                                            Airlines
                                        </a>
                                        </div>
                                        <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2">
                                            <a href="">
                                            Depart
                                        </a>
                                        </div>
                                        <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2">
                                            <a href="">
                                           Duration 
                                        </a>
                                        </div>
                                        <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 priceUp text-right">
                                            <a href="">
                                            Price<i class="fa fa-long-arrow-up" aria-hidden="true"></i> 
                                        </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        
                        <form  action="bookingServlet" method="Post">
                        <div class="row hotel-name wow zoomIn">
                            <div class="col-12">
                                <div class="row ">
                                    <div class="col-12 dealDiv">
                                        <img src="assets/images/inner/deal.png" alt="deal"><span>
                                         Get upto Rs.1500 Instant cashback.Use coupon : CT2021</span><a href="">Know More</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-center">
                                        <figure>
                                            <img src="assets/images/inner/lufthansa.jpg" alt="lufthansa" class="img-fluid">
                                            <figcaption><%=ras.getString("flight_name") %></figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>02:15 IST</h5><br>
                                                <h5>MAA, INDIA</h5>                                                                                                
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>10:45 CEST</h5><br>
                                                <h5>FCO, ITALY</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2 flightTime">
                                        <span class="float-right"><img src="assets/images/inner/red-eye.png" title="Red Eye Flight"></span>
                                        <h5>12h 30m</h5>
                                        <h6>Non-Stop</h6>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-right flightTime">
                                        <h4>₹<%=ras.getString("cost") %>
                                       <%     ras.next();   
                                        %></h4>
                                        <label>FLIGHT NUMBER:</label>1001
                                        <input type="radio"  value="1001" name="flight_no"><br><br>
                                        <input type="submit" value="BOOK" class="book">
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                        <div class="clearfix"></div>

                        <form  action="bookingServlet" method="Post">                       
                        <div class="row hotel-name wow zoomIn">
                            <div class="col-12">
                                <div class="row ">
                                    <div class="col-12 dealDiv">
                                        <img src="assets/images/inner/deal.png" alt="deal"><span>
                                         Get upto Rs.1500 Instant cashback.Use coupon : CT2021</span><a href="">Know More</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-center">
                                        <figure>
                                            <img src="assets/images/inner/Emirates.jpg" alt="Emirates" class="img-fluid">
                                            <figcaption><%=ras.getString("flight_name") %></figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>7:30 IST</h5><br>
                                                <h5>MAA, INDIA</h5>
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>15:45 CEST</h5><br>
                                                <h5>FCO, ITALY</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2 flightTime">
                                        <span class="float-right"><img src="assets/images/inner/red-eye.png" title="Red Eye Flight"></span>
                                        <h5>12h 15m</h5>
                                        <h6>Non-Stop</h6>                                        
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-right flightTime">
                                        <h4>₹<%=ras.getString("cost") %>
                                        <%    ras.next();
                                        %></h4>
                                        <label>FLIGHT NUMBER:</label>1002
                                        <input type="radio"  value="1002" name="flight_no"><br><br>
                                        <input type="submit" value="BOOK" class="book">
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                        <div class="clearfix"></div>

                        <form  action="bookingServlet" method="Post">
                        <div class="row hotel-name wow zoomIn">
                            <div class="col-12">
                                <div class="row ">
                                    <div class="col-12 dealDiv">
                                        <img src="assets/images/inner/deal.png" alt="deal"><span>
                                         Get upto Rs.1500 Instant cashback.Use coupon : CT2021</span><a href="">Know More</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-center">
                                        <figure>
                                            <img src="assets/images/inner/ryan.jpg" alt="ryan air" class="img-fluid">
                                            <figcaption><%=ras.getString("flight_name") %></figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>12:55 IST</h5><br>
                                                <h5>MAA, INDIA</h5>                                           
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-2 flightTime">
                                                <h5>21:15 CEST</h5><br>
                                                <h5>FCO, ITALY</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-xl-4 col-sm-2 flightTime">
                                        <span class="float-right"><img src="assets/images/inner/red-eye.png" title="Red Eye Flight"></span>
                                        <h5>12h 20m</h5>
                                        <h6>Non-Stop</h6>                                        
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2 text-right flightTime">
                                        <h4>₹ <%=ras.getString("cost") %></h4>
                                        <label>FLIGHT NUMBER:</label>1003
                                        <input type="radio" value="1003" name="flight_no"><br><br>
                                        <input type="submit" value="BOOK" class="book">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                        
                        <div class="row hotel-name wow zoomIn">
                            <div class="col-12">
                                <div class="row ">
                                </div>
                                <%con.close();%> 
                            
        <!--start footer-->
    <footer class="page-footer font-small mdb-color pt-2">
        <div class="container">
           <div class="row">
              <div class="col-lg-9 col-md-8 col-12">
                 <!--Copyright-->
                 <p class="text-md-left">© 2021 Copyright :
                    <strong> MASTER PLAITING</strong>
                    Powered By MASTER PLAITING
                 </p>
              </div>
              <div class="col-lg-3 col-md-4 col-12 foot-social">
                 Connect with us at 
                 <a class="social-footer" href="https://www.facebook.com/stunner.suriya" target="_blank">
                 <i class="fa fa-facebook"></i>
                 </a>
                 <a class="social-footer" href="https://twitter.com/Juve_Suri" target="_blank">
                 <i class="fa fa-twitter"></i>
                 </a>
                 <a class="social-footer" href="https://in.linkedin.com/in/suriyaa-vijay-1a8338213" target="_blank">
                 <i class="fa fa-linkedin"></i>
                 </a>
                 <a class="social-footer" href="https://www.instagram.com/suriyxa/" target="_blank">
                 <i class="fa fa-instagram -p" aria-hidden="true"></i>
                 </a>
              </div>
           </div>
        </div>
    </footer>
                          
    <script src="assets/js/jquery-3.4.1.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/custom-dynamic.js"></script>
   </body>
</html>
