<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from rockstheme.com/rocks/aievari-live/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Mar 2020 08:27:42 GMT -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jqbar.css" />


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
						<li>내 자산</li>

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
					<h3>내 자산</h3>
					<p>주식/현금 및 보유종목을 확인할 수 있습니다.</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12""></div>
			<br> <br>
			<div class="col-md-12">




				<div class="deposite-content">
					<div class="diposite-box">


						<div class="deposite-table">
							<div class="email-statis-wrap">

<div style="float: left;width:100%" >
										
										&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-account"></i><strong>계좌번호
											:</strong>&nbsp;${waggleVO.member_account}
											</div><br>
											<br>
								<div class="email-round-nock" style="float: left;">

								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="knob" value="0"
										data-rel="${adaily.stock_value/(adaily.tcash+adaily.stock_value) *100}"
										data-linecap="round" data-width="130" data-bgcolor="#E4E4E4"
										data-fgcolor="#27B2A5" data-thickness=".15"
										data-readonly="true">
									<!-- <div style="float: right"></div> -->

									
								
<div style="float: right">

										&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-coin"> </i><strong>현금/예수금
											:</strong>&nbsp;
										<fmt:formatNumber value="${adaily.tcash}"
											pattern="###,###,###,###" /><br>
										&nbsp;&nbsp; <strong>&nbsp;&nbsp;매입원금 &nbsp;&nbsp;&nbsp;&nbsp; : </strong>&nbsp;
										<fmt:formatNumber value="${adaily.tstock}"
											pattern="###,###,###,###,###" />
										<c:if test="${adaily.stock_value-adaily.stock_value gt 0}">
										&nbsp;손익금액<div style="color: red">
												: ▼&nbsp;
												<fmt:formatNumber
													value="${adaily.stock_value-adaily.stock_value}"
													pattern="###,###,###,###" />
											</div>
										</c:if>
										<c:if test="${adaily.stock_value-adaily.stock_value lt 0}">
											 &nbsp;손익금액 	<div style="color: blue">
												&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;▲
												<fmt:formatNumber
													value="${adaily.stock_value-adaily.stock_value}"
													pattern="###,###,###,###" />
											</div>
										</c:if>
										<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>평가금액
											  &nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</strong>
										<fmt:formatNumber value="${adaily.stock_value}"
											pattern="###,###,###,###" />
										<br> &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;총 예탁금&nbsp;&nbsp;&nbsp;&nbsp; :</strong> 
										<fmt:formatNumber value="${adaily.stock_value+adaily.tcash}"
											pattern="###,###,###,###" />
										<br>

										<c:if test="${adaily.rate lt 0}">
								 &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;총 손익률 &nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>
											<label style="color: blue"> <fmt:formatNumber
													value="${adaily.rate}" pattern="#.##" />%<br></label>
										</c:if>
										<c:if test="${adaily.rate gt 0}">
								 &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;총 손익률 &nbsp;&nbsp;&nbsp;&nbsp;:&nbsp; </strong>
											<label style="color: red"> +<fmt:formatNumber
													value="${adaily.rate}" pattern="#.##" />%<br></label>
										</c:if>



									</div>
								</div>
							</div>
							<br> <br> <br> <br> <br>
							<hr>
							<div>
							<table>
								<tr>
									<th>종목명</th>
									<th>보유수량</th>
									<th>매입단가</th>
									<th>현재가</th>
									<th>손익</th>
									<th>손익률</th>
									<th>평가금액</th>
								</tr>
								<c:set var="org" value="0" />
								<c:set var="total" value="0" />
								<c:forEach items="${requestScope.stocklist}" var="stocklist"
									varStatus="loop">
									<tr>
										<td><a style="color:black" href="${pageContext.request.contextPath}/stock/buysell/${stocklist.stock_code}">${stocklist.stock_name}</a></td>
										<td>${stocklist.stock_num}</td>
										<td><fmt:formatNumber value="${stocklist.buyprice}"
												pattern="###,###,###,###" /></td>
										<td><fmt:formatNumber value="${stocklist.stock_close}"
												pattern="###,###,###,###" /></td>
										<c:if
											test="${(stocklist.stock_close-stocklist.buyprice) lt 0}">
											<td style="color: blue">▼<fmt:formatNumber
													value="${Math.abs((stocklist.stock_close-stocklist.buyprice))}"
													pattern="###,###,###,###" /></td>
											<td style="color: blue"><fmt:formatNumber
													value="${(stocklist.stock_close-stocklist.buyprice)/stocklist.buyprice*100}"
													pattern="#.##" />%</td>
											<td style="color: blue"><fmt:formatNumber
													value="${stocklist.stock_num*stocklist.stock_close}"
													pattern="###,###,###,###" /></td>
										</c:if>
										<c:if
											test="${(stocklist.stock_close-stocklist.buyprice) gt 0}">
											<td style="color: red">▲<fmt:formatNumber
													value="${Math.abs((stocklist.stock_close-stocklist.buyprice))}"
													pattern="###,###,###,###" /></td>
											<%--  <td style="color:red">${stocklist.stock_diff_rate}%</td> --%>

											<td style="color: red">+<fmt:formatNumber
													value="${(stocklist.stock_close-stocklist.buyprice)/stocklist.buyprice*100}"
													pattern="#.##" />%
											</td>
											<td style="color: red"><fmt:formatNumber
													value="${stocklist.stock_num*stocklist.stock_close}"
													pattern="###,###,###,###" /></td>
										</c:if>

										<c:if
											test="${(stocklist.stock_close-stocklist.buyprice) eq 0}">
											<td>0</td>
											<td>${(stocklist.stock_close-stocklist.buyprice)/stocklist.stock_num*100}%</td>
											<td><fmt:formatNumber
													value="${stocklist.stock_num*stocklist.stock_close}"
													pattern="###,###,###,###" /></td>
										</c:if>

									</tr>
									<c:set var="total"
										value="${total + (stocklist.stock_num*stocklist.stock_close)}" />
									<c:set var="org"
										value="${org + (stocklist.stock_num*stocklist.buyprice)}" />

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
<!-- all js here -->
<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->


</body>

<script src="${pageContext.request.contextPath}/resources/js/jqbar.js"
	type="text/javascript"></script>


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
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/chat/jquery.chat.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/chat/moment.min.js"></script>







<script type="text/javascript">

	$(document).ready(function () {
		$('#bar-7').jqbar({ label: 'Wal', value: 90, barColor: '#D64747', orientation: 'v' });
		$('#bar-8').jqbar({ label: 'Ohi', barColor: '#FF681F', value: 70, orientation: 'v' });
		$('#bar-9').jqbar({ label: 'Song', barColor: '#ea805c', value: 50, orientation: 'v' });
		$('#bar-10').jqbar({ label: 'Pisho', barColor: '#88bbc8', value: 90, orientation: 'v' });
		$('#bar-11').jqbar({ label: 'Mara', barColor: '#939393', value: 70, orientation: 'v' });
		$('#bar-12').jqbar({ label: 'Dagha', barColor: '#3a89c9', value: 50, orientation: 'v' });
	});
</script>


</html>