<%-- 
    Document   : hotel-details
    Created on : 15 Jul, 2021, 4:13:08 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
        <title>Hotel-details</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/inner/favicon.png" />
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
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
        Statement stmt=con.createStatement();  
        String sql ="select * from hotels";
        ResultSet ras=stmt.executeQuery(sql); 
        ras.next();
        %>
        <header id="header">
         <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
               <a href="homepage.jsp" class="navbar-brand font-weight-bold wow fadeInDown">
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

        <form action="select-room.jsp" method="Post">
        
            <div class="container">
                <div class="row hotel-name">
                            <div class="col wow zoomIn">
                                <div class="cruise-list-view">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-4 col-xl-4 col-sm-12">
                                            <div class="banner1">
                                                <div id="hotel-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                    <!-- Indicators -->
                                                    <ul class="carousel-indicators">
                                                        <li data-target="#hotel-banner" data-slide-to="0" class="active"></li>
                                                        <li data-target="#hotel-banner" data-slide-to="1"></li>
                                                        <li data-target="#hotel-banner" data-slide-to="2"></li>
                                                    </ul>
                                                    <!-- The slideshow -->
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="assets/images/hotel/cantara-hotel.jpg" alt="Double Room " />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/cantara-hotel1.jpg" alt="Double Room" />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/cantara-hotel2.jpg" alt="Double Room" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-5 col-xl-5 col-sm-12  tourDiv">
                                            <h4><%=ras.getString("hotelname") %></h4>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                            <br>HOTEL ID: <%=ras.getString("hotelid") %><br><br>
                                            <h5>₹ <%=ras.getString("superior_amt")%> - ₹ <%=ras.getString("deluxe_amt") %></h5>
                                            <b><span><h6><%=ras.getString("hotel_address") %><br>CONTACT: <%=ras.getString("hotel_mobilenum") %></h6></span></b>
                                            <% ras.next();%>
                                        </div>
                                        <div class="col-md-12 col-lg-3 col-xl-3 col-sm-12 ratingDiv">
                                            <a href="">
                                            Expert Rating 
                                        </a>
                                            <span class="rate">9.0</span>
                                            <h6 class="perday">
                                            <i class="fa fa-check" aria-hidden="true"></i>Free Cancellation Eligible</h6>
                                            <input type="radio" value="2001" name="id"> BOOK WITH PACKAGE
                                            <br><br>                                               
                                                <input class="submitButton" type="submit" value="View Details">                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                </div>
                                        
                
                        <div class="clearfix"></div>
                        <div class="row hotel-name">
                            <div class="col wow zoomIn">
                                <div class="cruise-list-view">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-4 col-xl-4 col-sm-12">
                                            <div class="banner1">
                                                <div id="hotel-one-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                    <!-- Indicators -->
                                                    <ul class="carousel-indicators">
                                                        <li data-target="#hotel-one-banner" data-slide-to="0" class="active"></li>
                                                        <li data-target="#hotel-one-banner" data-slide-to="1"></li>
                                                        <li data-target="#hotel-one-banner" data-slide-to="2"></li>
                                                    </ul>
                                                    <!-- The slideshow -->
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="assets/images/hotel/Grand-hotel.jpg" alt="Double Room " />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/grand-hotel1.jpg" alt="Double Room" />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/grand-hotel2.jpg" alt="Double Room" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-5 col-xl-5 col-sm-12  tourDiv">
                                            <h4><%=ras.getString("hotelname") %></h4>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                            <br>HOTEL ID: <%=ras.getString("hotelid") %><br><br>
                                            <h5>₹ <%=ras.getString("superior_amt")%> - ₹ <%=ras.getString("deluxe_amt") %></h5>
                                            <b><span><h6><%=ras.getString("hotel_address") %><br>CONTACT NO: <%=ras.getString("hotel_mobilenum") %></h6></span></b>
                                            <% ras.next();%>
                                        </div>
                                        <div class="col-md-12 col-lg-3 col-xl-3 col-sm-12 ratingDiv">
                                            <a href="">
                                            Expert Rating 
                                        </a>
                                            <span class="rate">9.3</span>
                                            <h6 class="perday">
                                            <i class="fa fa-check" aria-hidden="true"></i>Free Cancellation Eligible</h6>
                                            <input type="radio" value="2002" name="id"> BOOK WITH PACKAGE
                                            <br><br>                                             
                                                <input class="submitButton" type="submit" value="View Details">                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <!-- START: HOTEL LIST VIEW -->
                        <div class="row hotel-name">
                            <div class="col wow zoomIn">
                                <div class="cruise-list-view">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-4 col-xl-4 col-sm-12">
                                            <div class="banner1">
                                                <div id="hotel-two-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                    <!-- Indicators -->
                                                    <ul class="carousel-indicators">
                                                        <li data-target="#hotel-two-banner" data-slide-to="0" class="active"></li>
                                                        <li data-target="#hotel-two-banner" data-slide-to="1"></li>
                                                        <li data-target="#hotel-two-banner" data-slide-to="2"></li>
                                                    </ul>
                                                    <!-- The slideshow -->
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="assets/images/hotel/mlesi-hotel.jpg" alt="Double Room " />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/mlesi-hotel1.jpg" alt="Double Room" />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/mlesi-hotel2.jpg" alt="Double Room" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-5 col-xl-5 col-sm-12  tourDiv">
                                            <h4><%=ras.getString("hotelname") %></h4>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                            <br>HOTEL ID: <%=ras.getString("hotelid") %><br><br>
                                            <h5>₹ <%=ras.getString("superior_amt")%> - ₹ <%=ras.getString("deluxe_amt") %></h5>
                                            <b><span><h6><%=ras.getString("hotel_address") %><br>CONTACT: <%=ras.getString("hotel_mobilenum") %></h6></span></b>
                                            <% ras.next();%>
                                        </div>                                        <div class="col-md-12 col-lg-3 col-xl-3 col-sm-12 ratingDiv">
                                            <a href="">
                                            Expert Rating 
                                        </a>
                                            <span class="rate">9.5</span>
                                            <h6 class="perday">
                                            <i class="fa fa-check" aria-hidden="true"></i>Free Cancellation Eligible</h6>
                                            <input type="radio" value="2003" name="id"> BOOK WITH PACKAGE
                                            <br><br>                                               
                                                <input class="submitButton" type="submit" value="View Details">                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row hotel-name">
                            <div class="col wow zoomIn">
                                <div class="cruise-list-view">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-4 col-xl-4 col-sm-12">
                                            <div class="banner1">
                                                <div id="hotel-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                    <!-- Indicators -->
                                                    <ul class="carousel-indicators">
                                                        <li data-target="#hotel-banner" data-slide-to="0" class="active"></li>
                                                        <li data-target="#hotel-banner" data-slide-to="1"></li>
                                                        <li data-target="#hotel-banner" data-slide-to="2"></li>
                                                    </ul>
                                                    <!-- The slideshow -->
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="assets/images/hotel/cantara-hotel.jpg" alt="Double Room " />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/cantara-hotel1.jpg" alt="Double Room" />
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="assets/images/hotel/cantara-hotel2.jpg" alt="Double Room" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-5 col-xl-5 col-sm-12  tourDiv">
                                            <h4><%=ras.getString("hotelname") %></h4>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                            <br>HOTEL ID: <%=ras.getString("hotelid") %><br><br>
                                            <h5>₹ <%=ras.getString("superior_amt")%> - ₹ <%=ras.getString("deluxe_amt") %></h5>
                                            <b><span><h6> <%=ras.getString("hotel_address") %><br>CONTACT: <%=ras.getString("hotel_mobilenum") %></h6></span></b>
                                            <% ras.next();%>
                                        </div>                                        
                                        <div class="col-md-12 col-lg-3 col-xl-3 col-sm-12 ratingDiv">
                                            <a href="">
                                            Expert Rating 
                                        </a>
                                            <span class="rate">9.0</span>
                                            <h6 class="perday">
                                            <i class="fa fa-check" aria-hidden="true"></i>Free Cancellation Eligible</h6>
                                            <input type="radio" value="2004" name="id"> BOOK WITH PACKAGE
                                            <br><br>                                               
                                                <input class="submitButton" type="submit" value="View Details">                                                                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>        
            </form>

    <!--footer-->                                                
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

                         <%
               
            con.close();
               
           %> 
      <script src="assets/js/jquery-3.4.1.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/jquery.mask.min.js"></script>
   <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/hotel-booking.js"></script>
    <script src="assets/js/validate.js"></script>
    <script src="assets/js/custom-dynamic.js"></script>
    <script src="calenplugin/js/moment.min.js"></script>
    <script src="calenplugin/js/daterangepicker.min.js"></script>
    <script src="calenplugin/js/select.js"></script>

                       
    </body>
</html>
