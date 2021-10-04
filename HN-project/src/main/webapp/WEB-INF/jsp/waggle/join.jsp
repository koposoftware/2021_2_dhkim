<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
<style>
#selectAccount {
	margin-top: 6px;
}

#submit {
	width: 100%
}

input[id="cb1"] + label {
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}

input[id="cb1"]:checked + label {
	background-color: #666666;
}

</style>
<script>

	function setaccount() {

		document.getElementById("sus_email1").value = document
				.getElementById("accountinfo").value

	}
	window.onload = function() { 
	if('${msg}'=== 'true') {
	  
		alert('가입 완료')
	}
	}
</script>

<jsp:include page="../header.jsp" />
<!-- header end -->



<div class="page-area">
	<div class="breadcumb-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="breadcrumb text-center">
				
					<ul class="breadcrumb-bg">
					
						<li>가입하기</li>
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
					<h3>가입하기</h3>
					<p>플랫폼 서비스 가입하기</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="pricing-content">
				<div class="faq-area bg-color page-padding">

					<div class="row">
						<!-- Start Column Start -->
						<div class="col-md-7 col-sm-6 col-xs-12">
							<div class="company-faq">
								<div class="faq-full">
									<div class="faq-details">
										<div class="panel-group" id="accordion">
											<!-- Panel Default -->
											<br>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="check-title">
														<a data-toggle="collapse" class="active"
															data-parent="#accordion" href="#check1"> <span
															class="acc-icons"></span>랭킹 투자자의 포트폴리오
														</a>
													</h4>
												</div>
												<div id="check1" class="panel-collapse collapse in">
													<div class="panel-body">
														<p>랭킹 포트폴리오를 확인하면서 어떤 업종에 분산 투자를 했는지 알 수 있습니다.<br> 해당 랭킹 유저와 과거 수익률을 비교할 수 있습니다. 이를 통해 지속적으로 수익을 창출하는 유저인지 알 수 있습니다.</p>
													</div>
												</div>
											</div>
											<!-- End Panel Default -->
											<!-- Panel Default -->
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="check-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#check2"> <span class="acc-icons"></span>랭킹 투자자의 매매내역
														</a>
													</h4>
												</div>
												<div id="check2" class="panel-collapse collapse">
													<div class="panel-body">
														<p>랭킹 투자자가 최근 거래한 종목과 금액을 알 수 있습니다. </p>
													</div>
												</div>
											</div>
											<!-- End Panel Default -->
											<!-- Panel Default -->
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="check-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#check3"> <span class="acc-icons"></span>하트/
															쿠폰 구매 및 쿠폰 사용/공유
														</a>
													</h4>
												</div>
												<div id="check3" class="panel-collapse collapse ">
													<div class="panel-body">
														<p>차곡차곡 적립한 하트를 교환소에서 주식뽑기 쿠폰으로 으로 교환할 수 있습니다. <br>보유한 쿠폰은 카카오톡으로 공유할 수 있습니다.
														</p>
													</div>
												</div>
											</div>
											<!-- End Panel Default -->
											<!-- Panel Default -->
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="check-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#check4"> <span class="acc-icons"></span>관심 기능
														</a>
													</h4>
												</div>
												<div id="check4" class="panel-collapse collapse ">
													<div class="panel-body">
														<p>개인을 팔로우하여 해당 포트폴리오를 지속적으로 학인 할 수 있습니다.<br> 나의 팔로워들을 확인하여 원하지 않는 팔로워를 삭제할 수 있습니다.<br> 관심 기업을 등록하여 관심기업 목록에서 주기적으로 기업의 주가를 관찰 할 수 있습니다.</p>
													</div>
												</div>
											</div>
											<!-- End Panel Default -->
											<!-- Panel Default -->
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="check-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#check5"> <span class="acc-icons"></span>랭킹
															투자자의 분산투자 비율 따라하며 종목추천 받기
														</a>
													</h4>
												</div>
												<div id="check5" class="panel-collapse collapse">
													<div class="panel-body">
														<p>랭킹 포트폴리오의 업종별 분산 투자 비율을 저장하여 현재 주가 중 가장 큰 괴리율을 보이는 종목으로 추천할 수 있습니다.</p>
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
								<h4>가입양식</h4>
								<div class="faq-quote">
									<div class="row">
										<form  method="POST" class="contact-form">
											<div class="col-md-12 col-sm-12 col-xs-12">
												<div class="suscribe-input">
													<input type="text" class="email form-control width-80"
														id="sus_email1" name="member_account" placeholder="수익률 연결 및 결제 계좌">
												</div>
												<div class="price-btn blue">
													<a class="blue" data-toggle="modal" href="#account1">
														선택</a>
												</div>
												<div class="help-block with-errors"></div>
												<input type="text" class="form-acontrol" name="nickname"
													placeholder="닉네임" required
													data-error="닉네임을 입력하세요.">
												</div>
												<br>&nbsp;&nbsp; 
												<input type="checkbox" id="cb1"> 정보공개 및 이용약관에 동의합니다.
												 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
												<a href="#agree" data-toggle="modal">약관확인</a>
												<div class="help-block with-errors"></div>
												<button type="submit" id="submit" class="quote-btn">가입</button>
												<div id="msgSubmit" class="h3 text-center hidden"></div>
										</form>
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
<div class="modal fade" id="account1" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">보유계좌목록</h4>
					
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<a class="support-images" href="#"><i class="flaticon-035-savings"></i></a>
				<div class="support-content">	
				<p><strong>종합계좌로 연결을 추천합니다.</strong></p>
				<c:forEach items="${requestScope.accountlist}" var="accountlist" varStatus="loop"> 
					<input type="radio" name="accountinfo" id="accountinfo" value="${accountlist.acc_num}">&nbsp;${accountlist.acc_num}&nbsp; &nbsp; ${accountlist.acc_name} <br>
					</c:forEach>
				</div>
			</div>
			<div class="modal-footer">
				<input type="button" id="button-modal" onclick="setaccount()" data-dismiss="modal" value="선택">
				<button id="button-modal2" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="agree" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">약관</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				
				
			</div>
			<div class="modal-footer">
				<button id="button-modal2" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- all js here -->
<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->


</body>
</html>