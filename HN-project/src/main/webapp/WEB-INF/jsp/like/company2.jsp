<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="company1">
		
			<div class="support-services-red">

				<div class="left-head-blog right-side">

					<table class="table table-hover">
						<thead>
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
<c:forEach items="${requestScope.slist}" var="companylist"
			varStatus="loop">
							<tr>
								<td>${companylist.stock_name}</td>
								<td style="text-align: center">${companylist.stock_close}</td>
								<td style="text-align: center">${companylist.stock_diff}</td>
								<td style="text-align: center"><fmt:formatNumber
										value="${companylist.y_diff}" pattern="#.##" />%</td>

								<td style="text-align: center"><a
									data-id="${companylist.stock_code}" class="ialog2">삭제</a></td>
									<td><div class="price-btn blue">
													<a class="blue"
														href="${pageContext.request.contextPath}/stock/buysell/${companylist.stock_code}">주문</a>
												</div></td>
							</tr>
								</c:forEach>
						</tbody>
					</table>
				</div>
				</div>
		
	</div>
	
	<div id="company3">
		
			<div class="support-services-red">

				<div class="left-head-blog right-side">

					<table class="table table-hover">
						<thead>
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
<c:forEach items="${requestScope.slist}" var="companylist"
			varStatus="loop">
							<tr>
								<td>${companylist.stock_name}</td>
								<td style="text-align: center">${companylist.stock_close}</td>
								<td style="text-align: center">${companylist.stock_diff}</td>
								<td style="text-align: center"><fmt:formatNumber
										value="${companylist.y_diff}" pattern="#.##" />%</td>

								<td style="text-align: center"><a
									data-id="${companylist.stock_code}" class="ialog2">삭제</a></td>
									<td><div class="price-btn blue">
													<a class="blue"
														href="${pageContext.request.contextPath}/stock/buysell/${companylist.stock_code}">주문</a>
												</div></td>
							</tr>
								</c:forEach>
						</tbody>
					</table>
				</div>
				</div>
		
	</div>
	
	
</body>
</html>