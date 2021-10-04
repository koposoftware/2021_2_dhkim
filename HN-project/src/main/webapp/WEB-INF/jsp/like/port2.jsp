<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!doctype html>
<html class="no-js" lang="en">
 <script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script>
<jsp:include page="../header.jsp" />


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/dialog/sweetalert2.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/dialog/dialog.css">
 
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


<div class="invest-area bg-color page-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-headline text-center">
					<h3>포트폴리오</h3>
				<p> <div align="center" class="basic-tb-hd">
                            <label for="start">날짜선택:</label>  
                            <input type="date" id="day" name="day" value="2021-09-17">
                          	<input id="daysubmit" type="submit"  id="button-modal" onclick="dayinput()" value="선택">
                        </div></p>
				</div>
			</div>
		</div>
	
	  
	   <div class="row">
	
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <div id="ajax">
                        
		 
                         	
                          <div class="support-services-red">
                         <p text-align="center">해당 일에 저장된 포트폴리오는 <strong>총 ${fn:length(port)} 개</strong> 입니다.</p>
                       <hr>
                      
                         	 <c:forEach items="${requestScope.port}" var="ranklist" varStatus="status">  
                         	                             
                                   <c:set  var="i" value="${fn:length(ranklist.value)}"></c:set>
                            <table width="70%" class="table table-striped" border="1">
                         	<thead>
                         	<tr style="background-color: #ddd">
                         	<th width="10%" style="text-align: center">번호</th>
                         	<th width="15%" style="text-align: center">닉네임</th>
                         	<th width="20%" style="text-align: center">종목타입</th>
  							<th width="15%" style="text-align: center">비중(%)</th>
  						
                         	</tr>
                         	</thead>
                                <tbody>
                                
                          
                                    <tr>
                                     <td style="vertical-align:middle;text-align: center" rowspan="${fn:length(ranklist.value)}" >
                                     <Stong>${status.count}<strong></td>
                                        <td style="vertical-align:middle;text-align: center" rowspan="${fn:length(ranklist.value)}" >
                                        <strong>${ranklist.key}</strong><br><br>
                                      
                                        <button class="btn" id="sa-close" value="${ranklist.key}" onclick="cc(this.value)">종목추천</button></td>
                                   				
                                   		 <c:forEach items="${ranklist.value}" var="ranklist1" varStatus="status"> 
                                   		
                                   			 <td  style="text-align: center">${ranklist1.key}</td>
                                   			 <td style="text-align: center">
                                   			
                                   		<fmt:formatNumber value="${ranklist1.value*100}" pattern="##.##"/>
                                   		</td>
                                   		
                                   	</tr>
                                   		
                                   		
                                   		</c:forEach>
                                   <br>
                        
                                </tbody>
                                     </c:forEach>
                            </table>
                          </div>
                        </div>




                        
                 
                    </div>
                </div>
            </div>
            
			</div>
			
<jsp:include page="../footer.jsp" />
	
</body>



</html>