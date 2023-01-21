<%-- 
    Document   : homepage
    Created on : 22 Jul, 2021, 7:28:59 PM
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
    <link href="css/bootstrap.min.css" rel="stylesheet" /> 
    <link href="fontawesome/css/all.min.css" rel="stylesheet" /> 
    <link href="css/homecss.css" rel="stylesheet" />

</head>

<body>
    <%
            response.setHeader("Cache-Control", "no-cachr, no-store,must-revaliadate");
            if(session.getAttribute("username")==null)
            {
              response.sendRedirect("index.jsp");
            }
        %>
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
                                    <a class="nav-link tm-nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="aboutus.jsp">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="services.jsp">Services</a>
                                </li>
                                <li class="nav-item">
                                <form action="Logout">
                                    <input type="submit" value="LOG OUT">
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
                        <h2 class="mb-5 tm-content-title"><center>WELCOME ${username}</center></h2>
                        <p class="mb-5"><blockquote><p style="color:orange">&quot;Travel is the main thing you purchase that makes you more extravagant.&quot;</p></blockquote></p>
                        <hr class="mb-5">
                        <p class="mb-5">Welcome to MASTER PLAITING. We make your holidays stress and hassle free. Book with us for exclusive offers and enjoy your life.</p>                        
                        <a href="aboutus.jsp" class="btn btn-primary">Continue...</a>
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