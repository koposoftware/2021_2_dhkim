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

					<h3>유저</h3>
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
													<ul class="nav nav-tabs">

														<li class="active"><a data-toggle="tab"
															href="#followerpage"
															style="width: 150; text-align: center; color: #646464;">
																팔로워 </a></li>
														<li class><a data-toggle="tab" href="#followpage"
															style="width: 150; text-align: center; color: #646464;">
																팔로잉 </a></li>


													</ul>
													<div class="tab-content tab-custom-st">
														<div class="tab-pane fade in active " id="followerpage">
															<div class="tab-ctn"></div>
															<br> <br>
															<div id="pagefollower">
																<div class="left-head-blog right-side">

																	<table class="table table-hover">
																		<thead style="background-color: cornsilk;"
																			class="thead-dark">
																			<tr>
																				<th width="10%">순위</th>
																				<th style="text-align: center">닉네임</th>
																				<th style="text-align: center">하트 갯수</th>
																				<th style="text-align: center">수익률(%)</th>
																				<th style="text-align: center">팔로워 삭제</th>
																				<th style="text-align: center">포트폴리오</th>

																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach items="${requestScope.myfollower}"
																				var="followerlist" varStatus="loop">
																				<tr>
																					<td>${followerlist.rank}</td>
																					<td style="text-align: center">${followerlist.nickname}</td>
																					<td style="text-align: center">${followerlist.hart}
																					</td>
																					<td style="text-align: center"><fmt:formatNumber
																							value="${followerlist.rate}" pattern="#.##" />%</td>
																					</td>
																					<td style="text-align: center"><a
																						data-id="${followerlist.no}" class="ialog2">삭제</a></td>
																					<td style="text-align: center"><a
																						href="${pageContext.request.contextPath}/waggle/rankInfo/${followerlist.no}">보기</a></td>
																				</tr>
																			</c:forEach>
																		</tbody>
																	</table>
																	<div class="left-blog-page">
																		<br>
																		<hr>

																	</div>
																</div>

															</div>

														</div>
														<div id="followpage" class="tap-pane fade">
															<div class="tab-ctn">

																<div id="pagefollow">
																	<div class="left-head-blog right-side">
																		<br> <br>

																		<table class="table table-hover">
																			<thead style="background-color: cornsilk;"
																				class="thead-dark">
																				<tr>
																					<th width="10%">순위</th>
																					<th style="text-align: center">닉네임</th>
																					<th style="text-align: center">하트 갯수</th>
																					<th style="text-align: center">수익률(%)</th>
																					<th style="text-align: center">팔로잉 삭제</th>
																					<th style="text-align: center">포트폴리오</th>

																				</tr>
																			</thead>
																			<c:forEach items="${requestScope.myfollow}"
																				var="followlist" varStatus="loop">
																				<tr>
																					<th width="10%">${followlist.rank}
																					</th>
																					<td style="text-align: center">${followlist.nickname}</td>
																					<td style="text-align: center">${followlist.hart}</td>

																					<td style="text-align: center"><fmt:formatNumber
																							value="${followlist.rate}" pattern="#.##" />%</td>
																					<td style="text-align: center"><a
																						data-id="${followlist.no}" class="ialog1">삭제</a></td>
																					<td style="text-align: center"><a
																						href="#paymodal" data-id=" ${followlist.rank}"
																						data-value="${followlist.no}" data-toggle="modal"
																						class="move"}">보기</a></td>


																				</tr>
																			</c:forEach>
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
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<div
							class="statistic-right-area notika-shadow mg-tb-30 sm-res-mg-t-0"
							style="padding-bottom: 0; padding-top: 0;">
							<div class="left-blog blog-category">
								<h4>정보</h4>
								<p></p>
							</div>


							<div class="past-statistic-an">
								<div class="past-statistic-ctn">
									<h3>
										<a href="${pageContext.request.contextPath}/like/follow"
											style="color: #646464"><i class="fa fa-user"
											style="color: darkgreen"></i>&nbsp; &nbsp;<span
											class="counter" id="follower">${follower}</span> </a>
									</h3>
									<a href="${pageContext.request.contextPath}/like/follow"
										style="color: #646464"><p>나의 팔로워</p></a>
								</div>

							</div>
							<div class="past-statistic-an">
								<div class="past-statistic-ctn">
									<h3>
										<a href="${pageContext.request.contextPath}/like/follow"
											style="color: #646464"><i class="fa fa-user"
											style="color: green"></i>&nbsp; &nbsp;<span class="counter"
											id="follow">${follow}</span> </a>
									</h3>
									<a href="${pageContext.request.contextPath}/like/follow"
										style="color: #646464"><p>나의 팔로잉</p></a>
								</div>

							</div>


						</div>

						<div class="recent-items-wp notika-shadow sm-res-mg-t-30">
							<div class="rc-it-ltd">
								<div class="recent-items-ctn">
									<div class="left-blog blog-category">
										<h4>팔로워 순위</h4>

									</div>
								</div>
								<!-- <div class="recent-items-inn"> -->
								<table class="table table-inner table-vmiddle"
									style="boreder: none">
									<thead>
										<tr>
											<th text-alingn="center" style="width: 25%">순위</th>
											<th text-alingn="center" style="width: 50%">닉네임</th>
											<th>팔로워 수</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${requestScope.follower3}" var="listbuy"
											varStatus="status">
											<tr>
												<td><c:if test="${status.count eq 1}">
														<i class="ti-crown" style="color: burlywood"></i>
													</c:if> <c:if test="${status.count eq 2}">
														<i class="ti-crown" style="color: darkgrey"></i>
													</c:if> <c:if test="${status.count eq 3}">
														<i class="ti-crown" style="color: brown"></i>
													</c:if> ${status.count}</td>
												<td>${listbuy.likeman}</td>
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

<div id="modal" class="modal fade" tabindex="-1" role="dialog"
					>
				<div class="modal-dialog modal-ss">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
							<h5 class="modal-title">알림창</h5>
								<button type="button" class="close button modalClose"
									data-dismiss="modal" style="box-shadow: none;">&times;</button>

							</div>
							<div class="modal-body">
								<p style="text-align:center;" id="info"></p>
							</div>
							<div class="modal-footer">
						
								<button type="button" id="button-modal2"
									data-dismiss="modal">닫기</button>
							</div>
						</div>

					</div>
				</div>

<!-- End Right Sidebar -->

<!-- End row -->


<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->


</body>

<script>
	$(document).on("click", ".move", function() {
		var rank = $(this).attr('data-id');
		var no = $(this).attr('data-value')
		if (rank == 1 || rank == 2 || rank == 3) {
			$(".modal-body #heart").val(100);
			$(".modal-body #rankingvalue").val(rank);
			$(".modal-body #novalue").val(no);
		} else {
			$(".modal-body #heart").val(50);
			$(".modal-body #rankingvalue").val(rank);
			$(".modal-body #novalue").val(no);
		}
	});
</script>

<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.resize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.pie.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.tooltip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.orderBars.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/curvedLines.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/flot-active.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/jquery.sparkline.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/sparkline-active.js"></script>

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
	$(".ialog1").click(function() { //팔로잉 삭제

		var no = $(this).data('id')
		deletefollow(no);
	})

	$(".ialog2").click(function() { //

		var no = $(this).data('id')

		deletefollower(no);
	})

	function deletefollow(no) {
	
		$.ajax({
			type : 'post',
			url : '${pageContext.request.contextPath}/like/deletefollow2',
			data : {
				no : no
			},
			dataType : 'text',
			success : function(result) {
				
				alert('팔로잉 취소 완료')
				let html = $('<div>').html(result)
				let content = html.find('div#pagefollow2');
				let contents = content.html();
				$("#pagefollow").html(contents);
				var real = $('#follow').text()

				$('#follow').text(real - 1)
			
			},
			error : function(request, status, error) {
				alert("code = " + request.status + " message = "
						+ request.responseText + " error = " + error); // 실패 시 처리
			}

		})

	}
	
	

	function deletefollower(no) {
	 	
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/like/deletefollower2",
			data : {
				no : no
			},
			dataType : 'text',
			success : function(result) {
				alert('팔로워 삭제 완료')
				//deletealert('팔로워 삭제');
				let html = $('<div>').html(result)
				let content = html.find('div#pagefollower2');
				
				let contents = content.html();

				$("#pagefollower").html(contents);
				var real = $('#follower').text()

				$('#follower').text(real - 1)
				//$('#info').text('dd');
				//$('#modal').modal('show'); 

			}
		})
	

	}
</script>

<script type="text/JavaScript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-barcode.js"></script>
</html>