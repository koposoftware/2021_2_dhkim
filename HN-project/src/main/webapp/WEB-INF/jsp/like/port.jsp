<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!doctype html>
<html class="no-js" lang="en">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/wave/waves.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/dialog/sweetalert2.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/green-horizotal/css/dialog/dialog.css">
 <script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script>
<jsp:include page="../header.jsp" />

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
                            <label for="start">날짜:</label>  
                            <input type="date" id="day" name="day" value="2021-09-17">
                          	<input id="daysubmit"  id="button-modal" type="submit" onclick="dayinput()" value="선택">
                        </div></p>
				</div>
			</div>
		</div>
	 <div class="row">
	<!--   <div class="alert alert-info" role="alert">dd</div> -->
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="normal-table-list mg-t-30">
                      
                       
                     <div id="tabl1">
                          
                         	
                          <div class="support-services-red">
                          <p>
                      오늘 저장된 포트폴리오는 <strong>총 ${fn:length(port)} 개</strong> 입니다.</p>
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


          
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					
					<br>
					<br>
					 <div class="bsc-tbl-st">
					
					<div id="tabl2">
						<div class="support-services-red ">
					
						<h4 align="center">자주 하는 질문</h4>
						<br>
                                    <div class="panel-group" data-collapse-color="nk-green" id="accordionGreen" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-collapse notika-accrodion-cus">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordionGreen" href="#accordionGreen-one" aria-expanded="true">
															추천 금액 기준
														</a>
                                                </h4>
                                            </div>
                                            <div id="accordionGreen-one" class="collapse in" role="tabpanel">
                                                <div class="panel-body">
                                                    <p style="font-size:medium">현재 가용가능한 현금/예수금을 기준으로 해당 포트폴리오와 같이 분산투자하였을 경우 금액을 적절히 배분하여 추천을 제공합니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-collapse notika-accrodion-cus">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionGreen" href="#accordionGreen-two" aria-expanded="false">
															추천 종목 기준
														</a>
                                                </h4>
                                            </div>
                                          
                                            <div id="accordionGreen-two" class="collapse" role="tabpanel">
                                                <div class="panel-body">
                                                    <p style="font-size:medium">기업이 현재의 재무상태를 유지할 경우, 해당 기업의 지속적인 초과이익을 현재가치로 계산하여 기업가치를 측정합니다.
                                                    적정 기업가치를 산출 후, 현재 주가와 가장 큰 괴리율을 보이는 기업의 3순위 까지 출력합니다.
                                                    1순위를 기준으로 최다 매수 후, 차등 순위를 순차적으로 매수합니다. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-collapse notika-accrodion-cus">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionGreen" href="#accordionGreen-three" aria-expanded="false">
															추천 방법
														</a>
                                                </h4>
                                            </div>
                                            <div id="accordionGreen-three" class="collapse" role="tabpanel">
                                                <div class="panel-body">
                                                    <p style="font-size:medium">한번 저장한 포트폴리오는 언제든지 추천이 가능하며 비용은 포트폴리오 저장시 한번 지불됩니다.
                                                    포트폴리오는 매순간 변화하여 한 사람의 포트폴리오를 여러번 저장할 수 있으며, 같은 사람의 포트폴리오를 저장하였을 경우
                                                    포트폴리오 저장함은 가장 최신의 포트폴리오로 자동 저장됩니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
						</div>
							  <div class="chart">
				<div class="min-height: 182.75px;">
					<canvas id="myPieChart8" height="300vh" width="150vh"></canvas>
				</div>	
			</div>
					
					</div>
					</div>
			</div>
	
<jsp:include page="../footer.jsp" />
	
</body>
<script src="${pageContext.request.contextPath}/resources/green-horizotal/js/wave/waves.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/green-horizotal/js/wave/wave-active.js"></script>
<script>	

var dayinfo;
function dayinput(){	
	dayinfo =document.querySelector("#day").value;
	
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/like/port/select",
		data:{day :dayinfo}, 
		dataType : "text"
	}).done(function(result){
		let html = $('<div>').html(result)
		
		let content =html.find('div#ajax');
		let contents =content.html();
		
	
		$("#tabl1").html(contents);
	}).fail(function (jqXHR, textStatus, errorThrown) {
		console.log("에러"); 
		console.log(jqXHR);
		console.log(textStatus);
		console.log(errorThrown);
	});

	
}


function cc(param){

		
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/port/recom",
		data:{day :dayinfo,nickname:param}, 
		dataType:"text"
	}).done(function(result){
	
		
		let html = $('<div>').html(result)
	
		
		let content= html.find('div#recc')
		let contents =content.html();
		
	
		$("#tabl2").html(contents)
	}).fail(function (jqXHR, textStatus, errorThrown) {
		console.log("에러"); 
		console.log(jqXHR);
		console.log(textStatus);
		console.log(errorThrown);
	});
	
	
}




</script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/charts/Chart.js"></script>
</html>