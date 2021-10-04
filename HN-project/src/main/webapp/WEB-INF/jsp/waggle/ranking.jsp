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
						<li>하나팔로우</li>

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

					<h3>랭킹조회</h3>

				</div>
			</div>
		</div>
	</div>
	<div class="blog-area fix page-padding">
		<div class="container">
			<div class="row">
				<div class="blog-sidebar-right">
					<div class="col-md-12 col-sm-12 col-xs-12">
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
													<ul class="nav nav-tabs">

														<li class="active"><a data-toggle="tab" href="#home"
															style="width: 150; text-align: center; color: #646464;">
																수익률 </a></li>
														<li class><a data-toggle="tab" href="#menu1"
															aria-epended="false"
															style="width: 150; text-align: center; color: #646464;">
																거래금액 </a></li>


													</ul>
													<div class="tab-content tab-custom-st">
														<div class="tab-pane fade in active " id="home">
															<div class="tab-ctn"></div>
															<br> <br>
															<div class="left-head-blog right-side">
																<h5>수익률 순위</h5>
																<table class="table table-striped">
																	<thead style="background-color: aliceblue;"
																		class="thead-dark">
																		<tr style="text-align:center">
																			<th style="text-align:center">순위</th>
																			<th style="text-align:center">닉네임</th>
																			<th style="text-align:center">하트 수량</th>
																			<th style="text-align:center">수익률</th>
																			<th style="text-align:center">총 거래 금액</th>
																			<th style="text-align:center">포트폴리오</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach items="${requestScope.ranklist}"
																			var="ranklist" varStatus="loop">
																			<tr style="text-align:center">


																				<td style="text-align:center;width:10%"><c:if
																						test="${ranklist.rank eq 1}">
																						<i class="ti-crown" style="color: burlywood"></i>
																					</c:if> <c:if test="${ranklist.rank eq 2}">
																						<i class="ti-crown" style="color: darkgrey"></i>
																					</c:if> <c:if test="${ranklist.rank eq 3}">
																						<i class="ti-crown" style="color: brown"></i>
																					</c:if> ${ranklist.rank}</td>

																				<td style="text-align:center;width:20%">${ranklist.nickname}</td>
																				<td style="text-align:center;width:10%">${ranklist.hart}</td>
																				<td style="text-align:center;width:10%"><fmt:formatNumber
																						value="${ranklist.rate}" pattern="#.##" />%</td>
																				<td style="text-align:center;width:20%"><fmt:formatNumber
																						value="${ranklist.stockvalue}"
																						pattern="###,###,###,###" /></td>
																				<td style="text-align:center;width:15%"><a href="#paymodal"
																					data-id=" ${ranklist.rank}"
																					data-value="${ranklist.no}" data-toggle="modal"
																					class="move">확인</a></td>
																			</tr>
																		</c:forEach>
																	</tbody>
																</table>
																
																</div>
																<div align="center" class="basic-tb-hd">
																	<br> <br>
																	<table class="table table-striped">
																		<thead>

																			<tr class="warning">
																				<th style="text-align:center;width:10%">${mylist.rank}</th>
																				<th style="text-align:center;width:20%">${mylist.nickname}</th>
																				<th style="text-align:center;width:10%">${mylist.hart}</th>
																				<th style="text-align:center;width:10%"><fmt:formatNumber
																						value="${mylist.rate}" pattern="#.##" />%</th>
																				<th style="text-align:center;width:20%"><fmt:formatNumber
																						value="${mylist.stockvalue}"
																						pattern="###,###,###,###" /></th>
																				<th style="text-align:center;width:15%"><a
																					href="${pageContext.request.contextPath}/waggle/rankInfo/${mylist.no}">확인하기</a></th>
																			</tr>
																		</thead>

																	</table>
																</div>
																</div>
																<div id="menu1" class="tap-pane fade">
																	<div class="tab-ctn"></div>
																	<br> <br>
																	<div class="left-head-blog right-side">
																		<h5>거래금액 순위</h5>
																		<table class="table table-striped">
																			<thead style="background-color: aliceblue;"
																				class="thead-dark">
																				<tr>
																					<th style="text-align:center;width:10%">순위</th>
																					<th style="text-align:center;width:20%">닉네임</th>
																					<th style="text-align:center;width:10%">하트 수량</th>
																					<th style="text-align:center;width:10%">수익률</th>
																					<th style="text-align:center;width:20%">총 거래 금액</th>
																					<th style="text-align:center;width:15%">포트폴리오</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:forEach items="${requestScope.valuelist}"
																					var="ranklist" varStatus="loop">
																					<tr>


																						<td style="text-align:center;width:10%"><c:if
																								test="${ranklist.rank eq 1}">
																								<i class="ti-crown" style="color: burlywood"></i>
																							</c:if> <c:if test="${ranklist.rank eq 2}">
																								<i class="ti-crown" style="color: darkgrey"></i>
																							</c:if> <c:if test="${ranklist.rank eq 3}">
																								<i class="ti-crown" style="color: brown"></i>
																							</c:if> ${ranklist.rank}</td>

																						<td style="text-align:center;width:20%">${ranklist.nickname}</td>
																						<td style="text-align:center;width:10%">${ranklist.hart}</td>
																						<td style="text-align:center;width:10%"><fmt:formatNumber
																								value="${ranklist.rate}" pattern="#.##" />%</td>
																						<td style="text-align:center;width:25%"><fmt:formatNumber
																								value="${ranklist.stockvalue}"
																								pattern="###,###,###,###" /></td>
																						<td style="text-align:center;width:15%"><a href="#paymodal"
																							data-id=" ${ranklist.rank}"
																							data-value="${ranklist.no}" data-toggle="modal"
																							class="move">확인</a></td>
																					</tr>
																				</c:forEach>
																			</tbody>
																		</table>
																		<div align="center" class="basic-tb-hd">
																			<br> <br>
																			<table class="table table-striped">
																				<thead>

																					<tr class="warning">
																						<th style="text-align:center;width:10%">${myvalue.rank}</th>
																						<th style="text-align:center;width:20%">${myvalue.nickname}</th>
																						<th style="text-align:center;width:10%">${myvalue.hart}</th>
																						<th style="text-align:center;width:10%""><fmt:formatNumber
																								value="${myvalue.rate}" pattern="#.##" />%</th>
																						<th style="text-align:center;width:20%"><fmt:formatNumber
																								value="${myvalue.stockvalue}"
																								pattern="###,###,###,###" /></th>
																						<th style="text-align:center;width:15%"><a
																							href="${pageContext.request.contextPath}/waggle/rankInfo/${myvalue.no}">확인하기</a></th>
																					</tr>
																				</thead>

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
								</div>

							</div>
						</div>

						<!-- End Right Sidebar -->
					</div>
					<!-- End row -->
				</div>
			</div>
 <%--  <div class="modal fade" id="paymodal">
				<div class="modal-dialog modal-m">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">하트 사용 확인</h4>

							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<form method="post"
							action="${pageContext.request.contextPath}/ranking/payheart">
							<div class="modal-body">
								<p style="text-align: center">
									하트가 부족합니다. 하트를 충전하시겠습니까?<br><br>
									보유 하트 : 50 개<br>
									필요 하트 : 100 개<br>
								</p>
								<p style="text-align: center">
									

								</p>
							</div>


							<div class="modal-footer">

								
						</form>
						<button id="button-modal" ><a href="${pageContext.request.contextPath}/waggle/coupon">이동</a></button>
						<button id="button-modal2" data-dismiss="modal">닫기</button>
					</div>
				</div>

			</div>   --%>

			 <div class="modal fade" id="paymodal">
				<div class="modal-dialog modal-m">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">하트 사용 확인</h4>

							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<form method="post"
							action="${pageContext.request.contextPath}/ranking/payheart">
							<div class="modal-body">
								<p style="text-align: center">
									선택하신 포트폴리오 및 필요 하트 수는 다음과 같습니다.<br> 하트를 사용하시겠습니까?
								</p>
								<p style="text-align: center">
									<strong>랭킹 :<input name="rank" text="text"
										style="border: none; text-align: right; width: 50px;" value=""
										id="rankingvalue" readonly>위
									</strong><br> <input type="hidden" value="" name="no" id="novalue">
									<strong>필요하트 :<input text="text"
										style="text-align: right; border: none; width: 50px;" value=""
										id="heart" readonly> 개
									</strong><br>

								</p>
							</div>


							<div class="modal-footer">

								<input type="submit" id="button-modal" value="사용">
						</form>
						<button id="button-modal2" data-dismiss="modal">닫기</button>
					</div>
				</div>

			</div>  
			
			
			
		</div>
	</div>
</div>



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
$(document).on("click", ".move", function() {
	var rank = $(this).attr('data-id');
	var no = $(this).attr('data-value')
	if(rank==1||rank==2||rank==3){
		$(".modal-body #heart").val(100);
		$(".modal-body #rankingvalue").val(rank);
		$(".modal-body #novalue").val(no);
	}
	else{
		$(".modal-body #heart").val(50);
	$(".modal-body #rankingvalue").val(rank);
	$(".modal-body #novalue").val(no);
}
});

</script>

</html>