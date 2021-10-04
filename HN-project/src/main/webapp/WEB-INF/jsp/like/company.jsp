<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
@font-face {
	font-family: 'BMJUA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@
keyframes done { 70% {
	transform: scale(1.2)
}

150








%
{
transform








:








scale






(








1








)








}
}
html {
	font-family: BMJUA
}

*, ::before, ::after {
	box-sizing: border-box
}

body, div, button, h1 {
	font: inherit;
	padding: 0;
	margin: 0;
	border: 0;
	outline: 0;
	background: 0
}

#title {
	font-size: 3rem;
	margin: 2rem 0
}

#wrapper {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 10px
}

#numbers {
	display: flex;
	margin-bottom: 20px;
	padding: 30px;
	border-radius: 20px;
}

#numbers .ball {
	width: 100%;
	height: 80px;
	margin-right: 10px;
	line-height: 80px;
	font-size: 30px;
	border-radius: 50%;
	text-align: center;
}

#numbers .ball.done {
	animation: done .5s linear
}

#numbers .ball:last-child {
	margin-right: 0
}

#btn {
	position: relative;
	display: block;
	padding: 1rem 2.5rem 1.6rem;
	background: #fff;
	color: #666;
	border: 2px solid #666;
	border-radius: 6px;
	overflow: hidden;
	transition: .5s;
	user-select: none
}

#btn:hover {
	padding: 1rem 2.5rem 1rem;
	margin-top: .6rem;
	background: #999;
	color: #fff
}

#btn::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	display: block;
	height: .6rem;
	width: 100%;
	background-image: repeating-linear-gradient(45deg, #666, #666 1px, transparent 2px,
		transparent 5px);
	border-top: 1px solid #666;
	transition: .5s
}

#btn:hover::after {
	transform: translateY(.6rem)
}

#btn.hide {
	transform: scale(0)
}

@media screen and (max-width: 800px) {
	#numbers {
		flex-direction: column;
		align-items: center
	}
	#numbers .ball {
		margin-right: 0;
		margin-bottom: 10px
	}
	#numbers .ball:last-child {
		margin-bottom: 0
	}
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/green-horizotal/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jqbar.css" />
<!doctype html>
<html class="no-js" lang="en">

<!-- 
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script> -->


<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script>
<!-- Mirrored from rockstheme.com/rocks/aievari-live/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Mar 2020 08:27:42 GMT -->
<jsp:include page="../header.jsp" />
<!-- header end -->
<!-- Start breadcumb Area -->
<div class="page-area">
	<div class="breadcumb-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="breadcrumb text-center">

					<ul class="breadcrumb-bg">
						<li>관심</li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End breadcumb Area -->
<!-- Start Slider Area -->
<div class="invest-area bg-color page-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-headline text-center">

					<h3>관심 기업</h3>
					<p>
						<strong>${wj.nickname}</strong>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="blog-area fix page-padding">
		<div class="container">
			<div class="row">
				<div class="blog-sidebar-right">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<div class="row">
							<div class="blog-left-content">
								<!-- Start single blog -->
								<br> <br>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="widget-tabs-list">
										<div class="single-blog ">
											<div class="blog-image">

												<div class="tab-hd"></div>
												<div class="sidget-tabs-list">
									
<hr>
											
																		


													<div class="tab-content tab-custom-st">
													<div style="text-align:right">
														<strong>	업종 선택 : </strong>
													
													 
													 <select  class="chosen-single" style="float:middle;height:40px;border-radius: 4px" onchange="stocktype(this.value)"  name="money"  id="select">
													 <option value="전체" selected>전체</option>
													  <option value="부동산">부동산</option>
													<option value="제약" >제약</option>
													<option value="섬유,의복" >섬유,의복</option>
													<option value="반도체 장비" >반도체장비</option>
													<option value="음식료품" >음식료품</option>
													<option value="게임 소프트웨어" >게임소프트웨어</option>
													<option value="기계" >기계</option>
													<option value="용기 및 포장" >용기 및 포장</option>
													<option value="운수창고" >운수창고</option>
													<option value="개인생활용품" >개인생활용품</option>
													<option value="화학" >화학</option>
													<option value="디스플레이 부품" >디스플레이 부품</option>
													<option value="2차전지" >2차전지</option>
										<option value="건축" >건축</option>
													<option value=></option>
													 
													 </select> 
													 </div>
											
															<br> <br>
															<div id="company2">
														<div class="support-services-red" style="width:100%">
													
																<div class="left-head-blog right-side" >
	
																	<table class="table table-hover">
																		<thead >
																			<tr>
																				
																				<th style="text-align: center">종목명</th>
																				<th style="text-align: center">현재가(원)</th>
																				<th style="text-align: center">전일대비(원)</th>
																				<th style="text-align: center">전일비(%)</th>
																				<th style="text-align: center">삭제</th>
																				<th style="text-align: center">주문</th>
						</tr>
																		</thead>
																		<tbody>
																			<c:forEach items="${requestScope.companylist}"
																				var="companylist" varStatus="loop">
																				<tr>
																					<td>${companylist.stock_name}</td>
																					<td style="text-align: center">${companylist.stock_close}</td>
																					<td style="text-align: center">${companylist.stock_diff}
																					</td>
																					<td style="text-align: center">
																					<fmt:formatNumber value="${companylist.y_diff}" pattern="#.##" />%</td>
																					
																					<td style="text-align: center">
																					<a data-id="${companylist.stock_code}"
																						class="ialog2">삭제</a></td>
																					<td><div class="price-btn blue">
													<a class="blue"
														href="${pageContext.request.contextPath}/stock/buysell/${companylist.stock_code}">주문</a>
												</div></td>
																				</tr>
																			</c:forEach>
																		</tbody>
																	</table>
																</div>
																		<br>

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
						
					<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<div
							class="statistic-right-area notika-shadow mg-tb-30 sm-res-mg-t-0" style="padding-bottom: 0;
    padding-top: 0;">
							<div class="left-blog blog-category">
								<h4>정보</h4>
								<p></p>
							</div>


							
				
							<div class="past-statistic-an">
								<div class="past-statistic-ctn">
									<h3>
										<a href="${pageContext.request.contextPath}/like/follow"
											style="color: #646464"><i class="fa fa-building"
											style="color: yellowgreen"></i>&nbsp; &nbsp;<span class="counter"
											id="company">${company}</span> </a>
									</h3>
									<a href="${pageContext.request.contextPath}/like/follow"
										style="color: #646464"><p>관심 기업</p></a>
								</div>

							</div>

						</div>

						
						<div class="recent-items-wp notika-shadow sm-res-mg-t-30">
							<div class="rc-it-ltd">
								<div class="recent-items-ctn">
									<div class="left-blog blog-category">
										<h4>관심기업 순위</h4>

									</div>
								</div>
								<!-- <div class="recent-items-inn"> -->
								<table class="table table-inner table-vmiddle"
									style="boreder: none">
									<thead>
										<tr>
											<th text-alingn="center" style="width: 25%">순위</th>
											<th text-alingn="center" style="width: 50%">종목 명</th>
											<th>관심 수</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${requestScope.rank}" var="listbuy"
											varStatus="status">
											<tr>
												<td><c:if test="${status.count eq 1}">
														<i class="ti-crown" style="color: burlywood"></i>
													</c:if> <c:if test="${status.count eq 2}">
														<i class="ti-crown" style="color: darkgrey"></i>
													</c:if> <c:if test="${status.count eq 3}">
														<i class="ti-crown" style="color: brown"></i>
													</c:if> ${status.count}</td>
												<td>${listbuy.stock_name}</td>
												<td>${listbuy.count}명</td>

											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>


				</div>
			</div>


		</div>
	</div>
</div>

</div>
<!-- End row -->


<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->


</body>

<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/jquery.knob.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/jquery.appear.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/knob-active.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/flot-active.js""></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/curvedLines.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.resize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.js"></script>


<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/sparkline-active.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/jquery.sparkline.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/jquery.counterup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/counterup-active.js"></script>



<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/charts/Chart.js"></script>


<script>



function stocktype(param){

	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/like/companyfind",
		data: {stock_type :param},
		dataType: 'text',
		success : function(result) {
			let html = $('<div>').html(result)
			let content =html.find('div#company1');
			
			let contents =content.html();	
		
			$("#company2").html(contents);
			
		 
		}
	}) 
}

function deletelike(param){
	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/company/delete",
		data: {stock_code :param},
		dataType: 'text',
		success : function(result) {
			alert('관심기업 삭제 완료')
			let html = $('<div>').html(result)
			let content =html.find('div#company3');
			
			let contents =content.html();	
			
			$("#company2").html(contents);
			 var real= $('#company').text()
		
			 $('#company').text(real-1)  
		 
		}
	}) 	
	
	}
	
	
	


$(".ialog2").click(function(){ //
	
	var stock_code=$(this).data('id')

	 deletelike(stock_code); 
})



	
	

	
</script>

<script type="text/JavaScript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-barcode.js"></script>
</html>