<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


<jsp:include page="../header.jsp" />


	<div id="addcoupon">
                           <table class="table table-hover">

																		<thead style="background-color: aliceblue;"
																			class="thead-dark">
																			<tr>
																				<th witdh="30%"style="text-align: center;background-color:#ddd">쿠폰명</th>
																				<th witdh="30%" style="text-align: center;background-color:#ddd">쿠폰 번호</th>
																				<th witdh="20%" style="text-align: center;background-color:#ddd">공유</th>
																				<th witdh="20%" style="text-align: center;background-color:#ddd">사용</th>					
																			</tr>
																		</thead>
																		<tbody>
																			
																				<c:forEach items="${requestScope.mycoupon}"
																					var="mycoupon" varStatus="loop">
																				
																					<tr>
																						<td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;${mycoupon.couponname}
																							<input type="hidden" id="couponname"
																							value="${mycoupon.couponname}" />
																						</td>
																						<td style="text-align: center">${mycoupon.couponid}<input type="hidden"
																							id="couponcode" value="${mycoupon.couponid}" /></td>


																						<td style="text-align: center"><a href="#modalcode" onclick="set()"
																							data-toggle="modal">공유</a></td>
																							<td style="text-align: center"><a href="#modalcode"
																							data-toggle="modal">사용</a></td>
																					</tr>


																				</c:forEach>

																	
																				
																		</tbody>
                            </table>
                       			</div>
                        
<!-- End breadcumb Area -->
<!-- Start Slider Area -->


        
<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->


</body>



<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-barcode.js">
</script>
<!-- Mirrored from rockstheme.com/rocks/aievari-live/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Mar 2020 08:27:42 GMT -->
</html>