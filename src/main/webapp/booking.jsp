<%--
    Document   : booking
    Created on : 13 Jul, 2021, 7:42:22 PM
    Author     : Suriyaa
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOKING</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/inner/favicon.png" />
    <link rel="stylesheet" type="text/css" href="calenplugin/css/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
 </head>
<body>

<header id="header">
 <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
       <a href="index.html" class="navbar-brand font-weight-bold wow fadeInDown">
          <h2>
            MASTER PLAITING

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
                      <a class="dropdown-item" href="">Print hotel Voucher</a>
                   </div>
                </div>
             </li>
          </ul>
       </div>
    </nav>
 </div>
</header>

     <%


        String nu=(String)session.getAttribute("num");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/travel?useSSL=false","root","1234");


        Statement stmt=con.createStatement();
        String sql ="select * from flight_details where mobilenum='"+nu+"'";
        ResultSet r=stmt.executeQuery(sql);
        r.next();

        Statement stm=con.createStatement();
        String sq ="select * from flight_details where mobilenum='"+nu+"'";
        ResultSet ras=stm.executeQuery(sq);
        ras.next();
                            %>
              <div class="container">
        <div class="row">
            <div class="col-12 pt-4 pb-2" >
                <div class="container" id="travellerId">
                    <div class="row">
                        <div class="col-12">
                            <br><br>
                            <div class="cleartrip-choose4 pt-4">
                                <span class="itineId">#</span><span>Itinerary</span><span class="float-right review">REVIEW YOUR FLIGHT DETAILS</span>
                            </div></div></div></div>

                <h2 class="pt-4 place-name"><%=ras.getString("departure") %> <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                <%=ras.getString("arrival") %><span class="book-date"><%=ras.getString("depart_on") %></span></h2>

        <div class="row book-section">
            <div class="col-lg-1 col-xl-1 col-md-1 text-center">
                <img src="assets/images/inner/indigo.png" alt="flight">
            </div>
             <%

                String yes="yes";
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from flights where select_flight='"+yes+"'");
                rs.next();
                int flightamt=rs.getInt("cost")*r.getInt("passengers");

                 PreparedStatement ps=con.prepareStatement("UPDATE flights SET flight_amt=? WHERE select_flight=?");
               ps.setInt(1,flightamt);
               ps.setString(2,"yes");
              int s=ps.executeUpdate();


                %>

            <div class="col-lg-1 col-xl-1 col-md-1 span-section">
                <span><%=rs.getString("flight_name") %></span>
                <span><%=rs.getString("flight_no") %></span>
                <span>Economy</span>
            </div>
            <div class="col-lg-2 col-xl-2 col-md-2 text-right place-section span-section">
                <span class="placeOne"><b>2:15 </b></span><br>
                <span><%=ras.getString("depart_on") %></span><br>
                <span>Chennai International Airport, Chennai, India<br> <%=ras.getString("departure") %> Terminal 1
        </span>
            </div>
            <div class="col-lg-1 col-xl-1 col-md-1 span-section text-center">
                <div><i class="fa fa-clock-o" aria-hidden="true"></i></div>
                <span>12h 30m</span>
            </div>
            <div class="col-lg-2 col-xl-2 col-md-2 place-section1 span-section">
                <span class="placeTwo"><b>10:45 </b></span>
                <br>
                <span><%=ras.getString("depart_on") %></span><br>
                <span>Leonardo da Vinci–Fiumicino Airport, Rome, Italy<br><%=ras.getString("arrival") %>
         </span>
            </div>
            <div class="col-lg-4 col-xl-4 col-md-4 span-section baggage">
                <i class="fa fa-suitcase" aria-hidden="true"></i><span>Baggage information</span>
                <div>Check-in: 15 KG / person
                    <br> Cabin: 7 KG / person</div>
            </div>
        </div>



         <form id="flightForm">
        <div class="row check-baggage">
            <div class="col-lg-3 col-xl-3 col-md-3 col-12 span-section">
                <span class="checkIn">Insurance</span>
            </div>
            <div class="col-lg-9 col-xl-9 col-md-9 col-12 span-section secureDiv">
                    <input type="checkbox" name="secure" id="secure" value="secure"><span class="secure">Secure your trip for delays and baggage loss for 1 Adult</span>
                    <div class="passenger">Rs. 279.0 per passenger</div>
                <div class="row check-baggage text-center">
                    <div class="col-lg-3 col-xl-3 col-md-3  col-12 span-section">
                        <div><i class="fa fa-wheelchair" aria-hidden="true"></i></div>
                        <span class="bold">Flight delay</span>
                        <br>
                        <span>Reimbursed upto</span>
                        <br>
                        <span><b>Rs. 750*</b>for 90 min delay</span>
                    </div>
                    <div class="col-lg-3 col-xl-3 col-md-3 span-section">
                        <div><i class="fa fa-suitcase" aria-hidden="true"></i></div>
                        <span class="bold">Baggage loss</span>
                        <br>
                        <span>Reimbursed upto</span>
                        <br>
                        <span><b>Rs. 7,500*</b></span>
                    </div>
                    <div class="col-lg-3 col-xl-3 col-md-3 span-section">
                        <div><i class="fa fa-medkit" aria-hidden="true"></i></div>
                        <span class="bold">Medical emergency</span>
                        <br>
                        <span>Reimbursed upto</span>
                        <br>
                        <span><b>Rs. 100,000*</b></span>
                    </div>
                    <div class="col-lg-3 col-xl-3 col-md-3 span-section">
                        <div><i class="fa fa-wheelchair" aria-hidden="true"></i></div>
                        <span class="bold">Quick Approval</span>
                        <br>
                        <span>Easy and paperless</span>
                        <br>
                        <span> claims</span>
                    </div>
                </div>
                <div class="row policy-deta">
                    <div class="col-lg-2 col-xl-2 col-md-2 span-section">
                        <img src="assets/images/inner/digit-logo.svg" alt="flight">
                    </div>
                    <div class="col-12 span-section accept-section">
                            <input type="checkbox" name="secureDiv" id="secureDiv" value="secure"><span class="secure">Yes, I accept the terms and conditions of the policy</span>
                            <div class="passenger">(Only for Indian resident between the age group 1 to 70 years)</div>
                    </div>
                </div>
            </div>
        </div>
                <div class="row check-baggage">
            <div class="col-lg-3 col-xl-3 col-md-3 span-section">
                <span class="checkIn"><h4>Total</span>
</div></h4>
            <div class="col-lg-5 col-xl-5 col-md-5 span-section">
                <b>
                   </b>
                <h4>  <div>1 person (fare details)</div>
                <div>
                    ₹ <%=flightamt %>
                </div></h4>
            </div><div class="col-lg-4 col-xl-4 col-md-4 span-section partially">
                <span class="selectSeat">PARTIALLY REFUNDABLE</span>
            </div>
</div>
    </form>
        </div>
            </div>
            <ul class="nav1">
                &emsp;&emsp;&emsp;&emsp;
                <li><a href="hotels.html"> Continue for Hotels</a></li>
                <li><a href="booking.html"> Continue for payment</a></li></ul>

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

<%   con.close();   %>
</html>
