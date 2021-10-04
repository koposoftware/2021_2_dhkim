<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<jsp:include page="../header.jsp"/>
<script>

$(document).on("click", ".blue-button", function() {
	var heart = $(this).attr('data-id');
	var money = $(this).attr('data-value')

	$(".modal-body #addheartmodal").val(heart);
	$(".modal-body #addheartmodal2").val(money);

});


$(document).on("click", ".blue-button2", function() {
	var type = $(this).attr('data-id');
	var heart = $(this).attr('data-value')
	$(".modal-body #changemodal").val(type);
	$(".modal-body #changemodal2").val(heart);

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
						<li >교환소</li>
						
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
                            <h3>하트 충전</h3>
                            <p>하트가 부족하다면 충전할 수 있습니다.</p>
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="pricing-content">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">30개</span>
                                    </div>
                                    <span class="per-day">1회</span>
                                </div>
                                <ol class="pricing-text">
                                    <li class="check">하트 30개 충전</li>
                                    <li class="check">가격 1600원</li>
                                 
                                </ol>
                                <div class="price-btn blue">
                                    <a class="blue-button" data-id="30" data-value="1600" data-toggle="modal" href="#modal">신청하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">50개</span>
                                    </div>
                                    <span class="per-day">1회</span>
                                </div>
                               <ol class="pricing-text">
                                    <li class="check">하트 50개 충전</li>
                                    <li class="check">가격 2500원</li>
                                	
                                </ol>
                                <div class="price-btn blue">
                                    <a class="blue-button" data-id="50" data-value="2500" data-toggle="modal" href="#modal">신청하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <div class="top-price-inner">
                                   <span class="base">Popular</span>
                                   <div class="rates">
                                        <span class="prices">100개</span>
                                    </div>
                                    <span class="per-day">1회</span>
                                </div>
                                <ol class="pricing-text">
                                    <li class="check">하트 100개 충전</li>
                                    <li class="check">가격 3000원</li>
                                
                                </ol>
                                <div class="price-btn blue">
                                    <a class="blue-button" data-id="100" data-value="3000" data-toggle="modal" href="#modal">신청하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <span class="base">Best sale</span>
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">200개
                                    </div>
                                    <span class="per-day">1회</span>
                                </div>
                               <ol class="pricing-text">
                                    <li class="check">하트 200개 충전</li>
                                    <li class="check">가격: 5000원 </li>
   
                                </ol>
                                <div class="price-btn blue">
                                     <a class="blue-button" data-id="200" data-value="5000" data-toggle="modal" href="#modal">신청하기</a>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
						<br>
						<br>
                            <h3>쿠폰구매</h3>
                            <p>보유한 하트를 통하여 혜택을 받을 수 있습니다.</p>
                            <a href="${pageContext.request.contextPath}/waggle/listcoupon">쿠폰리스트</a>
						</div>
					</div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">100%</span>
                                    </div>
                                    <span class="per-day">1 Day</span>
                                </div>
                              <ol class="pricing-text">
                                    <li class="check">수수료 100% 절감 쿠폰</li>
                                    <li class="check">필요 하트 100개</li>
                                
                                </ol>
                                <div class="price-btn blue">
                                    <a class="blue-button2" data-id="1" data-value="300" data-toggle="modal" href="#modal2">교환하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                               <span class="base">Best plan</span>
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">100%
                                    </div>
                                    <span class="per-day">5 days</span>
                                </div>
                                 <ol class="pricing-text">
                                    <li class="check">수수료 100% 절감 쿠폰</li>
                                    <li class="check">필요 하트 300개</li>
                                
                                </ol>
                                <div class="price-btn blue">
                                   <a class="blue-button2" data-id="5" data-value="300" data-toggle="modal" href="#modal2">교환하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">100%</span>
                                    </div>
                                    <span class="per-day">4 weeks</span>
                                </div>
                                <ol class="pricing-text">
                                    <li class="check">수수료 100% 절감 쿠폰</li>
                                    <li class="check">필요 하트 1000개</li>
                                
                                </ol>
                                <div class="price-btn blue">
                                    <a class="blue-button2" data-id="28" data-value="1000" data-toggle="modal" href="#modal2">교환하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="pri_table_list">
                                <span class="base">Top plan</span>
                                <div class="top-price-inner">
                                   <div class="rates">
                                        <span class="prices">주식뽑기</span>
                                    </div>
                                    <span class="per-day">1 회</span>
                                </div>
                                 <ol class="pricing-text">
                                    <li class="check"> 주식뽑기</li>
                                    <li class="check">필요 하트 1000개</li>
                                
                                </ol>
                                <div class="price-btn blue">
                                  <a class="blue-button2" data-id="100" data-value="1000" data-toggle="modal" href="#modal2">교환하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title">하트결제</h4>					
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
				<div class="modal-body">
				<a class="support-images" href="#"><i class="flaticon-035-savings"></i></a>
				<div class="support-content">	
				<h6>결제하시겠습니까?</h6>
				<form action="${pageContext.request.contextPath}/waggle/addheart" method="post">
				<input type="text"  id="addheartmodal" name="heart" value="">
				<input type="text" id="addheartmodal2" name="money" value="">
				</div>
			</div>
			<div class="modal-footer">
				
				<input type="submit" id="button-modal" value="결제">
				<button id="button-modal2" data-dismiss="modal">닫기</button>
				</form>
			</div>
		</div>
	</div>
	</div>
	  <div class="modal fade" id="modal2" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title">하트결제</h4>					
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
				<div class="modal-body">
				<a class="support-images" href="#"><i class="flaticon-035-savings"></i></a>
				<div class="support-content">	
				<h6>결제하시겠습니까?</h6>
				<form action="${pageContext.request.contextPath}/waggle/change" method="post">
				<input type="text"  id="changemodal" name="coupontype" value="">
				<input type="text" id="changemodal2" name="heart" value="">
				</div>
			</div>
			<div class="modal-footer">
				<input type="submit" id="button-modal" value="교환">
				<button id="button-modal2" data-dismiss="modal">닫기</button>
				</form>
			</div>
		</div>
	</div>
	
	
</div>
        
		<!-- all js here -->
        <!-- Start Footer Area -->
   <jsp:include page="../footer.jsp"/>
   
        <!-- End Footer area -->
		
		
	</body>
</html>