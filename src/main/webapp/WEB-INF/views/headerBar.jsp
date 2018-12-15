<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="top-bar" class="navbar-fixed-top animated-header">
    <div class="container">
        <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <div class="navbar-brand">
                <a href="/">
                    <img src="/resources/bootstrap/images/logo.PNG" alt="">
                </a>
            </div>
            <!-- /logo -->
        </div>
        <!-- main menu -->
        <nav class="collapse navbar-collapse navbar-right" role="navigation">
            <div class="main-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <sec:authorize access="isAuthenticated()">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Service <span class="caret"></span></a>
                        <div class="dropdown-menu">
                            <ul>
                                <li><a href="/bookList.do">도서 검색</a></li>
                                <li><a href="/service/library/list.do">도서관 위치</a></li>
                                <li><a href="/service/library/event.do">문화행사 및 강좌</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="/about">about</a>
                    </li>
                    </sec:authorize>
                    <li>
                        <sec:authorize access="isAnonymous()">
                            <a href="/user/signin">SIGNIN</a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <a href="/user/signout">SIGNOUT</a>
                        </sec:authorize>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- /main nav -->
    </div>
</header>