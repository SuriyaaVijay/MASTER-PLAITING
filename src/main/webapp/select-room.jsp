<%-- 
    Document   : select-room
    Created on : 15 Jul, 2021, 5:13:05 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Room</title>
            <link rel="shortcut icon" type="image/x-icon" href="assets/images/inner/favicon.png" />
    <link rel="stylesheet" type="text/css" href="calenplugin/css/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <header id="header">
        <div class="container">
           <nav class="navbar navbar-expand-lg navbar-light">
              <a href="index.html" class="navbar-brand font-weight-bold wow fadeInDown">
                 <h1>
                    MASTER PLAITING 
                    <!--<img src="" class="img-logo img-fluid" alt="logo"/>-->
                 </h1>
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
                                <a class="dropdown-item" href="cancellation.html">Cancellations</a>                                 
                                <a class="dropdown-item" href="">Print ticket</a>
                                <a class="dropdown-item" href="">Print hotel Voucher</a>
                             </div>
                          </div>
                       </li>
                    </ul>
                 </div>
           </nav>
        </div>
     <div class="clearfix"></div>
     </header>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cachr, no-store,must-revaliadate");
            if(session.getAttribute("c")==null)
            {
              response.sendRedirect("index.jsp");
            }
        %>

     <%
       
        int i=Integer.parseInt(request.getParameter("id"));
        String num=(String)session.getAttribute("c"); 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
     
        PreparedStatement ps=con.prepareStatement("UPDATE hotels SET select_hotel=? WHERE hotelid=?");
        ps.setString(1,"yes");
        ps.setInt(2,i);
        int d=ps.executeUpdate();
        PreparedStatement p=con.prepareStatement("UPDATE hotel_details SET hotelid=? WHERE mobilenum=?");
        p.setInt(1,i);
        p.setString(2,num);
        p.executeUpdate();
         Statement stm=con.createStatement();  
         String sq ="select days from hotel_details where hotelid='"+i+"' and mobilenum='"+num+"'";
         ResultSet rs=stm.executeQuery(sq); 
         rs.next();
         
        Statement stmt=con.createStatement();      
        String sql ="select * from hotels where hotelid='"+i+"'";
        ResultSet ras=stmt.executeQuery(sql); 
        ras.next();
      
      %>  
      <body>
    <div class="clearfix"></div>
    <div class="container">
        <section id="box-shadow-hotel">
            <div class="container">
                <div class="row hotelDiv">
                    <div class="col-lg-6 col-md-6 col-6 col-12">
                        <a href=""><i class="fa fa-long-arrow-left" aria-hidden="true"></i>All hotels in Rome</a>
                        <h2><%=ras.getString("hotelname") %></h2>
                        <span><%=ras.getString("hotel_address") %></span>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-xl-3 col-12 fivestar">
                                <div>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                                <span>5 Star</span>
                            </div>
                            <div class="col-lg-9 col-md-9 col-xl-9 col-12 tripDiv">
                                <div><img src="assets/images/inner/trip.png" alt="hotelselect"></div>
                                <span>918 reviews</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-6 col-12 shortlist text-right">
                        <span class="short-bold">₹ <%=ras.getString("superior_amt") %></span>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-xl-8 col-12 hotel-menu">
                        <a href="#section2">Room & Rates</a>
                        <a href="#section3">Amenties & Review</a>                        
                    </div>
                </div>
            </div>
                        <center><b><%=rs.getInt("days") %> nights</b></center>
            <div class="container">
                <div class="row hotel-banner">
                    <div class="col-12 ">
                        <img src="assets/images/select/hotel1.jpg" alt="hotelselect">
                        <img src="assets/images/select/hotel3.jpg" alt="hotelselect">
                        <a href="" data-toggle="modal" data-target="#myModal2"><img src="assets/images/select/hote.jpg" alt="hotelselect"></a>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row highlightDiv">
                    <div class="col-lg-4 col-md-4 col-4 col-12">
                        <h3>Highlights of the property</h3>
                        <ul>
                            <li>Try the Vineyard Sunday Brunch by the pool-side with live counters</li>
                            <li>Entire floor dedicate to women travellers with unique amenities</li>
                        </ul>
                    </div>
                    
                    <div class="col-lg-4 col-md-4 col-4 col-12 direction">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.942021241598!2d12.507848414944503!3d41.89410397239236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f611faebc253d%3A0x7001db7f5153172b!2sDillo%20Suites!5e0!3m2!1sen!2sin!4v1627127901333!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
            
            <div class="container" id="section2">
                <div class="row room-tab">
                    <div class="col-12">
                        <div class="room-tab-inner">
                            <span class="text-left">Rooms & Rates</span>
                            <ul class="nav nav-tabs float-right" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home"> Rooms</a>
                                </li>
                            </ul>
                        </div><br>
                        <!-- Tab panes -->
                        <form action="hotel-booking.jsp" method="Post">
                        <div class="tab-content">
                            <div id="home" class="container tab-pane active">
                                <div class="row room-bottom-border">
                                    <div class="col-lg-4 col-md-12 col-xl-4 col-12 tab-banner">
                                        <h2>Superior Room</h2>
                                        <span><i class="fa fa-bed" aria-hidden="true"></i>King Bed</span>
                                        <span><i class="fa fa-area-chart" aria-hidden="true"></i>340sq ft</span>
                                        <span><i class="fa fa-eye" aria-hidden="true"></i>City View</span>
                                        <div class="banner1">
                                            <div id="hambet-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                <!-- Indicators -->
                                                <ul class="carousel-indicators">
                                                    <li data-target="#hambet-banner" data-slide-to="0" class="active"></li>
                                                    <li data-target="#hambet-banner" data-slide-to="1"></li>
                                                    <li data-target="#hambet-banner" data-slide-to="2"></li>
                                                </ul>
                                                <!-- The slideshow -->
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <img src="assets/images/select/suproom.jpg" alt="Single Room" />
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="assets/images/select/suproom1.jpg" alt="Single Room" />
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="assets/images/select/suproom2.jpg" alt="Single Room" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-xl-2 col-12 facilityDiv">
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Air Conditioning</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Intercom</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Internet</div>                                                                           
                                        <div id="hiddenFac1" style="display: none;">                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-8 col-xl-6 col-12 deal-inner ">
                                    <div class="deal-border"><img src="assets/images/select/deal.png" alt="hotelselect">Get 10% Cashback upto Rs. 700. Use Coupon CT2020</div>
                                        <div class="row deal-bottom">
                                        </div>
                                        <div class="row deal-bottom">
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12">
                                                <p><input type="radio" name="hotelid" value="<%=ras.getInt("hotelid")%>">    <i class="fa fa-wifi" aria-hidden="true"></i>Free Wifi</p>
                                                <p><i class="fa fa-cutlery" aria-hidden="true"></i>Breakfast</p>
                                                <p><i class="fa fa-bed" aria-hidden="true"></i>Complimentary stay for children under 5 without extra bed</p>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12">
                                                <a href="" title="Free Cancellation till Wednesday | If you Cancel within 24 houe Before Checkin,You will be Charged 1room night charges per room.">Refundable</a>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 book-inner">
                                            
                                             <div class="hoPrice">₹<%=ras.getString("superior_amt") %></div>
                                             <input type="radio" value="<%=ras.getString("superior_amt") %>" name="room_amt">
                                             ROOMS<input type="number" style="width: 50px;"  name="rooms">
                                                
                                             <br><br>
                                                <input type="submit" class="submitButton" value="book">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row room-bottom-border">
                                    <div class="col-lg-4 col-md-12 col-xl-4 col-12 tab-banner">
                                        <h2>Deluxe Room</h2>
                                        <span><i class="fa fa-bed" aria-hidden="true"></i>King Bed</span>
                                        <span><i class="fa fa-area-chart" aria-hidden="true"></i>480sq ft</span>
                                        <span><i class="fa fa-eye" aria-hidden="true"></i>Sea View</span>
                                        <div class="banner1">
                                            <div id="deluxe-banner" class="carousel slide" data-ride="carousel" data-interval="9000">
                                                <!-- Indicators -->
                                                <ul class="carousel-indicators">
                                                    <li data-target="#deluxe-banner" data-slide-to="0" class="active"></li>
                                                    <li data-target="#deluxe-banner" data-slide-to="1"></li>
                                                    <li data-target="#deluxe-banner" data-slide-to="2"></li>
                                                </ul>
                                                <!-- The slideshow -->
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <img src="assets/images/select/delroom.jpg" alt="Single Room" />
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="assets/images/select/delroom1.jpg" alt="Single Room" />
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="assets/images/select/delroom2.jpg" alt="Single Room" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-xl-2 col-12 facilityDiv">
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Air Conditioning</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Intercom</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Internet</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Iron/Ironing Board</div>
                                        <div><i class="fa fa-check" aria-hidden="true"></i>Luggage Rack</div>                                        
                                        <div id="hiddenFac2" style="display: none;">                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-8 col-xl-6 col-12 deal-inner ">                                        
                                        <div class="deal-border"><img src="assets/images/select/deal.png" alt="hotelselect">Get 10% Cashback upto Rs. 700. Use Coupon CT2020</div>
                                        <div class="row deal-bottom">
                                        </div>
                                        <div class="row deal-bottom">
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12">
                                                <p><input type="radio" name="hotelid" value="<%=ras.getInt("hotelid")%>"> <i class="fa fa-wifi" aria-hidden="true"></i>Free Wif</p>
                                                <p><i class="fa fa-cutlery" aria-hidden="true"></i>Breakfast</p>
                                                <p><i class="fa fa-bed" aria-hidden="true"></i>Complimentary stay for children under 5 without extra bed</p>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12">
                                                <a href="" title="Free Cancellation till Wednesday | If you Cancel within 24 houe Before Checkin,You will be Charged 1room night charges per room.">Refundable</a>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 book-inner">
                                                <div class="hoPrice">₹ <%=ras.getInt("deluxe_amt")%></div>
                                                <input type="radio" value="deluxe_amt" name="room_amt">
                                                ROOM <input type="number" style="width: 50px" name="rooms">
                                                <br><br>
                                               <input type="submit" class="submitButton" value="book">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>                                                        
                        </div>
                        </form>                                                
                    </div>
                </div>
            </div>
            <div class="container" id="section3">
                <div class="row">
                    <div class="col-12 amenitiesDiv">
                        <span>Amenities & Info</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-xl-4 col-12 about-hotel">
                        <img src="assets/images/select/dining.jpg" alt="hotelselect">
                        <img src="assets/images/select/bar.jpg" alt="hotelselect">
                        <img src="assets/images/select/banquet.jpeg" alt="hotelselect">
                        <img src="assets/images/select/spa.jpg" alt="hotelselect">
                    </div>
                    <div class="col-lg-8 col-md-8 col-xl-8 col-12 hotel-info">
                        <h3>About the Hotel</h3>
                        <p>Dillo Suites, 20,000 sq. feet of elegance in modern Rome, 
                            225 elegantly styled rooms and much more are on offer at The Chancery Pavilion. T
                            his ultra-modern 5-star hotel is a reflection of the Ancient culture of Rome. 
                            Cobbled entrance, a lavish lobby, luxury accommodation and state-of-the-art 
                            Vinery and banquet space are on offer at this upscale resrt cum hotel.</p>
                        <p>
                            It's a treat for foodies at Colloseo Pavilion from a Italian Cuisine served at 
                            Cassatra (all day dining) to keep your spirits high at Amnesia uber-chic lounge bar.
                            Along with a bottle of vintage wine, grab a table to enjoy the midnight buffet under the starlit sky.</p>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Quick facts</h3>
                            </div>
                        </div>
                        <div class="row quick-fact">
                            <div class="col-lg-2 col-md-2 col-xl-2 col-6">
                                <h2>3</h2>
                                <span>Wine Cellars</span>
                            </div>
                            <div class="col-lg-2 col-md-2 col-xl-2 col-6">
                                <h2>2</h2>
                                <span>Gallery</span>
                            </div>
                            <div class="col-lg-2 col-md-2 col-xl-2 col-6">
                                <h2>225</h2>
                                <span>Rooms</span>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xl-6 col-6">
                                <h2>8</h2>
                                <span>Floors</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>General</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Housekeeping</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Telephone Service</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>24 Hour Security</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Doorman</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Internet</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Air Conditioning</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Elevator</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Laundry</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Food & Beverage</h3>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Banquet Hall</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Lounge</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Bar</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Restaurant</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Business Services</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Audio Visual Equipment</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Conference Hall</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Meeting Room</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Business Centre</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>LCD/Projector</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Front Desk Services</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Concierge</div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-xl-8 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Currency Exchange</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Travel</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Parking</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Travel Desk</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Pick & Drop</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Valet Parking</div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Porter</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Recreation</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Fitness Centre</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Massage Centre</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Swimming Pool</div>
                            </div>                        
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Jacuzzi</div>
                                <div><i class="fa fa-check" aria-hidden="true"></i>Spa</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Kids</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Babysitting</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 room-title">
                                <h3>Smoking Policy</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-xl-4 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Smoking Floors</div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-xl-8 col-12 facilityDiv1">
                                <div><i class="fa fa-check" aria-hidden="true"></i>Smoking Rooms</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
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
                        