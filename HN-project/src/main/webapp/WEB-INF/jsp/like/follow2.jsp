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
<div id="pagefollow2">
	<div class="left-head-blog right-side">
		<br> <br>
		<table class="table table-hover">
			<thead style="background-color: cornsilk;" class="thead-dark">
				<tr>
					<th width="10%">순위</th>
					<th style="text-align: center">닉네임</th>
					<th style="text-align: center">하트 갯수</th>
					<th style="text-align: center">수익률(%)</th>
					<th style="text-align: center">팔로잉 삭제</th>
					<th style="text-align: center">포트폴리오</th>

				</tr>
			</thead>
			<c:forEach items="${requestScope.myfollow}" var="followlist"
				varStatus="loop">
				<tr>
					<th width="10%">${followlist.rank}
					</td>
					<td style="text-align: center">${followlist.nickname}</td>
					<td style="text-align: center">${followlist.hart}</td>

					<td style="text-align: center"><fmt:formatNumber
							value="${followlist.rate}" pattern="#.##" />%</td>
					<td style="text-align: center"><a data-id="${followlist.no}"
						class="ialog1">삭제</a></td>
					<td style="text-align: center"><a
						href="${pageContext.request.contextPath}/waggle/rankInfo/${followlist.no}">보기</a></td>


				</tr>
			</c:forEach>
		</table>

		
	</div>
</div>
<div id="pagefollower2">
	<div class="left-head-blog right-side">

		<table class="table table-hover">
			<thead style="background-color: cornsilk;" class="thead-dark">
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
				<c:forEach items="${requestScope.myfollower}" var="followerlist"
					varStatus="loop">
					<tr>
						<th width="10%">${followlist.rank}
																					</th>
						<td style="text-align: center">${followerlist.nickname}</td>
						<td style="text-align: center">${followerlist.hart}</td>
						<td style="text-align: center"><fmt:formatNumber
							value="${followerlist.rate}" pattern="#.##" />%</td>
						<td style="text-align: center"><a data-id="${followerlist.no}" class="ialog2">삭제</a></td>
						<td style="text-align: center"><a
							href="${pageContext.request.contextPath}/waggle/rankInfo/${followerlist.no}">보기</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</div>
</body>
</html>