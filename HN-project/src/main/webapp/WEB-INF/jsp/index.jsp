<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- Mirrored from rockstheme.com/rocks/aievari-live/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Mar 2020 08:27:43 GMT -->
<jsp:include page="header.jsp"/>
<script>
$(document).ready(function() {
	
			$('#paymodal').modal('show')
			
		});
</script>
		
<!-- mobile-menu-area start -->
		<div class="mobile-menu-area hidden-lg hidden-md hidden-sm">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mobile-menu">
							<div class="logo">
								<a href="index-2.html"><img
									src="${pageContext.request.contextPath}/resources/img/logo/logo.png"
									alt="" /></a>
							</div>
							<nav id="dropdown">
								<ul>
									<li><a class="pages" href="#">Home</a>
								
									<li><a href="about.html">About us</a></li>
									<li><a href="investment.html">Investment</a></li>
									<li><a class="pages" href="#">Pages</a>
										<ul class="sub-menu">
											<li><a href="team.html">team</a></li>
											<li><a href="faq.html">FAQ</a></li>
											<li><a href="review.html">Reviews</a></li>
											<li><a href="login.html">Login</a></li>
											<li><a href="signup.html">Register</a></li>
										</ul></li>
									<li><a class="pages" href="#">Blog</a>
										<ul class="sub-menu">
											<li><a href="blog.html">Blog grid</a></li>
											<li><a href="blog-sidebar.html">Blog Sidebar</a></li>
											<li><a href="blog-details.html">Blog Details</a></li>
										</ul></li>
									<li><a href="contact.html">contacts</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- mobile-menu-area end -->
	</header>
	<!-- header end -->
	<!-- Start Slider Area -->
	<div class="intro-area">
		<div class="main-overly"></div>
		<%-- <div class="intro-carousel">
			<div class="intro-content">
				
				<div class="slider-content">
					<div class="display-table">
						<div class="display-table-cell">
							<div class="container">
								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<!-- Start Slider content -->
										<div class="slide-content text-center">
											<h2 class="title2">내안의 투자플랫폼 와글와글 </h2>
											<div class="layer-1-3">
												<a href="${pageContext.request.contextPath}/waggle" class="ready-btn left-btn">시작하기</a>
											</div>
										</div>
										<!-- End Slider content -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> --%>
			<div class="intro-content">
				<div class="slider-images">
					<img
						src="${pageContext.request.contextPath}/resources/img/slider/h2.jpg"
						alt="">
				</div>
				<div class="slider-content">
					<div class="display-table">
						<div class="display-table-cell">
							<div class="container">
								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<!-- Start Slider content -->
										<div class="slide-content text-center">
											<h2 class="title2">투자자들의<br> 포트폴리오 공유</h2>
											<div class="layer-1-3">
												<a href="${pageContext.request.contextPath}/waggle" class="ready-btn left-btn">시작하기</a>
											</div>
										</div>
										<!-- End Slider content -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Slider Area -->
	<!-- Start Count area -->
	<div class="counter-area fix area-padding-2">
		<div class="container">
			<!-- Start counter Area -->
			<div class="row">
				<div class="fun-content">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<!-- fun_text  -->
						<div class="fun_text">
							<span class="counter-icon"><i class="flaticon-035-savings"></i></span>
							<span class="counter">$5974544</span>
							<h4>Total Deposited</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<!-- fun_text  -->
						<div class="fun_text">
							<span class="counter-icon"><i class="flaticon-034-reward"></i></span>
							<span class="counter">2209</span>
							<h4>Total Members</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<!-- fun_text  -->
						<div class="fun_text">
							<span class="counter-icon"><i class="flaticon-016-graph"></i></span>
							<span class="counter">$3974544</span>
							<h4>Total Payments</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<!-- fun_text  -->
						<div class="fun_text">
							<span class="counter-icon"><i class="flaticon-043-world"></i></span>
							<span class="counter">80</span>
							<h4>World Country</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Count area -->
	<!-- Start Invest area -->
	<div class="invest-area bg-color area-padding-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>The best investment plan</h3>
						<p>Help agencies to define their new business objectives and
							then create professional software.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="pricing-content">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">5%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">10 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $100</li>
								<li class="check">Maximam Invest : $1000</li>
								<li class="check">Avarage Monthly : 50%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">15%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">30 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $10000</li>
								<li class="check">Avarage Monthly :100%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<div class="top-price-inner">
								<span class="base">Popular</span>
								<div class="rates">
									<span class="prices">50%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">45 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $50000</li>
								<li class="check">Avarage Monthly : 200%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<span class="base">Best sale</span>
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">100%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">60 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $50000</li>
								<li class="check">Avarage Monthly : 250%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">115%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">70 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $50000</li>
								<li class="check">Avarage Monthly : 300%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<span class="base">Best plan</span>
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">125%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">80 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $70000</li>
								<li class="check">Avarage Monthly :325%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">150%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">90 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $50000</li>
								<li class="check">Avarage Monthly : 350%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="pri_table_list">
							<span class="base">Top plan</span>
							<div class="top-price-inner">
								<div class="rates">
									<span class="prices">200%</span><span class="users">Daily</span>
								</div>
								<span class="per-day">100 days</span>
							</div>
							<ol class="pricing-text">
								<li class="check">Minimam Invest : $1000</li>
								<li class="check">Maximam Invest : $50000</li>
								<li class="check">Avarage Monthly : 400%</li>
							</ol>
							<div class="price-btn blue">
								<a class="blue" href="#">Deposite</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Invest area -->
	<!-- Start Support-service Area -->
	<div class="support-service-area fix area-padding-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>Why choose investment plan</h3>
						<p>Help agencies to define their new business objectives and
							then create professional software.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="support-all">
					<!-- Start About -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services wow ">
							<a class="support-images" href="#"><i
								class="flaticon-023-management"></i></a>
							<div class="support-content">
								<h4>Expert management</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
					<!-- Start About -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services ">
							<a class="support-images" href="#"><i
								class="flaticon-036-security"></i></a>
							<div class="support-content">
								<h4>Secure investment</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
					<!-- Start services -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services ">
							<a class="support-images" href="#"><i
								class="flaticon-003-approve"></i></a>
							<div class="support-content">
								<h4>Registered company</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
					<!-- Start services -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services">
							<a class="support-images" href="#"><i
								class="flaticon-042-wallet"></i></a>
							<div class="support-content">
								<h4>Instant withdrawal</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
					<!-- Start services -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services ">
							<a class="support-images" href="#"><i
								class="flaticon-032-report"></i></a>
							<div class="support-content">
								<h4>Verified security</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
					<!-- Start services -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="support-services">
							<a class="support-images" href="#"><i
								class="flaticon-024-megaphone"></i></a>
							<div class="support-content">
								<h4>Live customer support</h4>
								<p>Replacing a maintains the amount of lines. When replacing
									a selection. help agencies to define their new business
									objectives and then create</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Support-service Area -->
	<!-- Start Self-area -->
	<div class="self-area area-padding">
		<div class="container">
			<div class="row">
				<!-- column end -->
				<div class="col-md-6 col-sm-6 col-xs-12"></div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="self-content">
						<h4>An investment multi-national firm is a invest money of
							one or more experts. Provides more profite, We help your satele
							to future life and then create the road. Grow Money speedly
							without any risk.</h4>
						<span class="talk-text">Alex ferneld, CEO</span>
					</div>
				</div>
				<!-- column end -->
			</div>
		</div>
	</div>
	<!-- End Self-area -->
	<!-- Start Work proses Area -->
	<div class="work-proses fix bg-color area-padding-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>Referral bonus level</h3>
						<p>Help agencies to define their new business objectives and
							then create professional software.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="row">
						<div class="work-proses-inner text-center">
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="single-proses">
									<div class="proses-content">
										<div class="proses-icon point-blue">
											<span class="point-view">01</span> <a href="#"><i
												class="ti-briefcase"></i></a>
										</div>
										<div class="proses-text">
											<h4>Level 01 instant 30% commission</h4>
										</div>
									</div>
								</div>
							</div>
							<!-- End column -->
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="single-proses">
									<div class="proses-content">
										<div class="proses-icon point-orange">
											<span class="point-view">02</span> <a href="#"><i
												class="ti-layers"></i></a>
										</div>
										<div class="proses-text">
											<h4>Level 02 instant 20% commission</h4>
										</div>
									</div>
								</div>
							</div>
							<!-- End column -->
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="single-proses last-item">
									<div class="proses-content">
										<div class="proses-icon point-green">
											<span class="point-view">03</span> <a href="#"><i
												class="ti-bar-chart-alt"></i></a>
										</div>
										<div class="proses-text">
											<h4>Level 03 instant 10% commission</h4>
										</div>
									</div>
								</div>
							</div>
							<!-- End column -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Work proses Area -->
	<!--Start payment-history area -->
	<div class="payment-history-area bg-color fix area-padding-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>Deposite and withdrawals history</h3>
						<p>Help agencies to define their new business objectives and
							then create professional software.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="deposite-content">
						<div class="diposite-box">
							<h4>Last deposite</h4>
							<span><i class="flaticon-005-savings"></i></span>
							<div class="deposite-table">
								<table>
									<tr>
										<th>Name</th>
										<th>Date</th>
										<th>Amount</th>
										<th>Currency</th>
									</tr>
									<tr>
										<td>Admond sayhel</td>
										<td>Jan 02, 2020</td>
										<td>$1000</td>
										<td>Bitcoin</td>
									</tr>
									<tr>
										<td>Jonshon</td>
										<td>Dec 12, 2019</td>
										<td>$5000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Hopper</td>
										<td>Dec 22, 2019</td>
										<td>$4000</td>
										<td>Ripple</td>
									</tr>
									<tr>
										<td>Admond sayhel</td>
										<td>Jan 02, 2020</td>
										<td>$3000</td>
										<td>Bitcoin</td>
									</tr>
									<tr>
										<td>Anjel july</td>
										<td>Jan 05, 2020</td>
										<td>$500</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Lagisha</td>
										<td>Jan 12, 2020</td>
										<td>$5000</td>
										<td>Bitcoin</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="diposite-box">
							<h4>Last withdrawals</h4>
							<span><i class="flaticon-042-wallet"></i></span>
							<div class="deposite-table">
								<table>
									<tr>
										<th>Name</th>
										<th>Date</th>
										<th>Amount</th>
										<th>Currency</th>
									</tr>
									<tr>
										<td>Arnold</td>
										<td>Jan 04, 2020</td>
										<td>$1000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Jhon Abra</td>
										<td>Jan 07, 2020</td>
										<td>$6000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Lanisha</td>
										<td>Jan 13, 2020</td>
										<td>$5000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Gongales</td>
										<td>Jan 12, 2020</td>
										<td>$2000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Admond sayhel</td>
										<td>Jan 10, 2020</td>
										<td>$1000</td>
										<td>USD</td>
									</tr>
									<tr>
										<td>Remond</td>
										<td>Jan 02, 2020</td>
										<td>$3000</td>
										<td>USD</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End payment-history area -->
	<!-- Start Banner Area -->
	<div class="banner-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="banner-all area-80 text-center">
						<div class="banner-content">
							<h3>Our investment plan world wide business relations for
								development</h3>
							<a class="banner-btn" href="#">Sign up now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Banner Area -->
	<!-- Start Blog Area-->
	<div class="blog-area fix bg-color area-padding-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>Global investment plan news</h3>
						<p>Dummy text is also used to demonstrate the appearance of
							different typefaces and layouts</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog-grid home-blog">
					<!-- Start single blog -->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b1.jpg"
									alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										20 july, 2019
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										13
									</span>
								</div>
								<a href="#">
									<h4>Creative design clients response is better</h4>
								</a>
							</div>
						</div>
					</div>
					<!-- End single blog -->
					<!-- Start single blog -->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										13 may, 2018
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										16
									</span>
								</div>
								<a href="#">
									<h4>Web development is a best work in future world</h4>
								</a>
							</div>
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b2.jpg"
									alt="">
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b3.jpg"
									alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										24 april, 2019
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										07
									</span>
								</div>
								<a href="#">
									<h4>You can trust me and business with together</h4>
								</a>
							</div>
						</div>
					</div>
					<!-- End single blog -->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										28 june, 2019
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										32
									</span>
								</div>
								<a href="#">
									<h4>business man want to be benifit any way</h4>
								</a>
							</div>
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b4.jpg"
									alt="">
								</a>
							</div>
						</div>
					</div>
					<!-- End single blog -->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b5.jpg"
									alt="">
								</a>
							</div>
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										28 june, 2019
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										32
									</span>
								</div>
								<a href="#">
									<h4>business man want to be benifit any way</h4>
								</a>
							</div>
						</div>
					</div>
					<!-- End single blog -->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-meta">
									<span class="admin-type"> <i class="fa fa-user"></i>
										Admin
									</span> <span class="date-type"> <i class="fa fa-calendar"></i>
										28 june, 2019
									</span> <span class="comments-type"> <i class="fa fa-comment-o"></i>
										32
									</span>
								</div>
								<a href="#">
									<h4>business man want to be benifit any way</h4>
								</a>
							</div>
							<div class="blog-image">
								<a class="image-scale" href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/blog/b6.jpg"
									alt="">
								</a>
							</div>
						</div>
					</div>
					<!-- End single blog -->
				</div>
			</div>
			<!-- End row -->
		</div>
	</div>
	<!-- End Blog Area-->
	<!-- Start reviews Area -->
	<div class="reviews-area fix area-padding">
		<div class="container">
			<div class="row">
				<div class="reviews-top">
					<div class="col-md-5 col-sm-5 col-xs-12">
						<div class="testimonial-inner">
							<div class="review-head">
								<h3>Our customer say about our company work</h3>
								<p>The phrasal sequence of the Lorem Ipsum text is now so
									widespread and commonplace that many DTP programmes can
									generate dummy. The phrasal sequence of the Lorem Ipsum text is
									now so widespread and commonplace that many DTP programmes can
									generate dummy</p>
								<a class="reviews-btn" href="review.html">More reviews</a>
							</div>
						</div>
					</div>
					<div class="col-md-7 col-sm-7 col-xs-12">
						<div class="reviews-content">
							<!-- start testimonial carousel -->
							<div class="testimonial-carousel item-indicator">
								<div class="single-testi">
									<div class="testi-text">
										<div class="clients-text">
											<div class="client-rating">
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a> <a href="#"><i class="ti-star"></i></a>
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a>
											</div>
											<p>When replacing a multi-lined selection of text, the
												generated dummy text maintains the amount of lines. When
												replacing a selection. help agencies.</p>
										</div>
										<div class="testi-img ">
											<img
												src="${pageContext.request.contextPath}/resources/img/review/1.jpg"
												alt="">
											<div class="guest-details">
												<h4>Hamilton</h4>
												<span class="guest-rev">Clients - <a href="#">General
														customer</a></span>
											</div>
										</div>
									</div>
								</div>
								<!-- End single item -->
								<div class="single-testi">
									<div class="testi-text">
										<div class="clients-text">
											<div class="client-rating">
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a> <a href="#"><i class="ti-star"></i></a>
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a>
											</div>
											<p>When replacing a multi-lined selection of text, the
												generated dummy text maintains the amount of lines. When
												replacing a selection. help agencies.</p>
										</div>
										<div class="testi-img ">
											<img
												src="${pageContext.request.contextPath}/resources/img/review/2.jpg"
												alt="">
											<div class="guest-details">
												<h4>Angel lima</h4>
												<span class="guest-rev">Clients - <a href="#">General
														customer</a></span>
											</div>
										</div>
									</div>
								</div>
								<!-- End single item -->
								<div class="single-testi">
									<div class="testi-text">
										<div class="clients-text">
											<div class="client-rating">
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a> <a href="#"><i class="ti-star"></i></a>
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a>
											</div>
											<p>When replacing a multi-lined selection of text, the
												generated dummy text maintains the amount of lines. When
												replacing a selection. help agencies.</p>
										</div>
										<div class="testi-img ">
											<img
												src="${pageContext.request.contextPath}/resources/img/review/3.jpg"
												alt="">
											<div class="guest-details">
												<h4>Arthur Doil</h4>
												<span class="guest-rev">Clients - <a href="#">General
														customer</a></span>
											</div>
										</div>
									</div>
								</div>
								<!-- End single item -->
								<div class="single-testi">
									<div class="testi-text">
										<div class="clients-text">
											<div class="client-rating">
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a> <a href="#"><i class="ti-star"></i></a>
												<a href="#"><i class="ti-star"></i></a> <a href="#"><i
													class="ti-star"></i></a>
											</div>
											<p>When replacing a multi-lined selection of text, the
												generated dummy text maintains the amount of lines. When
												replacing a selection. help agencies.</p>
										</div>
										<div class="testi-img ">
											<img
												src="${pageContext.request.contextPath}/resources/img/review/4.jpg"
												alt="">
											<div class="guest-details">
												<h4>Gabriel Hank</h4>
												<span class="guest-rev">Clients - <a href="#">General
														customer</a></span>
											</div>
										</div>
									</div>
								</div>
								<!-- End single item -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End reviews Area -->
	<!-- Start FAQ area -->
	<div class="faq-area bg-color area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3>Some important FAQ</h3>
						<p>Help agencies to define their new business objectives and
							then create professional software.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- Start Column Start -->
				<div class="col-md-7 col-sm-6 col-xs-12">
					<div class="company-faq">
						<div class="faq-full">
							<div class="faq-details">
								<div class="panel-group" id="accordion">
									<!-- Panel Default -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="check-title">
												<a data-toggle="collapse" class="active"
													data-parent="#accordion" href="#check1"> <span
													class="acc-icons"></span>How to successful our mission and
													vision
												</a>
											</h4>
										</div>
										<div id="check1" class="panel-collapse collapse in">
											<div class="panel-body">
												<p>When replacing a multi-lined selection of text, the
													generated dummy text maintains the amount of lines. When
													replacing a selection of text within a single line, the
													amount of words is roughly being maintained.</p>
											</div>
										</div>
									</div>
									<!-- End Panel Default -->
									<!-- Panel Default -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="check-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#check2"> <span class="acc-icons"></span>Clients
													satisfaction make company Value.
												</a>
											</h4>
										</div>
										<div id="check2" class="panel-collapse collapse">
											<div class="panel-body">
												<p>When replacing a multi-lined selection of text, the
													generated dummy text maintains the amount of lines. When
													replacing a selection of text within a single line, the
													amount of words is roughly being maintained.</p>
											</div>
										</div>
									</div>
									<!-- End Panel Default -->
									<!-- Panel Default -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="check-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#check3"> <span class="acc-icons"></span>World
													class creative design and development firm.
												</a>
											</h4>
										</div>
										<div id="check3" class="panel-collapse collapse ">
											<div class="panel-body">
												<p>When replacing a multi-lined selection of text, the
													generated dummy text maintains the amount of lines. When
													replacing a selection of text within a single line, the
													amount of words is roughly being maintained.</p>
											</div>
										</div>
									</div>
									<!-- End Panel Default -->
									<!-- Panel Default -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="check-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#check4"> <span class="acc-icons"></span>We are
													the best online flatform
												</a>
											</h4>
										</div>
										<div id="check4" class="panel-collapse collapse ">
											<div class="panel-body">
												<p>When replacing a multi-lined selection of text, the
													generated dummy text maintains the amount of lines. When
													replacing a selection of text within a single line, the
													amount of words is roughly being maintained.</p>
											</div>
										</div>
									</div>
									<!-- End Panel Default -->
									<!-- Panel Default -->
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="check-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#check5"> <span class="acc-icons"></span>Clients
													satisfaction make company Value.
												</a>
											</h4>
										</div>
										<div id="check5" class="panel-collapse collapse">
											<div class="panel-body">
												<p>When replacing a multi-lined selection of text, the
													generated dummy text maintains the amount of lines. When
													replacing a selection of text within a single line, the
													amount of words is roughly being maintained.</p>
											</div>
										</div>
									</div>
									<!-- End Panel Default -->
								</div>
							</div>
							<!-- End FAQ -->
						</div>
					</div>
				</div>
				<!-- End Column -->
				<div class="col-md-5 col-sm-6 col-xs-12">
					<div class="faq-content">
						<h4>Have a any qustion?</h4>
						<div class="faq-quote">
							<div class="row">
								<form id="contactForm" method="POST"
									action="http://rockstheme.com/rocks/aievari-live/contact.php"
									class="contact-form">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<input type="text" id="name" class="form-control"
											placeholder="Name" required
											data-error="Please enter your name">
										<div class="help-block with-errors"></div>
										<input type="email" class="email form-control" id="email"
											placeholder="Email" required
											data-error="Please enter your email">
										<div class="help-block with-errors"></div>
										<input type="text" id="msg_subject" class="form-control"
											placeholder="Subject" required=""
											data-error="Please enter your message subject">
										<div class="help-block with-errors"></div>
									</div>
									<div class="col-md-12 col-sm-12 col-xs-12">
										<textarea id="message" rows="7" placeholder="Massage"
											class="form-control" required data-error="Write your message"></textarea>
										<div class="help-block with-errors"></div>
										<button type="submit" id="submit" class="quote-btn">Submit</button>
										<div id="msgSubmit" class="h3 text-center hidden"></div>
										<div class="clearfix"></div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- End Column -->
			</div>
		</div>
	</div>
	<!-- End FAQ area -->
	<!--  <div class="modal fade" id="paymodal">
				<div class="modal-dialog modal-m">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title"> 하트 증가 알림</h4>

							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
							<div class="modal-body">
								<p style="text-align: center">
									
					
									증가한 하트 : <strong>${cheart.num*100}</strong>개<br>
									포트폴리오 열람 수 : ${cheart.num} 명<br>
								</p>
								
							</div>


							<div class="modal-footer">

								
						
						<button id="button-modal2" data-dismiss="modal">닫기</button>
					</div>
				</div>
</div>
</div> -->
		
	<!--  Footer Area -->
	<jsp:include page="footer.jsp"/>

	<!-- all js here -->

	<!-- jquery latest version -->
	
</body>


</html>