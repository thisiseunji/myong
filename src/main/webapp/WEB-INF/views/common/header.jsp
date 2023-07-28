<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.png" rel="icon">
<link href="<%=request.getContextPath()%>/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">

<!-- font-awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Vendor CSS Files -->
<link href="<%=request.getContextPath()%>/resources/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<!-- tempusdominus -->
<!-- Popperjs -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.2/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<!-- Tempus Dominus JavaScript -->
<script src="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/js/tempus-dominus.js" crossorigin="anonymous"></script>
<!-- Tempus Dominus Styles -->
<link href="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/css/tempus-dominus.css" rel="stylesheet" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">


<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- formatting -->

<!-- =======================================================
* Template Name: Eterna
* Updated: Mar 10 2023 with Bootstrap v5.2.3
* Template URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->

<title>header</title>
</head>
<body>
  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">myong@google.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+82 010 0000 0000</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>사
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1><a href="index.html">프로젝트 : 묭</a></h1>
        <!-- <a href="<%=request.getContextPath()%>"><img src="<%=request.getContextPath()%>/resources/img/logo.png" alt="" class="img-fluid"></a> -->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active" href="<%=request.getContextPath()%>/appointment">예약</a></li>
          <li><a href="<%=request.getContextPath()%>/designer">디자이너</a></li>
          <li class="dropdown"><a href="<%=request.getContextPath()%>/style/list"><span>서비스</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown"><a href="<%=request.getContextPath()%>/style/list?c1=hair"><span>헤어</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=short">숏</a></li>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=medium">미디움</a></li>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=long">롱</a></li>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=color">컬러</a></li>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=perm">펌</a></li>
                  <li><a href="<%=request.getContextPath()%>/style/list?c1=hair&c2=dry">스타일링</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="서비스준비중 페이지"><span>메이크업</span> <i class="bi bi-chevron-right"></i></a>
             	<ul>
                  <li><a href="#">면접</a></li>
                  <li><a href="#">웨딩</a></li>
                  <li><a href="#">방송</a></li>
                </ul>
              </li>
              <li><a href="#">네일</a></li>
              <li><a href="#">미용상품</a></li>
            </ul>
          </li>
          <li><a href="contact.html">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
</body>
</html>