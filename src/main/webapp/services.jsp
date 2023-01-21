<%-- 
    Document   : services
    Created on : 22 Jul, 2021, 7:32:58 PM
    Author     : Suriyaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MASTER PLAITING</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" /> 
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="assets/css/all.min.css" rel="stylesheet" /> 
    <link href="assets/css/templatemo-diagoona.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <style type = "text/css">  
   a:link {color: orange;}
   a:visited {color: orange}  
   a:hover {color: orange}  
   a:active {color: orange}  
    </style>
</head>

<body>
    <div class="tm-container">        
        <div>
            <div class="tm-row pt-4">
                <div class="tm-col-left">
                    <div class="tm-site-header media">
                        <i class="fas fa-umbrella-beach fa-3x mt-1 tm-logo"></i>
                        <div class="media-body">
                            <h1 class="tm-sitename text-uppercase">MASTER PLAITING</h1>
                            <p class="tm-slogon">TRAVEL FREE</p>
                        </div>        
                    </div>
                </div>
                <div class="tm-col-right">
                    <nav class="navbar navbar-expand-lg" id="tm-main-nav">
                        <button class="navbar-toggler toggler-example mr-0 ml-auto" type="button" 
                            data-toggle="collapse" data-target="#navbar-nav" 
                            aria-controls="navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                            <ul class="navbar-nav text-uppercase">
                                <li class="nav-item active">
                                    <a class="nav-link tm-nav-link" href="homepage.jsp">Home </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="aboutus.jsp">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="services.jsp">Services<span class="sr-only">(current)</span></a>
                                </li> 
                                <li class="nav-item">
                                <form action="Logout">
                                    <input type="submit" value="LOGOUT">
                                </form>
                                </li>
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
            
            <div class="tm-row">
                <div class="tm-col-left"></div>
                <main class="tm-col-right">
                    <section class="tm-content">
                        <div class="media my-3 mb-5 tm-service-media tm-service-media-img-l">
                            <img src="img/dest.jpg" alt="Image" class="tm-service-img">
                            <div class="media-body tm-service-text">
                                
                                <h2 class="mb-4 tm-content-title"><a class="nav-link" href="activities.jsp"><i class="fa fa-motorcycle"></i> Destinations<i class="fa fa-angle-right float-right" ></i></a></h2>
                                <p>Choose your favourite holiday destination from a huge array of cities we have in our Drop Box and check the various spots in those cities</p>
                            </div> 
                        </div>
                        <div class="media my-3 mb-5 tm-service-media">                            
                            <div class="media-body tm-service-text">
                                <h2 class="mb-4 tm-content-title"><a class="nav-link" href="flights.html" role="tab" aria-selected="false"><i class="fa fa-plane" aria-hidden="true"></i> Flights<i class="fa fa-angle-right float-right" aria-hidden="true"></i></a></h2>
                                <p>Book flights to those destinations which you want to and have a pleasant airline experience</p>
                            </div> 
                            <img src="img/flight.jpg" alt="Image" class="tm-service-img-r">
                        </div>
                        <div class="media my-3 tm-service-media tm-service-media-img-l">
                            <img src="img/hotel.jpg" alt="Image" class="tm-service-img">
                            <div class="media-body tm-service-text">
                                <h2 class="mb-4 tm-content-title"><a class="nav-link" href="hotels.html" role="tab" aria-selected="false"><i class="fa fa-bed" aria-hidden="true"></i> Hotels<i class="fa fa-angle-right float-right" aria-hidden="true"></i></a></h2>
                                <p>Went to the city, Without a hotel? No problem. Book an hotel in a very smarteazy way</p>
                            </div> 
                        </div>
                        <div class="media my-3 mb-5 tm-service-media">
                            <div class="media-body tm-service-text">
                                <h2 class="mb-4 tm-content-title"><a class="nav-link" href="flight-deals.html" role="tab" aria-selected="false"><i class="fa fa-fighter-jet" aria-hidden="true"></i> Flight Deals<i class="fa fa-angle-right float-right" aria-hidden="true"></i></a></h2>
                                <p>Also catch more exciting flight deals with us using this option.</p>
                            </div> 
                            <img src="img/flightdeals.jpg" alt="Image" class="tm-service-img-r ">
                        </div>                          
                    </section>
                </main>
            </div>
        </div>        

        <div class="tm-row">
            <div class="tm-col-left text-center">            
                <ul class="tm-bg-controls-wrapper">
                    <li class="tm-bg-control active" data-id="0"></li>
                    <li class="tm-bg-control" data-id="1"></li>
                    <li class="tm-bg-control" data-id="2"></li>
                </ul>            
            </div>        
            <div class="tm-col-right tm-col-footer">
                <footer class="tm-site-footer text-right">
                    <p class="mb-0">© 2021 Copyright : MASTER PLAITING
                    | <a rel="nofollow" target="_parent" href="aboutus.jsp" class="tm-text-link">Powered By MASTER PLAITING</a></p>
                </footer>
            </div>  
        </div>

        <!-- Diagonal background design -->
        <div class="tm-bg">
            <div class="tm-bg-left"></div>
            <div class="tm-bg-right"></div>
        </div>
    </div>

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.backstretch.min.js"></script>
    <script src="js/homejs.js"></script>
    
</body>

</html>
