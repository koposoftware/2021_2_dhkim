<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/green-horizotal/style.css">
<html class="no-js" lang="en">


<!-- Mirrored from rockstheme.com/rocks/aievari-live/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 03 Mar 2020 08:27:42 GMT -->
<jsp:include page="../header.jsp" />
<script>

$(document).ready(function(){

	var msg1='${msg1}'
	msg1 =msg1.trim();
	
	var msg2='${msg2}'
		msg2 =msg2.trim();
	
	 if(msg1 ==='true'){
		
	
		   $('#info').text('매수 완료하였습니다.'); 
		 $('#modal').modal('show');   
	} 
	
	 if(msg2==='true'){
		
		   $('#info').text('매도 완료하였습니다.'); 
		 $('#modal').modal('show');  
	} 

	
});



</script>
<!-- header end -->
<!-- Start breadcumb Area -->
<div class="page-area">
	<div class="breadcumb-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="breadcrumb text-center">

					<ul class="breadcrumb-bg">
						<li>매수/매도</li>

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

			<div class="section-headline text-center">
				<h3>${stockcode.stock_name}</h3>
				<h6>${stockcode.stock_index}&nbsp;${stockcode.stock_type}</h6>
				<div align="center" class="price-btn" id="dis">
					<c:if test="${not empty select}">
						<button id="button-modal" class="lovecom" onclick="likecompany()">관심
							등록</button>
					</c:if>
					<c:if test="${empty select}">
						<button id="button-modal2" class="lovecom"
							onclick="likecompback()">관심 취소</button>
					</c:if>

				</div>
				
			</div>
		</div>


		<div class="pricing-content" align="center"">
			<p><h3>
			<c:if test="${stocktoday.stock_diff lt 0}">
				<p style="color: blue">
				<fmt:formatNumber value="${stocktoday.stock_close}" pattern="#,###" /></p>
			</c:if>
			<c:if test="${stocklist.stock_diff gt 0}">
			<p style="color: red">
				<fmt:formatNumber value="${stocktoday.stock_close}" pattern="#,###" /></p>
			</c:if>
			<c:if test="${stocktoday.stock_diff eq 0}">
			<fmt:formatNumber value="${stocktoday.stock_close}" pattern="#,###" /></p>
			</c:if>
			</h3>
			<c:if test="${stocktoday.stock_diff lt 0}">
				<p style="color: blue">▼${Math.abs(stocktoday.stock_diff)} &nbsp; ${stocktoday.y_diff}%</p>
			</c:if>
			<c:if test="${stocklist.stock_diff gt 0}">
				<p style="color: red">▲ ${stocktoday.stock_diff}</p>
			</c:if>
			<c:if test="${stocktoday.stock_diff eq 0}">
				<p>${stocktoday.stock_diff}</p>
			</c:if>
</p>
		</div>

		<div class="blog-left-content">
			<div class="col-md-8 col-sm-8 col-xs-8">
				<div class="single-blog">
					<div class="blog-image">
					<hr>
					<strong><i class="fa fa-building">
											</i> &nbsp;기업개요 및 현황</strong>
					<ul>
					<li style="padding:10px"> <i class="fa fa-right">
											</i>${stockinfo[0].stocktext1}
					</li>
					<li style="padding:10px">${stockinfo[0].stocktext2}
					</li>
					<li style="padding:10px">${stockinfo[0].stocktext3}
					</li>
					</ul>
				
					<hr>
						<div class="sale-statistic-inner notika-shadow mg-tb-30">
							<div class="curved-inner-pro"></div>
							<canvas align="middle" height="180px" id="linechart"></canvas>
						</div>
					</div>
					
				</div>


			</div>
			
			<div class="blog-sidebar-right">
				<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
					<div class="support-services-red ">

						<h6>매수 주문</h6>
						<form
							action="${pageContext.request.contextPath}/stock/buy/${stockcode.stock_code}"
							method="post">
							<p>
								<select id="buyorder" onchange="order1(this.value)" style="float:middle;height:40px;border-radius: 4px">
									<option value="">가능</option>
									<option value="1">100%</option>
									<option value="2">50%</option>
									<option value="4">25%</option>
									<option value="10">10%</option>
								</select> <input type="text" style="width: 70%;height:40px;" id="changemodal1"
									name="stock_num" onkeyup="cal()" placeholder="수량" value=""><br>
							</p>
							총 거래금액 :&nbsp;<input type="text" id="totalcost1"
								style="border: none; width: 60%" value="" readonly><br>
							<br> <input type="submit" data-toggle="modal" href="#modal"
								id="button-modal"
								style="border: none; background-color: #E00400; color: #FFF; width: 100%;"
								value="매수">
								</form>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
					<div class="support-services-blue ">

						<h6>매도 주문</h6>
						<form
							action="${pageContext.request.contextPath}/stock/sell/${stockcode.stock_code}"
							method="post">
							<p>
								<select id="sellorder" onchange="order2(this.value)" style="float:middle;height:40px;border-radius: 4px">
									<option value="">가능</option>
									<option value="1">100%</option>
									<option value="2">50%</option>
									<option value="4">25%</option>
									<option value="10">10%</option>
								</select> <input type="text" style="width: 70%;height:40px;" id="changemodal2"
									name="stock_num"  onkeyup="cal2()"placeholder="수량" value=""><br>
							</p>
							총 거래금액 :&nbsp;<input type="text" id="totalcost2"
								style="border: none; width: 60%" value="" readonly><br>
							<br> <input type="submit" id="button-modal2"
								style="border: none; background-color: #003ACE; width: 100%;"
								value="매도">
								</form>
					</div>

				</div>
			</div>

		</div>
	</div>

<!-- 
	<div class="modal fade" id="modal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h5 style="text-align:center"class="modal-title">알림창</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
				
					<div class="support-content">
						
						<p id="info"></p>
					</div>
				</div>
				<div class="modal-footer">
				
					<button id="button-modal2" data-dismiss="modal">닫기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
 -->
<div id="modal" class="modal fade" tabindex="-1" role="dialog"
					>
				<div class="modal-dialog modal-ss">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
							<h5 class="modal-title">알림창</h5>
								<button type="button" class="close button modalClose"
									data-dismiss="modal" style="box-shadow: none;">&times;</button>

							</div>
							<div class="modal-body">
								<p style="text-align:center;" id="info"></p>
							</div>
							<div class="modal-footer">
						
								<button type="button" id="button-modal2"
									data-dismiss="modal">닫기</button>
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


<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.resize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.pie.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.tooltip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.orderBars.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/curvedLines.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/flot-active.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/jquery.sparkline.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/sparkline-active.js"></script>

<script>

function cal(){
	var close = parseInt('${stocktoday.stock_close}');
	var num = parseInt(window.event.keyCode)-48
	
	$('#totalcost1').val(num*close)
}

function cal2(){
	var close = parseInt('${stocktoday.stock_close}');
	var num = parseInt(window.event.keyCode)-48
	
	$('#totalcost2').val(num*close)
}

function order1(param){

	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/myasset/stock/cash",
		success:function(data){
			var num1 = data/'${stocktoday.stock_close}'/param			
			$('#changemodal1').val(Math.floor(num1))
			var price =  ${stocktoday.stock_close} * Math.floor(num1)
		 	$('#totalcost1').val(price) 
			$('#feerate1').val(price*0.00015)
		}
	})		
}

function order2(param){
	
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/myasset/mystock",
		data: {stock_code:"${stockcode.stock_code}"},
		success:function(data){
			var num = data/param
			$('#changemodal2').val(Math.floor(num))
			var price2 =  ${stocktoday.stock_close} * Math.floor(num)
			$('#totalcost2').val(price2) 
			$('#feerate2').val(price2*0.0025)
		}
	})		
}

function likecompany(){
	
	$.ajax({
		type:"get",
		url:"${pageContext.request.contextPath}/like/"+'${stockcode.stock_code}',		
		success:function(){
			alert("관심등록이 완료되었습니다.")
			$(".lovecom#button-modal").remove()
			$("#dis").append('<button id="button-modal2" class="lovecom" onclick="likecompback()">관심 취소</button>') 
			
		}
	})		
}

function likecompback(){
	
	$.ajax({
		type:"get",
		url:"${pageContext.request.contextPath}/unlike/"+'${stockcode.stock_code}',		
		success:function(){
			alert("관심취소가 완료되었습니다.")
			$(".lovecom#button-modal2").remove()
			$("#dis").append('<button id="button-modal" class="lovecom" onclick="likecompany()">관심 등록</button>') 
			
		}
	})		
}


var varlabel= [];
var vardata = [];

$(document).ready(function() {
	$.ajax({
			url : '${pageContext.request.contextPath}/stock/close/line',
			type : 'post',
			data : {stock_code:'${stockcode.stock_code}'},
			dataType : "json",
			success : function(map) {
		
				$.each(map.pricelist, function(index,item) {
					let close = item.close_date.split(' ')
					varlabel.push(close[0]);
					vardata.push(item.stock_close);
				})
				line()
			}
	})

})


function line() {

	var ctxstock = document.getElementById('linechart').getContext('2d');
	var linechart = new Chart(ctxstock, {
		type : 'line',
		data : {
			labels :  varlabel ,
			datasets : [ {
				label : '주가',
				type : 'line', // 'line' type
				backgroundColor : '#00c292',
				borderColor : '#00c292',
				lineTension : 0, // 0이면 꺾은선 그래프, 숫자가 높을수록 둥글해짐
				pointRadius : 0, // 각 지점에 포인트 주지 
				data : vardata
			} ]
		},

		options : {
			responsive : true,
			legend : {
				display : true
			},
			tooltips : {
				mode : 'index',
				intersect : false
			},

			hover : {
				mode : 'nearest',
				intersect : true
			},
			 scales: {
				    xAxes: [{
				      gridLines: {
				        display: false
				   
				      }
				    }],
				    yAxes: [{
				      gridLines: {
				    	  display: false,
				        borderDash: [2, 5],
				      }
				    }]
				  }
		}
	})
}





</script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/charts/Chart.js"></script>

</html>

