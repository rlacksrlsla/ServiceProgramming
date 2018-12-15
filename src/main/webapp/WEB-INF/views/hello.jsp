<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" type="image/png" href="/resoures/bootstrap/images/favicon.ico">
    <title>WebService_Termp</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Template CSS Files
    ================================================== -->
    <!-- Twitter Bootstrs CSS -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <!-- Ionicons Fonts Css -->
    <link rel="stylesheet" href="/resources/bootstrap/css/ionicons.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="/resources/bootstrap/css/animate.css">
    <!-- Hero area slider css-->
    <link rel="stylesheet" href="/resources/bootstrap/css/slider.css">
    <!-- owl craousel css -->
    <link rel="stylesheet" href="/resources/bootstrap/css/owl.carousel.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/owl.theme.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/jquery.fancybox.css">
    <!-- template main css file -->
    <link rel="stylesheet" href="/resources/bootstrap/css/main.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="/resources/bootstrap/css/responsive.css">

    <!-- Template Javascript Files
    ================================================== -->
    <!-- modernizr js -->
    <script src="/resources/bootstrap/js/vendor/modernizr-2.6.2.min.js"></script>
    <!-- jquery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <!-- owl carouserl js -->
    <script src="/resources/bootstrap/js/owl.carousel.min.js"></script>
    <!-- bootstrap js -->

    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- wow js -->
    <script src="/resources/bootstrap/js/wow.min.js"></script>
    <!-- slider js -->
    <script src="/resources/bootstrap/js/slider.js"></script>
    <script src="/resources/bootstrap/js/jquery.fancybox.js"></script>
    <!-- template main js -->
    <script src="/resources/bootstrap/js/main.js"></script>
    <style type="text/css">
        table td {
            margin-top: auto;
            margin-bottom: auto;
        }

        table th {
            text-align: center;
        }
    </style>
</head>
<body>
<!--
==================================================
Header Section Start
================================================== -->
<%@ include file="headerBar.jsp" %>
<%-- 헤더 끝! --%>

<!--
==================================================
Slider Section Start
================================================== -->
<section id="hero-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="block wow fadeInUp" data-wow-delay=".3s">

                    <!-- Slider -->
                    <section class="cd-intro">
                        <h1 class="wow fadeInUp animated cd-headline slide" data-wow-delay=".4s">
                            <span>Book Search Service</span><br>
                            <span class="cd-words-wrapper">
                                    <b class="is-visible">READER</b>
                                    <b>BOOK</b>
                                    <b>LIBRIARY</b>
                                </span>
                        </h1>
                    </section> <!-- cd-intro -->
                    <!-- /.slider -->
                    <sec:authorize access="isAnonymous()">
                        <h2>우리 서비스는 로그인을 하셔야지만 이용할 수 있습니다.<br>
                        아직 회원이 아닌신 경우 'JOIN'을 눌러 가입 해주세요.</h2>
                        <a  href="/user/signin"  class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s">SIGNIN</a>
                        <a href="/user/signup" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s">JOIN</a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <h2 class="wow fadeInUp animated" data-wow-delay=".6s">
                            여러분들이 필요로 하는 책 , 도서관에 대한 정보 제공!
                        </h2>
                        <a class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
                           data-wow-delay=".9s" href="#search" data-section="#search">BOOK LIST</a>
                        <a class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
                           data-wow-delay=".9s" href="#position" data-section="#position">LIBRARY LIST</a>
                        <a class="btn-lines dark light wow fadeInUp animated smooth-scroll btn btn-default btn-green"
                           data-wow-delay=".9s" href="#festival" data-section="#festival">LIBRARY EVENT</a>
                    </sec:authorize>
                </div>
            </div>
        </div>
    </div>
</section><!--/#main-slider-->

<section id="search">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInLeft" data-wow-delay=".3s" data-wow-duration="500ms"
                     style="width:500px;margin:0 auto;">
                    <br><br><br><br>
                    <h2>
                        <sec:authorize access="isAnonymous()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a>BOOK LIST</a>
                            </div>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a href="/bookList.do">BOOK LIST</a>
                            </div>
                        </sec:authorize>
                    </h2>
                    <p>
                        OPEN API를 이용하여 사용자가 원하는 도서를 찾아주고 도서에 대한 정보와 가격을 사용자에게 알려주는 역할을 한다.
                    </p>
                </div>

            </div>
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInRight" data-wow-delay=".3s" data-wow-duration="500ms">
                    <img src="/resources/bootstrap/images/about/book.jpg" width="550" height="400" alt="">
                </div>
            </div>
        </div>
    </div>
</section> <!-- /#about -->

<section id="position">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInLeft" data-wow-delay=".3s" data-wow-duration="500ms"
                     style="width:500px;margin:0 auto;">
                    <br><br><br><br>
                    <h2>
                        <sec:authorize access="isAnonymous()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a>LIBRARY LIST</a>
                            </div>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a href="/service/library/list.do">LIBRARY LIST</a>
                            </div>
                        </sec:authorize>
                    </h2>
                    <p>
                        OPEN API를 이용하여 사용자가 원하는 지겨의 도서관을 도서관의 주소와 정보들을 알려드립니다.
                    </p>
                </div>

            </div>
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInRight" data-wow-delay=".3s" data-wow-duration="500ms">
                    <img src="/resources/bootstrap/images/about/book2.jpg" width="550" height="400" alt="">
                </div>
            </div>
        </div>
    </div>
</section> <!-- /#about -->

<section id="festival">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInLeft" data-wow-delay=".3s" data-wow-duration="500ms"
                     style="width:500px;margin:0 auto;">
                    <br><br><br><br>
                    <h2>
                        <sec:authorize access="isAnonymous()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a>LIBRARY EVENT</a>
                            </div>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <div style="width:180px;margin:0 auto;" class="is-visible">
                                <a href="/service/library/event.do">LIBRARY EVENT</a>
                            </div>
                        </sec:authorize>
                    </h2>
                    <p>
                        OPEN API를 이용하여 사용자가 지역이나 도서관을 입력하면 해당 각종 문화행사를 알려드립니다.
                    </p>
                </div>

            </div>
            <div class="col-md-6 col-sm-6">
                <div class="block wow fadeInRight" data-wow-delay=".3s" data-wow-duration="500ms">
                    <img src="/resources/bootstrap/images/about/book3.jpg" width="550" height="400" alt="">
                </div>
            </div>
        </div>
    </div>
</section> <!-- /#about -->


<!--
==================================================
Footer Section Start
================================================== -->
<footer id="footer">
    <div class="container">
        <div class="col-md-8">
            <p class="copyright">Copyright: <span>2018</span> . Design and Developed by <a
                    href="https://github.com/rlacksrlsla/ServiceProgramming">JHS & KCK</a></p>
        </div>
        <div class="col-md-4">
            <!-- Social Media -->
            <ul class="social">
                <li>
                    <a href="https://www.facebook.com/profile.php?id=100004893128559" class="Facebook">
                        <i class="ion-social-facebook"></i>
                    </a>
                </li>
                <li>
                    <a href="#" class="Linkedin">
                        <i class="ion-social-linkedin"></i>
                    </a>
                </li>
                <li>
                    <a href="https://plus.google.com/u/0/102186856142657651142" class="Google Plus">
                        <i class="ion-social-googleplus"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</footer> <!-- /#footer -->

</body>
</html>
