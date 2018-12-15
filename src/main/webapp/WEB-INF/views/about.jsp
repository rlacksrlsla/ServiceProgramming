<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        .mybtn {
            width: 100px;
            float: right;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<!--
==================================================
Header Section Start
================================================== -->
<%@ include file="headerBar.jsp" %>

<section class="global-page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <h2>About</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="/">
                                <i class="ion-ios-home"></i>
                                Home
                            </a>
                        </li>
                        <li class="active">인자 정보</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section><!--/#Page header-->


<section>
    <div class="container">
        <div class="row">
            <h3>- 공공 도서관 위치정보 API -</h3>
            <input class="btn btn-primary mybtn" onclick="location='/api/xml/lib_list/강남구'" value="XML"/>
            <h4>서울시 공공데이터 포털에서 제공하는 공공 도서관 위치 정보를 제공하여주는 API이다.</h4>
            <h5><a href="http://wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/lib_list/강남구">(해당 URL : wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/lib_list/강남구)</a></h5>
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <td>&nbsp 구분 &nbsp</td>
                    <td>&nbsp 변수명 &nbsp</td>
                    <td>&nbsp 사용 &nbsp</td>
                </tr>
                <tr>
                    <td rowspan="1"> 입력값</td>
                    <td>&nbsp district &nbsp</td>
                    <td>&nbsp 지역 단위(구)&nbsp</td>
                </tr>
                <tr>
                    <td rowspan="5"> 출력값</td>
                    <td>&nbsp library.name &nbsp</td>
                    <td>&nbsp 도서관명&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp library.address &nbsp</td>
                    <td>&nbsp 주소&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp library.phone &nbsp</td>
                    <td>&nbsp 전화번호&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp library.homepage &nbsp</td>
                    <td>&nbsp URL&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp library.holiday &nbsp</td>
                    <td>&nbsp 휴무 정보&nbsp</td>
                </tr>
            </table>
        </div>
    </div>
</section> <!-- /#about -->


<section id="position">
    <div class="container">
        <div class="row">
            <h3>- 문화행사정보 API-</h3>
            <input class="btn btn-primary mybtn" onclick="location='/api/xml/event_list/강남구/강남도서관'" value="XML"/>
            <h4>서울시 공공데이터 포털에서 제공하는 문화행사 정보를 제공하여주는 API이다.</h4>
            <h5><a href="http://wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/event_list/강남구/강남도서관">(해당 URL :  wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/event_list/강남구/강남도서관)</a></h5>
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <td>&nbsp 구분 &nbsp</td>
                    <td>&nbsp 변수명 &nbsp</td>
                    <td>&nbsp 사용 &nbsp</td>
                </tr>
                <tr>
                    <td rowspan="1"> 입력값</td>
                    <td>&nbsp district_event &nbsp</td>
                    <td>&nbsp 지역/도서관명&nbsp</td>
                </tr>
                <tr>
                    <td rowspan="5"> 출력값</td>
                    <td>&nbsp event.name &nbsp</td>
                    <td>&nbsp 행사명&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp event.code &nbsp</td>
                    <td>&nbsp 장르 명&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp event.begindate &nbsp</td>
                    <td>&nbsp 행사 시작 날짜&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp event.enddate &nbsp</td>
                    <td>&nbsp 행사 종료 날짜 &nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp event.place &nbsp</td>
                    <td>&nbsp 행사 장소&nbsp</td>
                </tr>
            </table>
        </div>
    </div>
    </div>
    </div>
</section> <!-- /#about -->


<section id="position">
    <div class="container">
        <div class="row">
            <h3>- 도서 검색 API -</h3>
            <input class="btn btn-primary mybtn" onclick="location='api/xml/book/자바'" value="XML"/>
            <h4>네이버에서 제공하는 네이버에서 검색 가능한 모든 책을 검색하여 정보를 제공하여주는 API이다.</h4>
            <h5><a href="http://wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/book/자바">(해당 URL : wsc001.ap-northeast-2.elasticbeanstalk.com/api/xml/book/자바)</a></h5>
            <table class="table table-striped table-bordered table-hover">
                    <tr>
                        <td>&nbsp 구분 &nbsp</td>
                        <td>&nbsp 변수명 &nbsp</td>
                        <td>&nbsp 사용 &nbsp</td>
                    </tr>
                    <tr>
                        <td rowspan="1"> 입력값</td>
                        <td>&nbsp keyword &nbsp</td>
                        <td>&nbsp 검색어 &nbsp</td>
                    </tr>
                    <tr>
                        <td rowspan="8"> 출력값</td>
                        <td>&nbsp book.image &nbsp</td>
                        <td>&nbsp 책 이미지&nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.title &nbsp</td>
                        <td>&nbsp 책 제목&nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.author &nbsp</td>
                        <td>&nbsp 저자 &nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.price &nbsp</td>
                        <td>&nbsp 가격 &nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.discount &nbsp</td>
                        <td>&nbsp 할인 가격 &nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.publisher &nbsp</td>
                        <td>&nbsp 출판사 &nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.pubdate &nbsp</td>
                        <td>&nbsp 출판일 &nbsp</td>
                    </tr>
                    <tr>
                        <td>&nbsp book.description &nbsp</td>
                        <td>&nbsp 설명 &nbsp</td>
                    </tr>
                </table>
        </div>
    </div>
</section> <!-- /#about -->



