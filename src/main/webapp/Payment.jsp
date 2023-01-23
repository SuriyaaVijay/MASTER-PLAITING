<%-- 
    Document   : Payment
    Created on : 14 Jul, 2021, 7:38:58 PM
    Author     : SASANA
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
        <title>Payment Page</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/inner/favicon.png" />
    <link rel="stylesheet" type="text/css" href="calenplugin/css/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css" type="text/css"/>
    

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
              
           </nav>
        </div>
       </header>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/travel?useSSL=false","root","");
              Statement stmt=con.createStatement();  
              String sql ="select hotel_amt from hotels where select_hotel='yes'";
              ResultSet ras=stmt.executeQuery(sql); 
              ras.next();

              Statement stm=con.createStatement();  
              ResultSet rs=stm.executeQuery("select flight_amt from flights where select_flight='yes'");
              rs.next();
              
              int total = 30000+ras.getInt("hotel_amt")+rs.getInt("flight_amt");

            %>
        
        <div class="container" id="paymentSection">
                <div class="row"><br>
                    <div class="col-12">
                        <div class="cleartrip-choose3 pt-4">
                            <span class="itineId">#</span><span>Payment</span><span class="float-right review">How Would You Like to Pay?</span>
                        </div>
                        <div class="container" >
                            <div class="tab">
                                <button class="tablinks" onclick="openCity(event, 'Credit')" id="defaultOpen">Credit Card</button>
                                <button class="tablinks" onclick="openCity(event, 'Debit')">Debit Card</button>
                                <button class="tablinks" onclick="openCity(event, 'Net')">Net Banking</button>
                                <button class="tablinks" onclick="openCity(event, 'Wallet')">Wallets</button>
                                <button class="tablinks" onclick="openCity(event, 'UPI')">UPI</button>
                            </div>

                            <div id="Credit" class="tabcontent">                                
                                <h5>Enter your credit card details</h5>
                                <form action="confirmation.jsp" id="creditForm">
                                    <div class="row pt-3">
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Credit Card Number</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 pb-2">
                                             <input type="text" class="form-control" id="creditNumber" name="creditNumber" placeholder="0000 0000 0000 0000" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Expiry Date</label>
                                        </div>
                                         <div class="col-lg-8 col-xl-8 col-md-8 col-12">
                                         <input type="text" class="form-control" id="creditMonth" name="creditMonth" placeholder="MM/YYYY" required>
                                         </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Card Holder Name</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 pt-2">
                                             <input type="text" class="form-control" placeholder="Name As on Card" id="creditHolder" name="creditHolder" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>CVV Number</label>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <input type="text" class="form-control" id="cvvCredit" name="cvvCredit" placeholder="CVV" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <span>The 3 digit number printed on the back of the card</span>
                                        </div>
                                        <div class="col-12 pt-2">
                                            <input type="checkbox" class="checkBox1" id="checkCredit" name="checkCredit" required> <span class="secure">I understand and agree to the rules and restrictions of this fare, the Booking Policy, the Privacy Policy and the Terms & Conditions </span>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-4">
                                            <h4>₹ <%=total %></h4>
                                            <p>(Total inclusive all taxes)</p>
                                            <input type="submit" name="submit" class="submitButton" value="Submit">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div id="Debit" class="tabcontent">
                                <h5>Enter your Debit card details</h5>
                                <form action="confirmation.jsp" id="debitForm">
                                    <div class="row pt-3">
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Debit Card Number</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 pt-2">
                                            <input type="text" class="form-control" id="debitNumber" name="debitNumber" placeholder="0000 0000 0000 0000" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Expiry Date</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 pt-2">
                                    <input type="text" class="form-control" id="debitMonth" name="debitMonth" placeholder="MM/YYYY" required>
                                     </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>Card Holder Name</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 pt-2">
                                            <input type="text" class="form-control" placeholder="Name As on Card" id="debitHolder" name="debitHolder" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <label>CVV Number</label>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                             <input type="text" class="form-control" id="cvvDebit" name="cvvDebit" placeholder="CVV" required>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2">
                                            <span>The 3 digit number printed on the back of the card</span>
                                        </div>
                                        <div class="col-12 pt-2">
                                            <input type="checkbox" class="checkBox1" id="checkDebit" name="checkDebit" required><span class="secure">I understand and agree to the rules and restrictions of this fare, the Booking Policy, the Privacy Policy and the Terms & Conditions </span>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-4">
                                            <h4>₹ <%=total %></h4>
                                            <p>(Total inclusive all taxes)</p>
                                              <input type="submit" name="submit" class="submitButton" value="Submit">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div id="Net" class="tabcontent netImg">
                                <h5>Enter your Net Banking details</h5>
                              <img src="assets/images/bank/citibank-logo.png" alt="bank">
                              <img src="assets/images/bank/icici-bank-logo-vector.pn.png" alt="bank">
                              <img src="assets/images/bank/sbi-logo.png" alt="bank">
                                <h5 class="pt-4 pb-2">All Other Bank</h5>
                                <form action="confirmation.jsp" id="netForm">
                                <select class="custom-select form-control" id="netBank" name="netBank">
                                    <option value="">Select Bank</option>
                                    <option value="1">Canara Bank</option>
                                    <option value="2">Bank of Baroda</option>
                                    <option value="3">Indian Overseas Bank</option>
                                    <option value="4">Axis Bank</option>
                                    <option value="5">HDFC Bank</option>
                                    <option value="6">ICICI Bank</option>
                                    <option value="7">State Bank of India</option>
                                    <option value="8">Citi Bank</option>
                                </select>
                                <input type="checkbox" class="checkBox1 mt-4 " id="netCheck" name="netCheck" required> <span class="secure">I understand and agree to the rules and restrictions of this fare, the Booking Policy, the Privacy Policy and the Terms & Conditions </span>
                                <h4 class="pt-4 pb-2">₹ <%=total %></h4>
                                <p>(Total inclusive all taxes)</p>
                                <input type="submit" name="submit" class="submitButton" value="Submit">
                                </form>
                            </div>
                            <div id="Wallet" class="tabcontent walletImg">
                                <h5>Select a wallet to make your payment.</h5>
                                <img src="assets/images/bank/airtel-money.png" alt="bank">
                                <img src="assets/images/bank/amazon.png" alt="bank">
                                <img src="assets/images/bank/FreeCharge.png" alt="bank">
                                <img src="assets/images/bank/paytm.png" alt="bank">
                                <form action="confirmation.html" id="walletForm">
                                <input type="checkbox" class="checkBox1 mt-4" id="walletCheck" name="walletCheck" required> <span class="secure">I understand and agree to the rules and restrictions of this fare, the Booking Policy, the Privacy Policy and the Terms & Conditions </span>
                                <h4 class="pt-4 pb-2">₹ <%=total %></h4>
                                <p>(Total inclusive all taxes)</p>
                                <input type="submit" name="submit" class="submitButton" value="Submit">
                                </form>
                            </div>
                            <div id="UPI" class="tabcontent">
                                <form action="confirmation.jsp" id="upiForm">
                                    <div class="row pt-3">
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-2 text-right">
                                            <label>Enter your UPI ID</label>
                                        </div>
                                        <div class="col-lg-8 col-xl-8 col-md-8 col-12 upiImg">
                                            <input type="text" class="form-control" placeholder="Yourname@bank" id="upiName" name="upiName" required>
                                            <img src="assets/images/bank/phone.png" alt="phone"><span>Please authorise the payment request on your UPI app</span>
                                        </div>

                                        <div class="col-12 pt-2">
                                            <input type="checkbox" class="checkBox1" id="upiCheck" name="upiCheck" required> <span class="secure">I understand and agree to the rules and restrictions of this fare, the Booking Policy, the Privacy Policy and the Terms & Conditions </span>
                                        </div>
                                        <div class="col-lg-4 col-xl-4 col-md-4 col-12 pt-4">
                                            <h4>₹ <%=total %></h4>
                                            <p>(Total inclusive all taxes)</p>
                                            
                                           <input type="submit" name="submit" class="submitButton" value="Submit">
                                        </div>
                                    </div>
                                            
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <footer class="page-footer font-small mdb-color pt-2">
            <div class="container">
               <div class="row">
                <div class="col-lg-9 col-md-8 col-12">
                     <!--Copyright-->
                     <p class="text-left">© 2021 Copyright :
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
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/custom-dynamic.js"></script>
        <script src="assets/js/payment.js"></script>
        
</body>
        
</html>