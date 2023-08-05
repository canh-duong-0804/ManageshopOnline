<%-- 
    Document   : home
    Created on : Mar 9, 2023, 11:50:36 AM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.ArrayList" %>
<%@page  import="model.Product" %>
<!DOCTYPE html>
<!DOCTYPE html>

<html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Nori</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->
    <body class="main-layout">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
        </div>

        <div class="wrapper">

            <!-- end loader -->
            <div class="sidebar">
                <!-- Sidebar  -->
                <nav id="sidebar">

                    <div id="dismiss">
                        <i class="fa fa-arrow-left"></i>
                    </div>

                    <ul class="list-unstyled components">

                        <li class="active">
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="#gun">Gun</a>
                        </li>
                        <li>
                            <a href="#knife">Knife</a>
                        </li>
                        <li>
                            <a href="#pistol">Pistol</a>
                        </li>
                        <li>
                            <a href="#case">Gloves</a>
                        </li>
                    </ul>

                </nav>
            </div>

            <div id="content">
                <!-- header -->
                <header>
                    <!-- header inner -->
                    <div class="head_top">
                        <div class="header">

                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-lg-3 logo_section">
                                        <div class="full">
                                            <div class="center-desk">
                                                <div class="logo">
                                                    <a href="home"><img src="images/logo.png" alt="#"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="right_header_info">
                                            <ul>
                                                 <c:if test="${sessionScope.acc.isAdmin == 1}">
                                                <li class="menu_iconb">
                                                    <a href="manager"><img style="margin-right: 15px; max-width:4%" src="images/icons8-manager-52.png" alt="#" />Manager Product</a>
                                                </li>
                                                 </c:if>
                                                <li class="menu_iconb">
                                                    <a href="#"><img style="margin-right: 15px;" src="icon/1.png" alt="#" />0372555578</a>
                                                </li>
                                                <c:if test="${sessionScope.acc != null}">
                                                    <li class="menu_iconb">
                                                        <a href="#">hello ${sessionScope.acc.account} <3</a>
                                                    </li>
                                                    <li class="menu_iconb">
                                                        <a href="logout">Log out</a>
                                                    </li>

                                                </c:if>
                                                <c:if test="${sessionScope.acc == null}">

                                                    <li class="menu_iconb">
                                                        <a href="login.jsp">Log in <img style="margin-right: 15px;" src="icon/5.png" alt="#" /> </a>
                                                    </li>

                                                </c:if>
                                                <li class="menu_iconb">
                                                    <a href="register.jsp">Signup<img style="margin-left: 15px;" src="icon/6.png" alt="#" /></a>
                                                </li>
                                                <c:set var="size" value="${requestScope.size}"/>
                                                <li class="tytyu">
                                                    <a href="show"> <img style="margin-right: 15px;" src="icon/2.png" alt="#" />${requestScope.size} items</a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <form class="search" action="search">
                                                        <input name="txt" type="search" placeholder="Search here..." required>
                                                        <button type="submit"><a href="#"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a></button>
                                                    </form>   
                                                </li>

                                                <li>
                                                    <button type="button" id="sidebarCollapse">
                                                        <img src="images/menu_icon.png" alt="#" />
                                                    </button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- end header inner -->

                        <!-- end header -->
                        <section class="slider_section">
                            <div class="banner_main">
                                <div class="container-fluid padding3">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mapimg">
                                            <div class="text-bg">
                                                <h1>Best <br>
                                                    Skin<br>
                                                    Shop <br>
                                                    Ever</h1>
                                                <span>Come and buy csgo Skin <3</span>
                                            </div>
                                        </div>
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div id="myCarousel" class="carousel slide banner_Client" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                                </ol>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <div class="container">
                                                            <div class="carousel-caption text">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="img_bg">
                                                                            <figure><img src="images/counter-strike-png-5212.png" style="max-width: 90%" /></figure>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <div class="container">
                                                            <div class="carousel-caption text">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="img_bg">
                                                                            <figure><img src="images/toppng.com-csgo-awp-skin-917x301.png" style="margin: 100px;max-width: 93%"  " /></figure>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <div class="container">
                                                            <div class="carousel-caption text">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="img_bg">
                                                                            <figure><img src="images/favpng_counter-strike-global-offensive-counter-strike-1-6-valve-anti-cheat-cheating-in-video-games.png" style="max-width: 87%" /></figure>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </header>
                <section>
                    <!--  save -->

                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="save">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                            <div class="save_box">
                                                <h3>Don't forget to login! </h3>
                                                <a href="login.jsp">Login Now To See More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end save -->
                </section>
                <!-- Categories -->
                    <div class="Categories">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="title">
                                        <h2> Categories</h2>
                                        <ul class="categiri">
                                            <c:forEach items="${listC}" var="c">
                                                <li><a href="category?cid=${c.category_id}">${c.category_name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            --<!-- all product -->
                            <div id="all"  class="brand-bg">
                                <h3> Product</h3>
                                <form name="f" action="buy" method="post">
                                    Number of item: <input style="text-align: center" type="number" name="num" value="1"/>
                                <div class="row">
                                    <c:forEach items="${listP}" var="q">
                                        <c:set var="id" value="${q.product_id}"/>
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                            <div class="brand-box">
                                                <a class="buynow" href="detail?pid=${q.product_id}&check=hello">${q.name}</a>
                                                <i><img src="${q.images}"/>
                                                </i>
                                                <h4>Price $<span class="nolmal">${q.price}</span></h4>

                                            </div>
                                                <input type="button" onclick="buy('${id}')" value="Buy item"/>
                                        </div>
                                    </c:forEach>
                                </div>
                                    </form>
                            </div>
                            <a class="seemore" href="#">See more</a>
                            <!-- end news brand -->
                            <!-- news brand -->
                            <div id="gun"  class="brand-bg">
                                <h3>New Gun</h3>
                                <div class="row">
                                    <c:forEach items="${data}" var="o">

                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                            <div class="brand-box">
                                                <a class="buynow" href="detail?pid=${o.product_id}">${o.name}</a>
                                                <i ><img href="#" src="${o.images}"/>
                                                </i>
                                                <h4>Price $<span class="nolmal">${o.price}</span></h4>

                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                            <!-- end news brand -->

                            <!-- news shoes -->
                            <div id="knife" class="shoes-bg">
                                <h3>New Knife</h3>
                                <div class="row">
                                    <c:forEach items="${knife}" var="k">
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                            <div class="shoes-box">
                                                <a class="buynow" href="detail?pid=${k.product_id}">${k.name}</a>
                                                <i><img src="${k.images}"/>
                                                </i>
                                                <h4>Price $<span class="nolmal">${k.price}</span></h4>

                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                    </div>
                                                </form> 

            </div>
            <!-- end news shoes -->

            <!-- end Categories -->



            <!-- news Jewellery -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="pistol" class="Jewellery-bg">
                            <h3>New Pistol</h3>
                            <div class="row">
                                <c:forEach items="${pis}" var="p">
                                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                        <div class="Jewellery-box">
                                            <a class="buynow" href="detail?pid=${p.product_id}">${p.name}</a>
                                            <i><img src="${p.images}"/>
                                            </i>
                                            <h4>Price $<span class="nolmal">${p.price}</span></h4>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="case" class="Jewellery-bg">
                            <h3>New Gloves</h3>
                            <div class="row">
                                <c:forEach items="${cas}" var="a">
                                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                        <div class="Jewellery-box">
                                            <a class="buynow" href="detail?pid=${a.product_id}">${a.name}</a>
                                            <i><img src="${a.images}"/>
                                            </i>
                                            <h4>Price $<span class="nolmal">${a.price}</span></h4>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--  footer -->
            <footer>
                <div class="footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="footer_top">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                            <a href="home"> <img class="logo1" src="images/logo1.png" /></a>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                            <ul class="sociel">
                                                <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                                <li> <a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 ">
                                        <div class="address">
                                            <h3>Contact us </h3>
                                            <ul class="loca">
                                                <li>
                                                    <a href="#"><img src="icon/loc.png" alt="#" /></a>145 londone
                                                    <br>uk </li>
                                                <li>
                                                    <a href="#"><img src="icon/call.png" alt="#" /></a>+12586954775 </li>
                                                <li>
                                                    <a href="#"><img src="icon/email.png" alt="#" /></a>demo@gmail.com </li>

                                            </ul>

                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <div class="address">
                                            <h3>customer service</h3>
                                            <ul class="Menu_footer">
                                                <li class="active"> <a href="#">My account</a> </li>
                                                <li><a href="#">Wishlist</a> </li>
                                                <li><a href="#">My Cart</a> </li>
                                                <li><a href="#">Checkout</a> </li>
                                                <li><a href="#">Login</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <div class="address">
                                            <h3>corporation</h3>
                                            <ul class="Links_footer">
                                                <li class="active"><a href="#">My account</a> </li>
                                                <li><a href="#">Wishlist</a> </li>
                                                <li><a href="#">My Cart</a> </li>
                                                <li><a href="#"> Checkout</a> </li>
                                                <li><a href="#">Login</a> </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-sm-6 ">
                                        <div class="address">
                                            <h3>why choose us</h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna </p>
                                            <form class="newtetter">
                                                <input class="tetter" placeholder="Your email" type="text" name="Your email">
                                                <button class="submit">Subscribe</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="copyright"> 
                        <div class="container">
                            <p>Copyright 2019 All Right Reserved By <a href="https://html.design/">Free html Templates</a></p>
                        </div>
                    </div>
                </div>

            </footer>
            <!-- end footer -->


        </div>

        <div class="overlay"></div>

        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>

        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function () {
                    $('#sidebar').removeClass('active');
                    $('.overlay').removeClass('active');
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').addClass('active');
                    $('.overlay').addClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });
        </script>
        <script>
            // This example adds a marker to indicate the position of Bondi Beach in Sydney,
            // Australia.
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 11,
                    center: {
                        lat: 40.645037,
                        lng: -73.880224
                    }
                });

                var image = 'images/maps-and-flags.png';
                var beachMarker = new google.maps.Marker({
                    position: {
                        lat: 40.645037,
                        lng: -73.880224
                    },
                    map: map,
                    icon: image
                });
            }
        </script>
        <!-- google map js -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
        <!-- end google map js -->

    </body>

</html>
<script type="text/javascript">
    function buy(id){
        var m=document.f.num.value;
        document.f.action="buy?id="+id+"&num="+m;
        document.f.submit();
    }
</script>