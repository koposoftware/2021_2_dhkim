<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
@font-face { font-family: 'BMJUA'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff'); font-weight: normal; font-style: normal; }
@keyframes done {
    70% {
        transform: scale(1.2)
    }
    150% {
        transform: scale(1)
    }
}

html {
    font-family: BMJUA
}

*, ::before, ::after {
    box-sizing: border-box
}

body, div, button, h1 {
    font: inherit;
    padding: 0;
    margin: 0;
    border: 0;
    outline: 0;
    background: 0
}

#title {
    font-size: 3rem;
    margin: 2rem 0
}

#wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 10px
}

#numbers {
    display: flex;
    margin-bottom: 20px;
    padding: 30px;
  
    border-radius: 20px;
       
}

#numbers .ball {
    width: 100%;
    height: 80px;
    margin-right: 10px;
    line-height: 80px;
    font-size: 30px;
    border-radius: 50%;
    text-align: center;
}


#numbers .ball.done {
    animation: done .5s linear
}

#numbers .ball:last-child {
    margin-right: 0
}


#btn {
    position: relative;
    display: block;
    padding: 1rem 2.5rem 1.6rem;
    background: #fff;
    color: #666;
    border: 2px solid #666;
    border-radius: 6px;
    overflow: hidden;
    transition: .5s;
    user-select: none
}

#btn:hover {
    padding: 1rem 2.5rem 1rem;
    margin-top: .6rem;
    background: #999;
    color: #fff
}

#btn::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    display: block;
    height: .6rem;
    width: 100%;
    background-image: repeating-linear-gradient(45deg, #666, #666 1px, transparent 2px, transparent 5px);
    border-top: 1px solid #666;
    transition: .5s
}

#btn:hover::after {
    transform: translateY(.6rem)
}

#btn.hide {
    transform: scale(0)
}

@media screen and (max-width: 800px) {
    #numbers {
        flex-direction: column;
        align-items: center
    }

    #numbers .ball {
        margin-right: 0;
        margin-bottom: 10px
    }

    #numbers .ball:last-child {
        margin-bottom: 0
    }
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/green-horizotal/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jqbar.css" />
<!doctype html>
<html class="no-js" lang="en">

<!-- 
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script> -->


<!-- <script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script> -->
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
						<li>교환</li>

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

					<h3>하트 교환소</h3>

				</div>
			</div>
		</div>
	</div>
	<div class="blog-area fix page-padding">
		<div class="container">
			<div class="row">
				<div class="blog-sidebar-right">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<div class="row">
							<div class="blog-left-content">
								<!-- Start single blog -->
								<br> <br>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="widget-tabs-list">
										<div class="single-blog ">
											<div class="blog-image">

												<div class="tab-hd"></div>
												<div class="sidget-tabs-list">
													<ul class="nav nav-tabs">

														<li class="active"><a data-toggle="tab" href="#home"
															style="width: 150; text-align: center; color: #646464;">
																하트 </a></li>
														<li class><a data-toggle="tab" href="#menu1"
															aria-epended="false"
															style="width: 150; text-align: center; color: #646464;">
																쿠폰 </a></li>


													</ul>
													<div class="tab-content tab-custom-st">
														<div class="tab-pane fade in active " id="home">
															<div class="tab-ctn"></div>
															<br> <br>
															<div class="left-head-blog right-side">
															<h5>하트 구매</h5>
																<table class="table table-hover">
																	<thead style="background-color: aliceblue;"
																		class="thead-dark">
																		<tr>
																			<th width="10%">선택</th>
																			<th style="text-align: center">하트 갯수</th>
																			<th style="text-align: center">가격</th>

																		</tr>
																	</thead>
																	<tbody>
																		<form name="form">
																			<tr>
																				<td><input type="checkbox"
																					class="custom-control-input" id="d1"
																					value="100;5900" name="chkbox"
																					onclick="(this.form)"> <label
																					class="custom-control-label" for="d1"></label></td>
																				<td style="text-align: center">100개</td>
																				<td style="text-align: center"><input
																					type="hidden" value="5900" name="price">5,900원
																				</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"
																					class="custom-control-input" id="d2"
																					value="200;10900" name="chkbox"
																					onclick="heart(this.form)"> <label
																					class="custom-control-label" for="d2"></label></td>
																				<td style="text-align: center">200개</td>
																				<td style="text-align: center"><input
																					type="hidden" value="10900" name="price">10,900원
																				</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"
																					class="custom-control-input" id="d3"
																					value="500;23900" name="chkbox"
																					onclick="heart(this.form)"> <label
																					class="custom-control-label" for="d3"></label></td>
																				<td style="text-align: center">500개</td>
																				<td style="text-align: center"><input
																					type="hidden" value="23900" name="price">23,900원
																				</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"
																					class="custom-control-input" id="d4"
																					value="1000;45900" name="chkbox"
																					onclick="heart(this.form)"> <label
																					class="custom-control-label" for="d4"></label></td>
																				<td style="text-align: center">1,000개</td>
																				<td style="text-align: center"><input
																					type="hidden" value="45900" name="price">45,900원
																				</td>
																			</tr>
																			<tr>
																				<td><input type="checkbox"
																					class="custom-control-input" id="d45"
																					value="2000;86900" name="chkbox"
																					onclick="heart(this.form)"> <label
																					class="custom-control-label" for="d45"></label></td>
																				<td style="text-align: center">2,000개</td>
																				<td style="text-align: center"><input
																					type="hidden" value="86900" name="price">86,900원
																				</td>
																			</tr>
																	</tbody>
																</table>
																<div class="left-blog-page">
																	<br>
																	<hr>
																	<div style="text-align: end;">
																		<br> <br>
																		<h6>
																			총 하트 : <input name="total_sum" type="text"
																				style="border: none; text-align: end" readonly>
																			개<br>
																		</h6>
																		<h6>
																			총 가격 : <input name="total_sum2" type="text"
																				style="border: none; text-align: end" readonly>
																			원
																		</h6>

																		<br> <br>

																		<hr>
																	</div>
																	<div style="text-align: end;">
																		<button style="width: 300px" id="button-modal2"
																			onclick="pay()">결제</button>
																	</div>

																</div>

															</div>

														</div>
														<div id="menu1" class="tap-pane fade">
															<div class="tab-ctn">


																<div class="left-head-blog right-side">
																	<br> <br>
																	<h5>하트결제</h5>
																	<table class="table table-hover">
																		<thead style="background-color: aliceblue;"
																			class="thead-dark">
																			<tr>

																				<th style="text-align: center;background-color:#ddd">쿠폰 이름</th>
																				<th style="text-align: center;background-color:#ddd">필요 하트</th>
																				<th style="text-align: center;background-color:#ddd" width="15%">결제</th>

																			</tr>
																		</thead>
																		<form name="form2">
																			<tr>

																				<td style="text-align: center">주식뽑기쿠폰</td>
																				<td style="text-align: center">1000 개</td>
																				<td style="text-align: center"><a
																					href="javascript:use()">결제</a></td>

																			</tr>
																		</form>
																	</table>
																	<hr>
																	<br> <br>
																	<h5>내 쿠폰함</h5>
																	<div id="tab">
																	<table class="table table-hover">

																		<thead style="background-color:#ddd;"
																			class="thead-dark">
																			<tr>
																				<th witdh="30%" style="text-align: center;background-color:#ddd">쿠폰명</th>
																				<th witdh="30%" style="text-align: center;background-color:#ddd">쿠폰
																					번호</th>
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
																					<td style="text-align: center">${mycoupon.couponid}<input
																						type="hidden" id="couponcode"
																						value="${mycoupon.couponid}" /></td>


																					<td style="text-align: center"><a
																						href="#modalcode" onclick="set()" data-id="${mycoupon.couponid}"
																						data-toggle="modal" class="ialog2">공유</a></td>
																						
																						
																					<td style="text-align: center"><a data-id="${mycoupon.couponid}"
																						href="#modal2"  data-toggle="modal" class="ialog">사용</a></td>
																				</tr>
																				


																			</c:forEach>

																			<tr id="add">
																			</tr>
																		</tbody>
																	</table>

																</div>

															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
					<div
						class="statistic-right-area notika-shadow mg-tb-30 sm-res-mg-t-0">
						<div class="left-blog blog-category">
							<h4>정보</h4>
							<p></p>
						</div>


						<div class="past-statistic-an">
							<div class="past-statistic-ctn">
								<h3>
									<a href="${pageContext.request.contextPath}/like/follow"
										style="color: #646464"><i class="fa fa-heart"
										style="color: red"></i>&nbsp; &nbsp;<span class="counter"
										id="heart">${myheart}</span> </a>
								</h3>
								<a href="${pageContext.request.contextPath}/like/follow"
									style="color: #646464"><p>하트</p></a>
							</div>

						</div>
						<div class="past-statistic-an">
							<div class="past-statistic-ctn">
								<h3>
									<a href="${pageContext.request.contextPath}/like/follow"
										style="color: #646464"><i class="fa fa-money"
										style="color: green"></i>&nbsp; &nbsp;<span class="counter"
										id="balance">${cash}</span> </a>
								</h3>
								<a href="${pageContext.request.contextPath}/like/follow"
									style="color: #646464"><p>현금</p></a>
							</div>

						</div>

					</div>

					<div class="recent-items-wp notika-shadow sm-res-mg-t-30">
						<div class="rc-it-ltd">
							<div class="recent-items-ctn">
								<div class="left-blog blog-category">
									<h4>쿠폰 등록</h4>

								</div>
							</div>

							<input
								style="height: 34px; padding: 6px 12px; font-size: 14px; line-height: 1.42857143; color: #555; background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;"
								type="text">&nbsp;&nbsp;<i class="fa fa-plus"
								id="button-modal2"></i>

						</div>
					</div>


				</div>
			</div>
		</div>

		<!-- End Right Sidebar -->
	</div>
	<!-- End row -->
</div>
</div>
<div class="modal fade" id="modalcode" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">쿠폰확인하기</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body" align="center">
				&nbsp;&nbsp;<input type="text" style="border: none;"
					id="couponmodal" value="" readonly>
				<div id="bcTarget" style="margin-top: 30px;"></div>


			</div>
			<div class="modal-footer">
				<button id="button-modal"  onclick="sendLinkCustom()">카카오톡
					공유</button>
				<button id="button-modal2" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>



 <div class="modal fade" id="modal2" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">주식 뽑기</h4>
				
			</div>
			<div class="modal-body" align="center">
				<div id="wrapper">
        <h1 id="title"> 종목은?</h1>
        <div id="numbers">
            <div id="result" class="ball blue">?</div>
         
        </div>
        <button id="btn">추첨하기</button>
    </div>
   
    <form name="cat">
 <input type="hidden" id="modalvalue" value=""/>
			</div>
			<div class="modal-footer">
				<!-- onclick="couponuse(this.cat) -->
				<button id="button-modal2" onclick="couponuse()"  data-dismiss="modal">닫기</button>
			</div>
			</from>
		</div>
	</div>
</div> 


<!-- Start Footer Area -->
<jsp:include page="../footer.jsp" />

<!-- End Footer area -->

<div id="modalcc" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog modal-sm">

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

</body>



<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/jquery.knob.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/jquery.appear.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/knob/knob-active.js"></script> --%>
<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/flot-active.js"></script> --%>
<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/curvedLines.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.resize.js"></script> --%>
<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/flot/jquery.flot.js"></script> --%>


<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/sparkline-active.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/sparkline/jquery.sparkline.min.js"></script> --%>


<%-- <script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/waypoints.min.js"></script> --%>






<script>
var coupon_id;
var stockname;

$(".ialog").click(function(){ //

		coupon_id=$(this).data('id')
		
	})

	$(".ialog2").click(function(){ //

		coupon_id=$(this).data('id')
		
	})

	/* 쿠폰사용 delete* 쿠폰아이디 구해야함...*/
	 function couponuse(){
		 stockname = (codes[codes.length-1])
		 console.log(coupon_id)
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/couponuse",
			data : {
				coupon_id : coupon_id
			},
			success : function() {
				couponlist();
				insertstock();
			}
		}) 
		
	} 
function couponuse2(){
	console.log(coupon_id)
	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/couponuse",
		data : {
			coupon_id : coupon_id
		},
		success : function() {
			couponlist();
			
		}
	}) 
	
} 
	
	function insertstock(){
		console.log(stockname)
		 $.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/insertstock",
			data : {
				stock_name : stockname
			},
			success : function() {
				alert('쿠폰 1장으로 '+stockname+' 이(가) 매수되었습니다.')
			}
		})
		 
	}
	

	var numbers=[];
	var codes=[];
	function lottery() {
	    document.querySelectorAll(".ball").forEach((element, index) => {
	        element.classList.remove("done");
	        decryptEffect(element, index);
	        
	    });
	   
	}
	


		
	
	
	
	
	document.getElementById("btn").addEventListener("click", function () {
		 $.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/selectcode",
				dataType: 'json',
				success : function(result) {
						$.each(result, function(index,item) {	
							numbers.push(item.stock_name); 
					
					        btn.classList.add("hide");
					        lottery();
					      
						})					
				}
		 	
			})
     
	});
	
	
	function decryptEffect(element, time) {
	    const effect = setInterval(() => {
	    	 var random = Math.floor(Math.random() * numbers.length);
	        element.innerText = numbers[random];//숫자올라가는거
	        var modalvalue2= $('#result').text();
	        codes.push(modalvalue2);
	    }, 10);
	    setTimeout(() => {
	        clearInterval(effect);
	        element.classList.add("done");
	       
	        
	    }, time * 3000 + 1000);
	 
	
	}
	
	
	
	
	
	function pay() {
		var inputheart = $('input[name=total_sum]').val()
		var inputprice = $('input[name=total_sum2]').val()
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/heart/pay",
			data : {
				heart : inputheart,
				price : inputprice
			},
			dataType: 'json',
			success : function(result) {
		
				 alert("하트 충전이 완료되었습니다.");
				$('#heart').text(result.myheart)
				$('#balance').text(result.myprice)
				

			}
		})

	}
	
	function use() {
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/use/heart",
			data : {
				heart : 1000	},
			dataType: 'json',
			success : function(result) {
				alert("쿠폰으로 교환을 완료하였습니다.")
				$('#heart').text(result.hheart)
					couponlist();				

				} 

			})
	}
	
	
	
	

	function couponlist(){	
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/couponlist",
			dataType: 'text',
			success : function(result) {
				let html = $('<div>').html(result)
				let content =html.find('div#addcoupon');
				let contents =content.html();				
				$("#tab").html(contents);
			
		       }

			}) 

		}
	

	
	function set() {
		
		let coupon = $("#couponname").val() 
		$("#couponmodal").val(coupon)
	
		let couponid = $("#couponcode").val()
		$("#bcTarget").barcode(couponid, "codabar");
	} 

	
	
	
	
	

	function sendLinkCustom() {
	    Kakao.init("f54b29040061ba185ecba85fddaf2c24");
	    Kakao.Link.sendCustom({
	        templateId: 62031 
	    });
	    couponuse2();
	    
	}

	
	
	
	
	/* 하트계산 */
	function heart(frm) {
		var totalsum = [];
		var heartsum = 0;
		var pricesum = 0;
		var heartcount = frm.chkbox.length;
		for (var i = 0; i < heartcount; i++) {
			if (frm.chkbox[i].checked == true) {
				totalsum = frm.chkbox[i].value.split(';')
				heartsum += parseInt(totalsum[0])
				pricesum += parseInt(totalsum[1])
			}
		}
		frm.total_sum.value = heartsum;
		frm.total_sum2.value = pricesum;
	}
	

	 /* function modalf(param){
	alert('!')
		var $k=jQuery.noConflict();	
			$k('#info').text(param)
		
			$k('#modalcc').modal('show');
			alert('!!')
	 } */

	
</script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/charts/Chart.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/green-horizotal/js/counterup/counterup-active.js"></script>
<script type="text/JavaScript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-barcode.js"></script>
</html>