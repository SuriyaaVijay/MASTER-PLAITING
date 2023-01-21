<%-- 
    Document   : hotel-booking
    Created on : 15 Jul, 2021, 5:29:04 PM
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
    <head><style>.left{text-align :center; align-items: center; align-content: center;}
        .temp123{
            text-align:center;
          }
          .temp123 > input{
            text-align:left;
          }</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Travellers</title>
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
    <body>
       
        
        <%  
            String num=(String)session.getAttribute("c"); 
            int i=Integer.parseInt(request.getParameter("room_amt"));
            int id=Integer.parseInt(request.getParameter("hotelid"));
            int r=Integer.parseInt(request.getParameter("rooms"));
           
            Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
              Statement stm=con.createStatement();  
              String sql ="select days from hotel_details where hotelid='"+id+"' and mobilenum='"+num+"'";
              ResultSet rs=stm.executeQuery(sql); 
              rs.next();
              int d=rs.getInt("days");
           
              int amount=i*r*d;
             
             PreparedStatement ps=con.prepareStatement("UPDATE hotels SET hotel_amt=? WHERE hotelid=?");
        ps.setInt(1,amount);
        ps.setInt(2,id);
        int s=ps.executeUpdate();

      
        
        %>
        <div class="container" id="travellerId">
            <div class="row">
                <div class="col-12">
                    <br><br>
                    <div class="cleartrip-choose4 pt-4">
                        <span class="itineId">#</span><span>Travellers</span><span class="float-right review">Bon Voyeur !</span>
                    </div></div></div></div>
                    
                    
                        <form action="hotel-traveller.jsp" method="Post"  id="travelForm">                                                            
                                    <div class="left">
                                          <br><BR>                                    
                                            <strong>Traveller</strong> &nbsp;&nbsp;&nbsp;                                                                        
                                            <select class="custom-select form-control"style="width: 90px" id="titleDiv" name="titleDiv" required>
                                                <option value="">Title</option>
                                                <option value="Mr">Mr</option>
                                                <option value="Ms">Ms</option>
                                                <option value="Mrs">Mrs</option>
                                            </select>                                    
                                        <br><br>
                                        &nbsp;&nbsp;&nbsp;<strong>First Name</strong> &nbsp;&nbsp;&nbsp;   
                                        <input type="text" class="left" style="width: 250px" placeholder="First Name" id="name1" name="name" required>
                                        
                                        <br>
                                        <br>
                                            <strong>Mobile Number&nbsp;&nbsp;&nbsp;</strong>
                                            <input type="number"  style="width: 250px" placeholder="Mobile Number" id="mobileNum" name="mobileNum" pattern="^\d{10}$" required="required">                                        
                                            
                                            <br><br>&nbsp;&nbsp;&nbsp;<label>GST</label>&nbsp;&nbsp;
                                            <input type="checkbox"  class="left" id="travelCheck" name="travelCheck">   Use GSTIN for this booking (Optional)                                      
                                            <br><br>
                                             <label>Your Address </label> &nbsp;&nbsp;
                                             <textarea style="width: 300px" placeholder="ADDRESS" id="address" name="address" required>   
                                              </textarea>
                                           <br><br>                                                                                                         
                                       <label>Your Email Address  </label> &nbsp;&nbsp;
                                    <input type="email" style="width: 300px" placeholder="Email ID" id="emailId" name="emailId" required>   <br> <br><br>                                                                                                         
                                            <center><input type="submit" name="submit" class="submitButton" value="Continue Booking"></center> 
                                        </div>   </form>              

        <!--<div class="container" id="travellerId">
                <div class="row">
                    <div class="col-12">
                        <div class="cleartrip-choose4 pt-4">
                            <span class="itineId">3</span><span>Travellers</span><span class="float-right review">Tell us Who's Travelling?</span>
                        </div>
                        <div class="container">
                            <form action="hotel-traveller.jsp" method="Post" class="form-inline" id="travelForm">
                                <div class="row pt-3">
                                    <div class="col-lg-9 col-xl-9 col-md-9 col-12">
                                        <div class="row">
                                            <div class="col-lg-2 col-xl-2 col-md-2 col-12 pt-2">
                                                <label>Traveler Name</label>
                                            </div>
                                            <div class="col-lg-2 col-xl-2 col-md-2 col-12">
                                                <select class="custom-select form-control" id="titleDiv" name="titleDiv">
                                                    <option value="">Title</option>
                                                    <option value="Mr">Mr</option>
                                                    <option value="Ms">Ms</option>
                                                    <option value="Mrs">Mrs</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-4 col-xl-4 col-md-4 col-12">
                                                <input type="text" class="form-control textTrav" placeholder="First Name" id="name1" name="name">
                                            </div>
                                            <br>
                                            <div class="col-lg-2 col-xl-2 col-md-2 col-12 pt-4">
                                                <label>Mobile Number</label>
                                            </div>
                                            <div class="col-lg-3 col-xl-3 col-md-4 col-12 pt-3">
                                                <input type="number" class="form-control" placeholder="Mobile Number" id="mobileNum" name="mobileNum">
                                            </div>
                                            <div class="col-lg-1 col-xl-1 col-md-1 col-12 pt-4">
                                                <label>GST</label>
                                            </div>
                                            <div class="col-lg-5 col-xl-5 col-md-5 col-12 pt-3">
                                                <input type="checkbox" class="form-control" id="travelCheck" name="travelCheck">Use GSTIN for this booking (Optional)
                                            </div>
                                            
                                   <div class="row pt-3">
                            
                                <div class="row">
                                    <div class="col-lg-3 col-xl-3 col-md-3 col-12 pt-2">
                                        <label>Your Email Address</label>
                                    </div>
                                    <div class="col-lg-9 col-xl-9 col-md-9 col-12">
                                        <input type="email" class="form-control textTrav" placeholder="First Name" id="emailId" name="emailId">
                                        <div class="row">
                                           
                                            <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-4">
                                                <input type="submit" name="submit" class="submitButton" value="Continue Booking">
                                            </div>
                                        </div>
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
            </div>-->
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

