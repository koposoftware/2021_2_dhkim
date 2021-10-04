<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Team| Aievari</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- favicon -->
<!-- <link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico"> -->

<!-- all css here -->

   <%--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/bootstrap.min.css"> --%>
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/font-awesome.min.css">
   
   
  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/animate.css">
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/normalize.css">

   
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/jquery.dataTables.min.css">
   
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/style.css">
  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/responsive.css">
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- owl.carousel css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.transitions.css">
<!-- Animate css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<!-- meanmenu css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/meanmenu.min.css">
<!-- font-awesome css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<!-- magnific css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- responsive css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/third/css/feather.css">
<!-- modernizr css -->
<script
	src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap js -->
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<!-- stellar js -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
<!-- magnific js -->
<script
	src="${pageContext.request.contextPath}/resources/js/magnific.min.js"></script>
<!-- wow js -->
<script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
<!-- meanmenu js -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.meanmenu.js"></script>
<!-- Form validator js -->
<script
	src="${pageContext.request.contextPath}/resources/js/form-validator.min.js"></script>
<!-- plugins js -->
<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
<!-- main js -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
 <%--  <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/vendor/jquery-1.12.4.min.js"></script> --%>
  
    <%-- <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/bootstrap.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/counterup-active.js"></script>
    <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/data-table/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/data-table/data-table-act.js"></script>
     <script src="${pageContext.request.contextPath}/resources/green-horizotal/js/main.js"></script>
 
    
    
      <script src="${pageContext.request.contextPath}/resources/third/js/popper.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/third/js/moment.min.js"></script>
     <script src="${pageContext.request.contextPath}/resources/third/js/simplebar.min.js"></script>
</head>
<body>

	<!--[if lt IE 8]>
			<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
		<![endif]-->

	<div id="preloader"></div>
	<header class="header-one">
		<!-- Start top bar -->
		<div class="topbar-area fix hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="topbar-left"></div>
					</div>
					<div class=" col-md-6 col-sm-6">
						<div class="topbar-right">
							<div class="top-social"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End top bar -->
		<!-- header-area start -->
		<div id="sticker" class="header-area hidden-xs">
			<div class="container">
				<div class="row">

					<div class="col-md-12 col-sm-12">
						<div class="row">

							<!-- logo start -->
							<div class="col-md-3 col-sm-3">
								<div class="logo" align="center">
									<a href="${pageContext.request.contextPath}"">
									<img src="${pageContext.request.contextPath}/resources/img/logo/hanalogo.png" style="position:absolute;top:-13px;max-width:28%" ></a>
									<div>
										<!-- Brand -->
										<a class="navbar-brand page-scroll white-logo"
											href="index-2.html"> <img src="img/logo/logo3.png" alt="">
										</a> <a class="navbar-brand page-scroll black-logo"
											href="index-2.html"> <img src="img/logo/logo.png" alt="">
										</a>
									</div>
								</div>
								<!-- logo end -->
							</div>
							<div class="col-md-9 col-sm-9">
								<div class="header-right-link">
									<!-- search option end -->

									<c:if test="${empty userVO}">
										<a class="s-menu"
											href="${pageContext.request.contextPath}/login">Login</a>
									</c:if>
									<c:if test="${not empty userVO}">
										<a class="s-menu"
											href="${pageContext.request.contextPath}/logout">Logout</a>
									</c:if>
								</div>
								
								<!-- mainmenu start -->
								<nav class="navbar navbar-default">
									<div class="collapse navbar-collapse" id="navbar-example">
										<div class="main-menu">
											<ul class="nav navbar-nav navbar-right">
												
												<li><a class="pages"
													href="${pageContext.request.contextPath}/waggle">하나팔로우</a>
													<ul class="sub-menu">
                                                            <li><a href="${pageContext.request.contextPath}/waggle/join">가입하기</a></li>
                                                             <li><a href="${pageContext.request.contextPath}/waggle/ranking">랭킹확인</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/waggle/coupon">충전 및 교환</a></li>

                                                        </ul></li>
												<li><a class="pages">관심</a>
												<ul class="sub-menu">
                                                            <li><a href="${pageContext.request.contextPath}/like/company">관심 종목</a></li>
                                                             <li><a href="${pageContext.request.contextPath}/like/follow">관심 유저</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/like/port/select">관심 포트폴리오</a></li>

                                                        </ul>
												
											
												<li><a class="pages"
													href="${pageContext.request.contextPath}/stocklist">종목조회</a></li>
												
												<li><a class="pages"
													href="${pageContext.request.contextPath}/myasset">내 자산</a>
												</li>

											</ul>
										</div>
									</div>
								</nav>
								<!-- mainmenu end -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header-area end -->

	</header>