<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html class="no-js" lang="en">

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
						<li>종목조회</li>

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
					<h3>종목조회</h3>


					<c:forEach items="${requestScope.stocklist}" var="stocklist"
						varStatus="loop" end="0">

						<%-- <p>기준 : &nbsp;${stocklist.close_date} &nbsp; 종가</p>
						<fmt:parseDate var="startDate_D"  value="${stocklist.close_date}" pattern="yyyy-MM-dd"/>
 --%>

					</c:forEach>





				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
			
				<div class="deposite-content">

					<div class="diposite-box">
						<div class="subs-feilds">

						<form action="#">
								<div class="blog-search-option">
									<input id="holder" type="text" placeholder="종목명 검색">
									<button class="button" onclick="search()">
										<i class="fa fa-search"></i>
									</button>

								</div>
							</form>
							<!-- 	 <span>내 계좌 잔액 <i class="flaticon-005-savings"></i></span> -->

						</div>
						<div id="searchname">

							<div class="deposite-table">
								<table>

									<tr>
										<th>종목명</th>
										<th>현재가</th>
										<th>전일대비</th>

										<th>등락률</th>
										<th>거래량</th>
										<th>주문</th>
									</tr>
									<c:forEach items="${requestScope.stocklist}" var="stocklist"
										varStatus="loop">

										<tr>
											<td>${stocklist.stock_name}</td>

											<c:if test="${stocklist.stock_diff lt 0}">
												<td style="color: blue"><fmt:formatNumber
														value="${stocklist.stock_close}" pattern="###,###,###,###" /></td>
											</c:if>
											<c:if test="${stocklist.stock_diff gt 0}">
												<td style="color: red"><fmt:formatNumber
														value="${stocklist.stock_close}" pattern="###,###,###,###" /></td>
											</c:if>
											<c:if test="${stocklist.stock_diff eq 0}">
												<td><fmt:formatNumber value="${stocklist.stock_close}"
														pattern="###,###,###,###" /></td>
											</c:if>






											<c:if test="${stocklist.stock_diff lt 0}">
												<td style="color: blue">▼<fmt:formatNumber
														value="${Math.abs(stocklist.stock_diff)}"
														pattern="###,###,###,###" /></td>
											</c:if>
											<c:if test="${stocklist.stock_diff gt 0}">
												<td style="color: red">▲ <fmt:formatNumber
														value="${stocklist.stock_diff}" pattern="###,###,###,###" /></td>
											</c:if>
											<c:if test="${stocklist.stock_diff eq 0}">
												<td>${stocklist.stock_diff}</td>
											</c:if>


											<c:if test="${stocklist.stock_diff lt 0}">
												<td style="color: blue">${stocklist.y_diff}%</td>
											</c:if>
											<c:if test="${stocklist.stock_diff gt 0}">
												<td style="color: red">${stocklist.y_diff}%</td>
											</c:if>
											<c:if test="${stocklist.stock_diff eq 0}">
												<td>${stocklist.y_diff}%</td>
											</c:if>
											</td>
											<td><fmt:formatNumber value="${stocklist.volum}"
													pattern="###,###,###,###" /></td>
											<td><div class="price-btn blue">
													<a class="blue"
														href="${pageContext.request.contextPath}/stock/buysell/${stocklist.stock_code}">주문</a>
												</div></td>
										</tr>
										</div>
									</c:forEach>
								</table>
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
	<div id="here">
		<div class="deposite-table">
			<table>

				<tr>
					<th>종목명</th>
					<th>현재가</th>
					<th>전일대비</th>

					<th>등락률</th>
					<th>거래량</th>
					<th>주문</th>
				</tr>
			
					<tr>
						<td>${stock.stock_name}</td>

						<c:if test="${stock.stock_diff lt 0}">
							<td style="color: blue"><fmt:formatNumber
									value="${stock.stock_close}" pattern="###,###,###,###" /></td>
						</c:if>
						<c:if test="${stock.stock_diff gt 0}">
							<td style="color: red"><fmt:formatNumber
									value="${stock.stock_close}" pattern="###,###,###,###" /></td>
						</c:if>
						<c:if test="${stockt.stock_diff eq 0}">
							<td><fmt:formatNumber value="${stocklist.stock_close}"
									pattern="###,###,###,###" /></td>
						</c:if>				




						<c:if test="${stock.stock_diff lt 0}">
							<td style="color: blue">▼<fmt:formatNumber
									value="${Math.abs(stock.stock_diff)}" pattern="###,###,###,###" /></td>
						</c:if>
						<c:if test="${stock.stock_diff gt 0}">
							<td style="color: red">▲ <fmt:formatNumber
									value="${stock.stock_diff}" pattern="###,###,###,###" /></td>
						</c:if>
						<c:if test="${stock.stock_diff eq 0}">
							<td>${stock.stock_diff}</td>
						</c:if>


						<c:if test="${stock.stock_diff lt 0}">
							<td style="color: blue">${stock.y_diff}%</td>
						</c:if>
						<c:if test="${stock.stock_diff gt 0}">
							<td style="color: red">${stock.y_diff}%</td>
						</c:if>
						<c:if test="${stock.stock_diff eq 0}">
							<td>${stock.y_diff}%</td>
						</c:if>
						</td>
						<td><fmt:formatNumber value="${stock.volum}"
								pattern="###,###,###,###" /></td>
						<td><div class="price-btn blue">
								<a class="blue"
									href="${pageContext.request.contextPath}/stock/buysell/${stock.stock_code}">주문</a>
							</div></td>
					</tr>
					</div>
									
								</table>
							</div>
						</div>
		</div>

		</body>

		<script>
function search(){
	var stock_name= $('#holder').val()
	
	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/stocklist/search",
		data : {
			stock_name : stock_name
		},
		dataType:'text',
		success : function(result) {
			let html = $('<div>').html(result)
			let content =html.find('div#here');
			let contents =content.html();				
			$("#searchname").html(contents);
			
		}
	}) 
}


</script>
</html>