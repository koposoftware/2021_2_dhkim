<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="en">

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
						<li >관심</li>
						
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
					<h3>관심기업</h3>
				<p></p>
				</div>
			</div>
		</div>
	 <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="normal-table-list mg-t-30">
                        <div class="basic-tb-hd">
                           
                        </div>
                        <div class="bsc-tbl-st">
                            <table class="table table-striped">
                                <thead>
                                    <tr><th>종목 타입</th>
                                        <th>종목명</th>
                                        <th>현재가(원)</th>
                                        <th>적정가격(원)</th>
                                        <th>괴리율(%)</th>
                                        <th>주문</th>
                                    </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${requestScope.companylist}" var="companylist" varStatus="loop"> 
                                    <tr>
                                	     <td width="15%">${companylist.stock_type}</td> 
                                        <td width="20%">${companylist.stock_name}</td>
                                        <td width="15%"><fmt:formatNumber value="${companylist.stock_close}" pattern="###,###,###"/></td>
                                         
                                        <td width="15%"> <fmt:formatNumber value="${companylist.value}" pattern="###,###,###"/></td>
                                        <td width="20%"><fmt:formatNumber value="${companylist.valuediffrate}" pattern=".##"/></td>
                                      	<td><a href="${pageContext.request.contextPath}/stock/buysell/${companylist.stock_code}">주문하기</a></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            
                             <div align="center" class="basic-tb-hd">
                            <br>
                          <br>
                           
                        </div>
                    </div>
                </div>
            </div>
			
						</div>
					</div>
		


<jsp:include page="../footer.jsp" />
</body>


  
</html>