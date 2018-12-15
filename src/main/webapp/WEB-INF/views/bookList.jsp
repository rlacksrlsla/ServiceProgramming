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
    Global Page Section Start
================================================== -->
<section class="global-page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <h2>Service</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="/">
                                <i class="ion-ios-home"></i>
                                Home
                            </a>
                        </li>
                        <li class="active">도서 검색</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section><!--/#Page header-->

<%--북 검사 섹션--%>
<section>
    <div class="container" style="margin-top: 1cm">
        <center>
            <form class="form-inline" action="bookList.do">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="책 이름" name="keyword">
                    </div>
                    <input class="btn btn-primary" type="submit" value="검색"/>
                </div>
            </form>
        </center>
        <table class="table table-striped table-bordered table-hover" width="100%">
            <thead>
            <tr>
                <th></th>
                <th>책 제목</th>
                <th>작 가</th>
                <th>책 가격</th>
                <th>할인 가격</th>
                <th>출판사</th>
                <th>출판일</th>
                <th>설 명</th>
            </tr>
            </thead>
            <c:forEach items="${bookList}" var="b">
                <tr class="success">
                    <td>
                        <center><img src="${b.image}"></center>
                    </td>
                    <td width="10%">"${b.title}"</td>
                    <td width="7%">${b.author}</td>
                    <td width="7%">${b.price }</td>
                    <td width="8%">${b.discount }</td>
                    <td width="7%">${b.publisher }</td>
                    <td width="7%">${b.pubdate }</td>
                    <td>${b.description}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</section>

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
<%--<html>--%>
<%--<head>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">--%>
<%--<title>Insert title here</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center>--%>
<%--<form action="bookList.do">--%>
<%--<input type="text" name="keyword" >--%>
<%--<input type="submit" value="검색">--%>
<%--</form>--%>
<%--</center>--%>
<%--<table>--%>
<%--<tr>--%>
<%--<td colspan="7" width="100%" bgcolor="pink"></td>--%>
<%--</tr>--%>
<%--<c:forEach items="${bookList}" var ="b">--%>
<%--<tr>--%>
<%--<td rowspan="2"><img src="${b.image}"></td>--%>
<%--<td rowspan="4" width="800">"${b.title}"</td>--%>
<%--<td width="200">${b.author}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td width="200">${b.price }</td>--%>
<%--<td width="200">${b.discount }</td>--%>
<%--<td width="200">${b.publisher }</td>--%>
<%--<td width="200">${b.pubdate }</td>--%>
<%--<td width="200">${b.isbn }</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td colspan="7">${b.description}</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td colspan="7" width="100%" bgcolor="pink"></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>