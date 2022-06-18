<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

<style>


div.container {
	padding-top: 200px;
	font-family: 'Nanum Myeongjo', serif;
	width: 652px;
	padding-bottom: 200px;
}


.buy {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  font-size: large;
  padding: 12px 0;
  width: 49.3%;
}
.buy:hover {
  background-color: #937062d4;
}
html input[type=text]{
	background-color: #f7f7f7;
}
.cancel {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  font-size: large;
  padding: 11px 0;
  width: 49.3%;
}
.cancel:hover {
  background-color: #e7e2e2;
}

html input[type=button]{
	background-color: #937062;
	border: none;
	color: #fff;
}

html input[type=button]:hover{
	background-color: #937062d4;
}


.point{
	background-color: #f7f7f7;
	border: 1px solid #937062;
	color: #937062;
}

.point:hover{
	background-color: #e7e2e2;
}

.search{
	display: flex;
	padding: 5px;
}

.form-divy{
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

.addr{
	padding-top : 5px;
}


.subtitle{
	border-top: 2px solid #937062;
	border-bottom: 1px solid #937062;
	width: 652px;
	margin-left: -15px;
    height: 50px;
	padding: 15px;
	font-weight: bold;
	font-size: 18px;
}
.imagetd{
	width:20%;
}
.content{
	text-align: left;
	padding-left: 20px
}
.buttons{
	width:652px;
	margin-left: -20px;
}
.payProduct{
	border-top: 2px solid #937062;
	width: 652px;
	margin-left: -15px;
    padding-top:20px;
}

.paycontent{
	border-top: 2px solid #937062;
	width: 652px;
	margin-left: -15px;
	padding-top: 20px;
}
.sectd{
	display: flex;
}
.payment{
	width:84%;
	text-align: right;
}

.totalpay{
	font-size: 20px;
}
.totals{
	color: #FF4800;
}
.info{
	width: 15%;
	font-weight: bold;
}
</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		//============= "구매"  Event 연결 =============
		
		///*	
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#iamportPayment" ).on("click" , function() {
				console.log($("#usedCoupon").val());
				fncAddPurchase();
			});
		});	
		//*/
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(".cancel").on("click" , function() {
				history.go(-1);
			});
		});	
	
		//============= 주소값 표시 =============
		 $(function() {	
			var addr = $("input:hidden[name='divyAddr']").val();
			console.log(addr);
			///*
			if(addr.indexOf('/',0) != -1){
				var list = addr.split('/');
				
				$("#sample6_postcode").val(list[0]);
				$("#sample6_address").val(list[1]);
				$("#sample6_detailAddress").val(list[2]);
				$("#sample6_extraAddress").val(list[3]);
				
			}else{
				$("#sample6_address").val(addr);
			}
			//*/
			
			
		 });	

		//====================================================
		function fncAddPurchase() {
			
			
			var addr = $("#sample6_postcode").val() + "/" +  $("#sample6_address").val() + "/" +  $("#sample6_detailAddress").val() + "/" + $("#sample6_extraAddress").val();
			console.log('submit');
			console.log(addr);
			$("input:hidden[name='divyAddr']").val( addr );
			
			$("form").attr("method" , "POST").attr("action" , "/purchase/addPurchase").submit();

			
		}
		

		//======= 총결제금액 및 적립포인트 계산 =============================================
		$(function() {
			var price = $( "#price" ).val();
			console.log("price: "+price);
			
			var quantity = $("#purchaseQuantity").val();
			console.log("quantity: "+quantity);
			
			var earnpoint = Math.round(price*0.05*quantity);
			console.log("earnpoint: "+earnpoint);
			
			$( "#earnPoint" ).val(earnpoint);
			$("#totalprice").val(price*quantity);
		});	
		
		
		//======= 포인트 모두사용 =============================================	
		$(function() {
			$("#point" ).on("click" , function() {
			var allpoint = $(this).val();
			console.log("포인트 모두사용: "+allpoint);
			
			$( "#usedPoint" ).val(allpoint);
			});
		});	
		 
		
		
		
		//======= 총결제금액 및 적립포인트 계산 =============================================
		$(function() {
			
			var applycoupon = 0;
			var applypoint=0;
			var express=3000;
			
			
			var quantity = 0;
			var price = Number("${product.prodDisPrice}");
			
			console.log("총 상품금액: "+price);
			
			
			var earnpoint = Math.round(price*0.05);
			console.log("earnpoint: "+earnpoint);
			
			$( "#earnPoint" ).val(earnpoint);
			$("#totalProdPrice").val(price);
			$("#totalDivyFee").val(express);
			$("#totalpayment").val(price+express);
			
			$("#usingpoint").val(applypoint);
			$("#couponuse").val(applycoupon);
			$("#divyfee").val(express);
			$("#usingpoint").attr('size', $("#usingpoint").val().length);
			$("#couponuse").attr('size', $("#couponuse").val().length);
			$("#divyfee").attr('size', $("#divyfee").val().length);
			
			//==============================================
			
			$("#usedPoint").on( "change", function() { 
				
				var usepoint = $("#usedPoint").val();
				$("#usingpoint").val(usepoint);
				$("#usingpoint").attr('size', $("#usingpoint").val().length);
				
				var totalprod = $('#totalProdPrice').val();
				var usecoupon = $('#couponuse').val();
				
				
				$("#totalpayment").val(totalprod-usepoint-usecoupon+express);
				
			  });
			
			//==============================================
			
			$("#usedCoupon").on( "change", function() { 
			
				var disvalue = $("#usedCoupon>option:selected").attr('disvalue');
				var disrate = price*$("#usedCoupon>option:selected").attr('disrate');
				
				console.log("disvalue: "+disvalue);
				console.log("disrate: "+ disrate);
				
				applycoupons = Number(disvalue)+Number(disrate)
				
				$("#couponuse").val(applycoupons);
				$("#couponuse").attr('size', $("#couponuse").val().length);
				
				var usepointa = $("#usingpoint").val();
				var totalproda = $('#totalProdPrice').val();
				
				$("#totalpayment").val(totalproda-usepointa-applycoupons+express);
				
			  });
			
			//==============================================
			
			$("#point" ).on("click" , function() {
				allpoint = $(this).val();
				var ttpay = $("#totalpayment").val();
				
					if(allpoint-(price+express) >= 0){
						
						$( "#usedPoint" ).val(ttpay);
						$("#usingpoint").val(ttpay);
						$("#usingpoint").attr('size', $("#usingpoint").val().length);
						$("#totalpayment").val(0);
						
					}else{
						
						
						$("#usingpoint").val(allpoint);
						$("#usingpoint").attr('size', $("#usingpoint").val().length);
						var totalprodb = $('#totalProdPrice').val();
						var usecouponb = $('#couponuse').val();
						
						
						$("#totalpayment").val(totalprodb-allpoint-usecouponb+express);
					}
				
				
				});
			
			});
			//==============================================
			
		
		
	</script>		
<!-- 주소록 --> 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script> 
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
  

/*

	
	$(function() {
		
		$("#iamportPayment").on("click" , function() {
			console.log("아임포트");		
			
			var payopt = $("#iamportPayment").attr('value');
			console.log("payopt: "+payopt);
			$("#paymentOpt").val(payopt);
			
			payment();	
		});
	});	
	
function payment(data) {
	
	var payment = $("#paymentOpt").val();
	console.log("payment: "+payment);
	
	var prodname = $("#prodname").val();
	console.log("prodname: "+prodname);
	
	var prodprice = $("#prodprice").val();
	console.log("prodprice: "+prodprice);

	var buyeremail = $("#buyeremail").val();
	console.log("buyeremail: "+buyeremail);

	var buyername = $("#buyername").val();
	console.log("buyername: "+buyername);

	var buyerphone = $("#buyerphone").val();
	console.log("buyerphone: "+buyerphone);
	
	var address = $("#sample6_address").val();
	console.log("address: "+address);
	
	var postcode = $("#sample6_postcode").val();
	console.log("postcode: "+postcode);
	
	var uid="${uid }";
	console.log("uid: "+uid);
	
	IMP.init('imp05238113'); 
    
    IMP.request_pay({
    	pg : "kakaopay", 
        pay_method : payment,
        merchant_uid : uid ,
        name : prodname ,
        amount : prodprice ,
        buyer_email : buyeremail ,
        buyer_name : buyername ,
        buyer_tel : buyerphone ,
        buyer_addr : address ,
        buyer_postcode : postcode 
    }, function(rsp) {
    	console.log(rsp);
    	$.ajax({

        	type : "POST",
        	url : "/purchase/json/verifyIamport?imp_uid=" + rsp.imp_uid 
        	
        }).done(function(data) {
        	
        	console.log(data);
        	
        	if(rsp.paid_amount == data.response.amount){
	        	alert("결제 및 결제검증완료");
	        	fncAddPurchase();
        	} else {
        		alert("결제 실패");
        	}
        });
    });
	
}
    //*/
    


    </script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
        <jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
<div class="container">
	<div class="layout">
			<br>
				<h1 class="bg-defualt text-center">PURCHASE</h1><br>
				
				<!-- form Start /////////////////////////////////////-->
				<form class="form-horizontal">
				
				  <input type="hidden" name="prodNo" value="${product.prodNo }" />
				  <input type="hidden" name="userId" value="${user.userId }" />
		
			  
			<div>
				  
				  <div class="subtitle">
				  <p>배송정보</p>
				  </div><br>
				  	  
				  <div class="form-group">
				    <label for="receiverName">받는분 이름</label>
				      <input type="text" class="form-control" id="receiverName" name="receiverName" value="${user.userName}">
				  </div>
				  
				 <div class="form-group">
				    <label for="receiverPhone">연락처</label>
				      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" value="${user.phone}">
				  </div>
				  
				  <c:if test="${!empty user}">
				      <input type="hidden" class="form-control" id="receiverEmail" name="receiverEmail" value="${user.userId}">
				  </c:if>
				  
				  <c:if test="${empty user}">
					  <div class="form-group">
					    <label for="receiverEmail">이메일</label>
					      <input type="text" class="form-control" id="receiverEmail" name="receiverEmail" placeholder="비회원 구매" >
					  </div>
				  </c:if>
				  
				  <div class="form-group divyAddr">
				    <label for="divyAddr">배송지</label>
				    <table style="width:652px">
				    	<tr>
				    	<td>
				        <input type="text" class="form-divy postcode" id="sample6_postcode" name="postcode" placeholder="우편번호" value="">
				        </td>
				        <td class="search" >
						<input type="button" class="form-divy searchpost" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						</td>
						</tr>
						
						<tr>
						<td colspan="2">
						<input type="text" class="form-divy" id="sample6_address" name="address" placeholder="주소" value=""><br>
						</td>
						</tr>
						<tr>
						<td colspan="2"  class="addr">
						<input type="text" class="form-divy" id="sample6_detailAddress" name="detailAddress" placeholder="상세주소" value=""><br>
						</td>
						</tr>
						<tr>
						<td colspan="2" class="addr">
						<input type="text" class="form-divy" id="sample6_extraAddress" name="extraAddress" placeholder="참고항목" value="">
						</td>
						</tr>
						
					</table>
				    	<input type="hidden" class="form-divy" name="divyAddr" value="${user.addr}">
				  </div>
				  
				  
				   <div class="form-group">
				    <label for="divyMessage">배송메시지</label>
				      <input type="text" class="form-control" id="divyMessage" name="divyMessage" placeholder="요청사항을 적어주세요."  >
				  </div>
				
			</div>
				  
				  
			<div>
			<br>
				  <div class="subtitle">
				  <p>주문상품</p>
				  </div><br>
				  
				  <div class="form-group">
				  <table style="width: 100%">
					  <tr>
						<td class="imagetd">
							<img src="/resources/images/uploadFiles/${product.prodThumbnail.split('&')[0]}" class="image" width="120" height="120">
						</td>
						<td class="content">
							<p style="font-weight: bold;font-size: 15px">${product.prodName}</p>
							<p>${product.prodDisPrice} 원</p>
							<p>배송비: 3000 원</p><input type="hidden" class="form-control" id="divyFee" name="divyFee" value="3000">
							<p>구매수량: ${quantity} 개</p><input type="hidden" min="0" class="form-control" id="purchaseQuantity" name="purchaseQuantity" value="${quantity}" />
							<c:if test="${product.couponApply == 'N' }">
								<p style="color:#F0445C">*쿠폰 적용이 불가능한 상품입니다.</p>
							</c:if>
						  	<input type="hidden" id="price" value="${product.prodDisPrice}">
					  	
					  	</td>
					  </tr>
				 </table>		 
				</div>
			</div>	  
			<div>	  
				 <br>
				<div class="subtitle">
				  <p>쿠폰 / 포인트</p>
				  </div><br>
				  
				 
				 <div class="form-group">
				    <label for="usedCoupon">쿠폰 사용</label>
				   	  <c:if test="${product.couponApply == 'Y' }">
				   	  		
				      		<select name="usedCoupon" class="form-control" id="usedCoupon">
				      			<option value=""> 사용할 쿠폰을 선택해주세요 </option>
						      		<c:forEach var="couponlist" items="${coupon}">
						      			<option value="${couponlist.issueNo}" disvalue="${couponlist.discountValue}" disrate="${couponlist.discountRate}">${couponlist.couponName}</option>
						      		</c:forEach>
				      		</select>
				      		
				      </c:if>
				      <c:if test="${product.couponApply == 'N' }">
				      	<input type="text" class="form-control" id="usedCoupon"  placeholder="쿠폰적용이 불가한 상품입니다." readonly >
				      </c:if>
				  </div>
				  
				  
				  
				  <div class="form-group">
				    <label for="usedPoint">포인트 사용</label>
				     <table>
				    	<tr>
				    	<td>
				      <input type="text" class="form-control" id="usedPoint" name="usedPoint" value="0">
				      </td>
				      <td class="search">
				      <button type="button" class="point" id="point" value="${user.holdpoint }">모두 사용</button>
				      <h5>&emsp;보유 포인트 ${user.holdpoint } P</h5>
				      </td>
				      </tr>
				      </table>
				  </div>
				  
			</div>
				  <br>
			<section class="paycontent">	    
				  
				  <div class="sectd">
				  	<h5 class="info">총 상품금액</h5>
				  	<div class="payment"><input type="text" id="totalProdPrice" value="" size="" style="border:none;text-align:right">원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5 class="info">쿠폰 사용</h5>
				  	<div class="payment">-<input type="text" id="couponuse" value="" size=""  style="border:none;text-align:right">원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5 class="info">포인트 사용</h5>
				  	<div class="payment">-<input type="text" id="usingpoint" value="" size=""  style="border:none;text-align:right">P</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5 class="info">배송비</h5>
				  	<div class="payment">+<input type="text" id="divyfee" value="" size=""  style="border:none;text-align:right">원</div>
				  </div>
				  
				  <br>
				  
				  <div class="sectd">
				  	<h5 class="info">총 결제금액</h5>
				  	<div class="payment totals"><strong class="totalpay"><input type="text" id="totalpayment" value="" size=""  style="border:none;text-align:right"></strong>원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h6 class="info">적립 포인트</h6>
				  	<div class="payment totals"><input type="text" id="earnPoint" name="earnPoint" value="" size=""  style="border:none;text-align:right"> P</div>
				  </div>
				  
				  
				  <hr>
				  
				  
			</section>
			
			
			<input type="hidden" name="paymentOpt" id="paymentOpt" value="KA">
			
			</form>
			
			<!-- 결제하기 /////////////////////////////////////-->	
			<input type="hidden" id="prodname" value="${product.prodName }"/>
			<input type="hidden" id="prodprice" value="${product.prodDisPrice }"/>
			<input type="hidden" id="buyeremail" value="${user.userId }"/>
			<input type="hidden" id="buyername" value="${user.userName }"/>
			<input type="hidden" id="buyerphone" value="${user.phone }"/>
			
	
			<br>
			<div class="text-center  buttons">
				<button type="button" class="buy" id="iamportPayment" value="KA">결제하기</button>	
				<button type="button" class="cancel" href="#" role="button">취&emsp;소</button>
			</div>
				
			<br>
 	</div>
</div>	
	
</body>

</html>