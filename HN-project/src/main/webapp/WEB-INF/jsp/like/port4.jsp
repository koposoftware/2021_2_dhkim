<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="tta">

			입력한 금액 <strong><fmt:formatNumber value="${balance}" pattern="###,###,###,###"/>원</strong>으로 <br>
            
					 해당 포트폴리오와 알맞은 최적의 매수 종목 및 수량은 아래와 같습니다.<br>
						 <table width="70%" class="table table-striped" border="1px">
                         	<thead>
                         	<tr style="background-color: #ddd">
                         	<th width="15%" align="center">종목타입</th>
                         	<th width="20%" align="center">종목명</th>
                         	<!-- <th width="15%" align="center">비중(%)</th> -->
  							<th width="15%" align="center">수량(주)</th>
  						
                         	</tr>
                         	</thead>
                                <tbody>
                                <c:set var="i" value="0" />
                                <c:set var="j" value="3" />
                                 <c:forEach items="${requestScope.port2}" var="ranklist" varStatus="loop"> 
                                    <tr>
                                      <td style="vertical-align:middle;text-align: center" rowspan="${fn:length(ranklist.value)/3}" >
                                        <strong>${ranklist.key}</strong>
                                     
                                        </td>
                                   			
                                   		 <c:forEach items="${ranklist.value}" var="ranklist1" varStatus="loop"> 
                                   			<c:if test="${i%j == 0 }"> 
                                   			<td style="vertical-align: middle;text-align: center">${ranklist1}</td> 
                                   			</c:if>
                                   			<%--  
                                   			 <c:if test="${i%j == 1 }">                                  			 
                                   			<td style="vertical-align: middle;text-align: center">${ranklist1}</td>
                                   			</c:if> --%>
                                   			
                                   		 <c:if test="${i%j == 2 }">  
                                   		 	<td style="vertical-align: middle;text-align: center">${ranklist1}</td>
                                   		 	</tr>
                                   		 </c:if>      
                                   		<c:set var="i" value="${i+1 }" />

                                   		</c:forEach>
                                   			<br>
                                   			
                                    
                                    </c:forEach>
                                </tbody>
                            </table>
                            </div>
</div>
</body>
</html>