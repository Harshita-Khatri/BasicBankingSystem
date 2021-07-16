<%-- 
    Document   : Home
    Created on : Jul 5, 2021, 1:09:06 PM
    Author     : Harshita Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    
</style>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css" >
    </button>
</fo <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body style="background-color: lavender">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">-Bank of Paradise-</a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="ViewAllCustomer.jsp">View All Customers</a>
                        <a class="dropdown-item" href="TransferMoneyHome.jsp">Transfer Money</a>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">About Us<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>        
    </nav>
    
    <br><br>
    
<center>
    <h1 style="background-color: #384f7d; color: white; font-size: 60px">Bank of Paradise</h1>
</center>
<br><br>


<div class="container-fluid" >
    <div class = "row">
        <div class = "column" style="width: 50%; margin-left: 5%">     
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style = "width:100%">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="bank1.jpg" alt="First slide" style = " height: 600px">
                       
                        <div class="carousel-caption d-none d-md-block" >
                            <h5>WELCOME USER</h5>
                            <p>to Bank of Paradise</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="bank2.jpg" alt="Second slide"  style = " height: 600px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>"MONEY LOOKS BETTER IN THE BANK NOT IN THE CLOSET."</h5>
                            <p>A paradise for you</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="bank3.jpg" alt="Third slide" style = " height: 600px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>"Make good choices and always do your best."</h5>
                            <p>Bank of Paradise</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class = "column" style ="width:40%; margin-left: 5%; border-radius: 15px " >
            <div class="row" style="margin-top: 7%">
                <div class="card" style="border-radius: 20px 20px 40px 40px; width:80%">
                    <div class="card-header"  >
                        <h5>Customers</h5>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">View All Customers</h5>
                        <p class="card-text">View details of all the customers in a new page.</p>
                        <a href="ViewAllCustomer.jsp" class="btn btn-primary" style="border-radius: 15px">View Customers</a>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 17%">
                <div class="card" style="width: 80%; border-radius: 20px 20px 40px 40px" >
                    <div class="card-header">
                        <h5>Transaction</h5>
                    </div>
                    <div class="card-body" style="width:100%">
                        <h5 class="card-title">Transfer Money</h5>
                        <p class="card-text">Transfer money from one account to another.</p>
                        <a href="TransferMoneyHome.jsp" class="btn btn-primary" style="border-radius: 15px">Transaction</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<footer class="page-footer font-small stylish-color-dark pt-4" style="background-color: black ; margin-top:7%">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-4 mx-auto">

                <!-- Content -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Bank of Paradise</h5>
                <p style="color: white ">This is a basic banking website (Bank of Paradise) <br> developed for internship <br> at GRIP At The Spark Foundation. <br>The backend used here is -> Java + MySQL(Wamp),<br> The frontend used here is -> HTML + CSS + Javascript + JSP + Bootstrap </p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none">

            <!-- Grid column -->
            <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Links</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Paradise_Bank(instagram)</a>
                    </li>
                    <li>
                        <a href="#!">Paradise_Bank(facebook)</a>
                    </li>
                    <li>
                        <a href="#!">BbankParadise (Github)</a>
                    </li>
                    <li>
                        <a href="#!">Paradise_Bank (linkedin)</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none">

            <!-- Grid column -->
            <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Frontend/Backend</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Java</a>
                    </li>
                    <li>
                        <a href="#!">MySQL (Wamp)</a>
                    </li>
                    <li>
                        <a href="#!">HTML/CSS/JSP</a>
                    </li>
                    <li>
                        <a href="#!">Javascript/Bootstrap</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none">

            <!-- Grid column -->
            <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Internship</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">GRIP</a>
                    </li>
                    <li>
                        <a href="#!">The Spark Foundation</a>
                    </li>

                </ul>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <hr><hr>

    <!-- Social buttons -->
    <ul class="list-unstyled list-inline text-center">
        <li class="list-inline-item">
            <a class="btn-floating btn-fb mx-1">
                <i class="fab fa-facebook-f"> </i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="btn-floating btn-tw mx-1">
                <i class="fab fa-twitter"> </i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="btn-floating btn-gplus mx-1">
                <i class="fab fa-google-plus-g"> </i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="btn-floating btn-li mx-1">
                <i class="fab fa-linkedin-in"> </i>
            </a>
        </li>
        <li class="list-inline-item">
            <a class="btn-floating btn-dribbble mx-1">
                <i class="fab fa-dribbble"> </i>
            </a>
        </li>
    </ul>
    <!-- Social buttons -->

    <div class="footer-copyright text-center py-3" style="color: white ">© 2021 Copyright:
        <a href="#"> ParadiseBank@gmail.com</a>
    </div>    



</footer>

</body>
<script type="text/javascript" src="jquery.js" ></script>
<script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
