<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Delivery TEST Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/css/fontAwesome.css">
        <link rel="stylesheet" href="../resources/css/hero-slider.css">
        <link rel="stylesheet" href="../resources/css/templatemo-main.css">
        <link rel="stylesheet" href="../resources/css/owl-carousel.css">



        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="../resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>


<body>

    <div class="fixed-side-navbar">
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link" href="#home"><span>Delivery</span></a></li>
            <li class="nav-item"><a class="nav-link" href="#services"><span>Services</span></a></li>
            <sec:authorize access="isAnonymous()"><li class="nav-item">
            <a class="nav-link" href="login"><span>LOGIN</span></a></li>
            </sec:authorize>
            <sec:authorize access="isAnonymous()"><li class="nav-item">         
            <li class="nav-item"><a class="nav-link" href="join.html"><span>JOIN</span></a></li>
            </sec:authorize>
            <li class="nav-item"><a class="nav-link" href="#contact-us"><span>TEST</span></a></li>
            <li class="nav-item"><a class="nav-link" href="/member/myPage"><span>MyPage</span></a></li>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item"><a class="nav-link" href="/admin/memberList?auth=ROLE_MEMBER"><span>#회원관리</span></a></li>
            </sec:authorize>
        </ul>
    </div>

    <div class="parallax-content baner-content" id="home">
        <div class="container">
            <div class="first-content">
                <h1>Delivery TEST</h1>
                <span><em>Bootstrap</em>Delivery TEST</span>
                <div class="primary-button"> <br>
                    <a href="#services">More</a>
                </div>
            </div>
        </div>
    </div>
    </div>


    <div class="service-content" id="services">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="left-text">
                        <h4>Delivery TEST</h4>
                        <div class="line-dec"></div>
                        <p>Delivery TEST abcdefgsadqasdfaffadac
                        <a rel="nofollow" href="https://templatemo.com">
                        website</a> whsskwhfflek.</p>
                        <ul>
                            <li>-  test test test test test test </li>
                            <li>-  test test test test test test </li>
                           <li>-  test test test test test test </li>
                           <li>-  test test test test test test </li>
                        </ul>
                        <div class="primary-button">
                            <a href="#portfolio">Delivery TEST</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="service-item">
                                <h4>Delivery TEST</h4>
                                <div class="line-dec"></div>
                                <p>test test test test test test</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="service-item">
                                <h4>Delivery TEST</h4>
                                <div class="line-dec"></div>
                                   <p>test test test test test test</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="service-item">
                               <h4>Delivery TEST</h4>
                                <div class="line-dec"></div>
                                <p>test test test test test test</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="service-item">
                                  <h4>Delivery TEST</h4>
                                <div class="line-dec"></div>
                                   <p>test test test test test test</p>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </div>

    
    <div class="parallax-content projects-content" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="owl-testimonials" class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/1st-big-item.jpg" data-lightbox="image-1"><img src="img/1st-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/2nd-big-item.jpg" data-lightbox="image-1"><img src="img/2nd-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/3rd-big-item.jpg" data-lightbox="image-1"><img src="img/3rd-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/4th-big-item.jpg" data-lightbox="image-1"><img src="img/4th-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/5th-big-item.jpg" data-lightbox="image-1"><img src="img/5th-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/6th-big-item.jpg" data-lightbox="image-1"><img src="img/6th-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/2nd-big-item.jpg" data-lightbox="image-1"><img src="img/2nd-item.jpg" alt=""></a>
                                <div class="text-content">
                                    <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonials-item">
                                <a href="img/1st-big-item.jpg" data-lightbox="image-1"><img src="img/1st-item.jpg" alt=""></a>
                                <div class="text-content">
                                   <h4>foodname</h4>
                                    <span>123 &#8361; </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="parallax-content contact-content" id="contact-us">

                </div>
                

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="primary-button">
                        <a href="#home">Back To Top</a>
                    </div>
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-google"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                    </ul>
				 </div>
            </div>
        </div>
    </footer>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="../resources/js/vendor/bootstrap.min.js"></script>
    <script src="../resources/js/plugins.js"></script>
    <script src="../resources/js/main.js"></script>


</body>
</html>