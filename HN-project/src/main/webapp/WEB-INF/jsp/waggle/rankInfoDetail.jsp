<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<jsp:include page="../header.jsp" />
<body>
	<div id="detailhold">
		<script>
			$(document)
					.ready(
							function() {
								
								var hdata = new Array();
								var hipeLabels = new Array();
							
								<c:forEach var="list1" items="${list}" varStatus="listIdx"  >
								hipeLabels.push("${list1.stock_name}");
								</c:forEach>
							
								<c:forEach var="list2" items="${list}" varStatus="listIdx"  >
								hdata.push("${list2.stockrate*100}");
								</c:forEach>

								var sum2 = Number("{100}");
									
								var ctx5 = document.getElementById("myPieChart2");
							
								var myPieChart2 = new Chart(
										ctx5,
										{
											type : 'pie',
											data : {
												labels : hipeLabels,
												datasets : [ {
													data : hdata,
													backgroundColor : [
															'#5093ce',
															"#7fc77f",
															'#36b9cc',
															'#35a1cc',
															"#dd6864", ],
													hoverBackgroundColor : [
															"#78acd9",
															"#a3d7a3",
															'#2c9faf',
															'#a3d7a3',
															
															"#e6918e" ],
													hoverBorderColor : "rgba(234, 236, 244, 1)",
												} ],
											},
											options : {
												maintainAspectRatio : false,
												tooltips : {
													backgroundColor : "rgb(255,255,255)",
													bodyFontColor : "#858796",
													borderColor : '#dddfeb',
													borderWidth : 1,
													xPadding : 15,
													yPadding : 15,
													displayColors : false,
													caretPadding : 10,
												},
												legend : {
													display : true
												},
											},
										});

							})
		</script>
		<div class="col-md-12" style="position: relative;">
			<div class="chart">
				<div class="min-height: 182.75px;">
					<canvas id="myPieChart2" height="300vh" width="350vw"></canvas>
				</div>
			</div>
		</div>
		<div class="container" align="center">
		<div class="col-md-8 col-sm-8 col-xs-8" style="text-align: center">
			<c:forEach items="${requestScope.list}" var="list" varStatus="status">
				<div>
				<div style="flex: 0 0 100%; float: left; width: 33%;text-align: center;" >
					<div class="col" text-align="middle" style="flex-basis: 0; flex-grow: 1; min-width: 0; max-width: 100%;">
						<strong> <a style="color:#646464;" href="${pageContext.request.contextPath}/stock/buysell/${list.stock_code}">${list.stock_name}</a></strong>
					</div>
		
					<div class="col" style="color: #adb5bd !important;text-align: center">
					<fmt:formatNumber value="${list.stockrate*100}" pattern="###.##" />
					%
					</div>
				</div>
				
				
					<div style="height: 50px; padding-top: 15px;float: left;width:33%">
						<strong><fmt:formatNumber value="${list.profit*100}" pattern="########.##" />%</strong>
						<c:if test="${list.profit*100 lt 0.00}" >
						<strong><span>↓</span></strong>
						</c:if>
						<c:if test="${list.profit*100 gt 0.00}" >
						<strong><span>↑</span></strong>
						</c:if>
					
					</div>
					
					
					
					<div style="flex: 0 0 100%; float: left; width: 33%;text-align: center;float:left;width:33%;" >
					<div class="col" text-align="middle"
						style="flex-basis: 0; flex-grow: 1; min-width: 0; max-width: 100%;">
					<strong><fmt:formatNumber value="${list.stock_num*list.stock_close}" pattern="###,###,###,###" />원</strong>
					</div>
				
					<div class="col" style="color: #adb5bd !important;text-align: center">
					<fmt:formatNumber value="${list.stock_num*(list.stock_close-list.buyprice)}" pattern="###,###,###,###" />원
						<c:if test="${list.profit*100 lt 0.00}" >
						<strong><span>↓</span></strong>
						</c:if>
						<c:if test="${list.profit*100 gt 0.00}" >
						<strong><span>↑</span></strong>
						</c:if>
						 
					</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>

</html>