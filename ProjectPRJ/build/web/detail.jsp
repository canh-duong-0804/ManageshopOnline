<%-- 
    Document   : detail
    Created on : Mar 8, 2023, 12:35:00 AM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Boutique | Ecommerce bootstrap template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <!-- gLightbox gallery-->
        <link rel="stylesheet" href="vendor/glightbox/css/glightbox.min.css">
        <!-- Range slider-->
        <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
        <!-- Choices CSS-->
        <link rel="stylesheet" href="vendor/choices.js/public/assets/styles/choices.min.css">
        <!-- Swiper slider-->
        <link rel="stylesheet" href="vendor/swiper/swiper-bundle.min.css">
        <!-- Google fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/favicon.png">
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
    </head>
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
                                    <li class="menu_iconb">
                                        <a href="#"><img style="margin-right: 15px;" src="icon/1.png" alt="#" />0372555578</a>
                                    </li>
                                    <li class="menu_iconb">
                                        <a href="login.jsp">Log in <img style="margin-right: 15px;" src="icon/5.png" alt="#" /> </a>
                                    </li>
                                    <li class="menu_iconb">
                                        <a href="register.jsp">Signup<img style="margin-left: 15px;" src="icon/6.png" alt="#" /></a>
                                    </li>
                                    <li class="tytyu">
                                        <a href="#"> <img style="margin-right: 15px;" src="icon/2.png" alt="#" /></a>
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
                                    <a href="#">Buy now</a>
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
    <body>
        <div class="page-holder bg-light">
            <!-- navbar-->
            <!--  Modal -->
            <section class="py-5">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-lg-6">
                            <!-- PRODUCT SLIDER-->
                            <div class="row m-sm-0">
                                <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0 px-xl-2">
                                    <div class="swiper product-slider-thumbs">

                                        <div class="swiper-slide h-auto swiper-thumb-item mb-3"><img class="w-100" src="${detail.images}" alt="..."></div>

                                    </div>
                                </div>
                                <div class="col-sm-10 order-1 order-sm-2">
                                    <div class="swiper product-slider">

                                        <div class="swiper-slide h-auto"><a class="glightbox product-view" href="#" data-gallery="gallery2" data-glightbox="Product item 1"><img class="img-fluid" src="${detail.images}" alt="..."></a></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- PRODUCT DETAILS-->

                        <div class="col-lg-6">
                            <ul class="list-inline mb-2 text-sm">
                                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                                <li class="list-inline-item m-0 1"><i class="fas fa-star small text-warning"></i></li>
                                <li class="list-inline-item m-0 2"><i class="fas fa-star small text-warning"></i></li>
                                <li class="list-inline-item m-0 3"><i class="fas fa-star small text-warning"></i></li>
                                <li class="list-inline-item m-0 4"><i class="fas fa-star small text-warning"></i></li>
                            </ul>
                                <form name="f" action="buy" method="post">
                                <c:set var="id" value="${detail.product_id}"/>
                            <h1>${detail.name}</h1>
                            <p class="text-muted lead">${detail.price}</p>
                            <p class="text-sm mb-4">${detail.description}</p>
                            <div class="row align-items-stretch mb-4">
                                <div class="col-sm-5 pr-sm-0">
                                    <div class="border d-flex align-items-center justify-content-between py-1 px-3 bg-white border-white"><span class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
                                        <div class="quantity">
                                            Number of item: <input style="text-align: center" type="number" name="num" value="1"/>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    function buy(id) {
                                       var m=document.f.num.value;
                                        document.f.action = "buy?id=" + id + "&num=" + m;
                                        document.f.submit();
                                    }
                                </script>
                                    <div class="col-sm-3 pl-sm-0"><input type="button" onclick="buy('${id}')" value="Buy item"/>
                            </div>
                                <a class="text-dark p-0 mb-4 d-inline-block" href="#!"><i class="far fa-heart me-2"></i>Add to wish list</a><br>
                            <ul class="list-unstyled small d-inline-block">
                                <li class="px-3 py-2 mb-1 bg-white"><strong class="text-uppercase">SKU:</strong><span class="ms-2 text-muted">039</span></li>
                                <li class="px-3 py-2 mb-1 bg-white text-muted"><strong class="text-uppercase text-dark">Category:</strong><a class="reset-anchor ms-2" href="#!">${detail.category_id}</a></li>
                                <li class="px-3 py-2 mb-1 bg-white text-muted"><strong class="text-uppercase text-dark">Tags:</strong><a class="reset-anchor ms-2" href="#!">Innovation</a></li>
                            </ul>
                        </div>
                                </form>
                    </div>
                    <!-- DETAILS TABS-->

                    <!-- RELATED PRODUCTS-->

                </div>
        </div>
    </section>
    <!--  footer -->
    <footer>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer_top">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                    <a href="index.html"> <img class="logo1" src="images/logo1.png" /></a>
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
</section>

<!-- JavaScript files-->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/glightbox/js/glightbox.min.js"></script>
<script src="vendor/nouislider/nouislider.min.js"></script>
<script src="vendor/swiper/swiper-bundle.min.js"></script>
<script src="vendor/choices.js/public/assets/scripts/choices.min.js"></script>
<script src="js/front.js"></script>
<script>
                                        // ------------------------------------------------------- //
                                        //   Inject SVG Sprite - 
                                        //   see more here 
                                        //   https://css-tricks.com/ajaxing-svg-sprite/
                                        // ------------------------------------------------------ //
                                        function injectSvgSprite(path) {

                                            var ajax = new XMLHttpRequest();
                                            ajax.open("GET", path, true);
                                            ajax.send();
                                            ajax.onload = function (e) {
                                                var div = document.createElement("div");
                                                div.className = 'd-none';
                                                div.innerHTML = ajax.responseText;
                                                document.body.insertBefore(div, document.body.childNodes[0]);
                                            }
                                        }
                                        // this is set to BootstrapTemple website as you cannot 
                                        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
                                        // while using file:// protocol
                                        // pls don't forget to change to your domain :)
                                        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');

</script>
<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</div>
</body>
</html>
