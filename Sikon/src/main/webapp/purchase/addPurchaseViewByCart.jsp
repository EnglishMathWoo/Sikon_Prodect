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
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">

<style>


div.container {
	padding-top: 200px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
	width: 652px;
	padding-bottom: 200px;
}
html input[type=text]{
	background-color: #f7f7f7;
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
.buttons{
	width:652px;
	margin-left: -20px;
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
	padding: 12px;
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

.payProduct{
	border-top: 2px solid #937062;
	width: 652px;
	margin-left: -15px;
    padding-top:20px;
}

.sectd{
	display: flex;
}
.payment{
	width:84%;
	text-align: right;
	font-family: 'Apple SD Gothic Neo',NanumBarunGothic;
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
.payul{
	display: grid;
    grid-template-columns: repeat(2, 1fr);
    margin-left: -25px;
}
</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		/*
		//============= "구매"  Event 연결 =============
		 $(function() {
			$( "#iamportPayment" ).on("click" , function() {
				console.log('구매');
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
			
			$("form").attr("method" , "POST").attr("action" , "/purchase/addPurchaseByCart").submit();

			
		}
		

		//======= 총결제금액 및 적립포인트 계산 =============================================
		$(function() {
			
			var applycoupon = 0;
			var applypoint=0;
			var express=3000;
			
			
			var price = 0;
			var quantity = 0;
			var totalProdPrice =0;
			var num =0;
			
			
	   		<c:forEach var="cart" items="${cartlist }" >
	   		num += 1;
	   		price = Number(${cart.cartProd.prodDisPrice});
	   		quantity = Number(${cart.quantity});
	   		totalProdPrice+=(price*quantity);
	   		</c:forEach>
		   	
	   		
			console.log("상품종류 수: "+num);
			console.log("총 상품금액: "+totalProdPrice);
			
			
			var earnpoint = Math.round(totalProdPrice*0.05);
			console.log("earnpoint: "+earnpoint);
			
			$( "#earnPoint" ).val(earnpoint);
			$("#totalProdPrice").val(totalProdPrice);
			$("#totalDivyFee").val(num*express);
			$("#totalpayment").val(totalProdPrice+(num*express));
			
			$("#usingpoint").val(applypoint);
			$("#couponuse").val(applycoupon);
			$("#divyfee").val((num*express));
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
				
				
				$("#totalpayment").val(totalprod-usepoint-usecoupon+(num*express));
				
			  });
			
			//==============================================
			
			$("#usedCoupon").on( "change", function() { 
			
				var disvalue = $("#usedCoupon>option:selected").attr('disvalue');
				var disrate = totalProdPrice*$("#usedCoupon>option:selected").attr('disrate');
				
				applycoupons = Number(disvalue)+Number(disrate)
				
				$("#couponuse").val(applycoupons);
				$("#couponuse").attr('size', $("#couponuse").val().length);
				
				var usepointa = $("#usingpoint").val();
				var totalproda = $('#totalProdPrice').val();
				
				$("#totalpayment").val(totalproda-usepointa-applycoupons+(num*express));
				
			  });
			
			//==============================================
			
			$("#point" ).on("click" , function() {
				allpoint = $(this).val();
				var ttpay = $("#totalpayment").val();
				
					if(allpoint-(totalProdPrice+(num*express)) >= 0){
						
						$( "#usedPoint" ).val(ttpay);
						$("#usingpoint").val(ttpay);
						$("#usingpoint").attr('size', $("#usingpoint").val().length);
						$("#totalpayment").val(0);
						
					}else{
						
						
						$("#usingpoint").val(allpoint);
						$("#usingpoint").attr('size', $("#usingpoint").val().length);
						var totalprodb = $('#totalProdPrice').val();
						var usecouponb = $('#couponuse').val();
						
						
						$("#totalpayment").val(totalprodb-allpoint-usecouponb+(num*express));
					}
				
				
				});
			
			//==============================================
			
		});	
		
	</script>		
<!-- 주소록 --> 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; 
                var extraAddr = ''; 

                if (data.userSelectedType === 'R') { 
                    addr = data.roadAddress;
                } else { 
                    addr = data.jibunAddress;
                }

                
                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                //
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script> 
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
  



	
	$(function() {
		
		$("#iamportPayment").on("click" , function() {
			console.log("아임포트");		
			
			var soldout = $("#soldout").val();
			console.log("stock: "+soldout);
			
			if(soldout == 'none'){
				alert('재고없음');
				return null;
			}
			
				if($("#paybyca").prop("checked")){
					
					$("input[name=paymentOpt]").val("CA");
					paymentCA();
					
				}else{

					$("input[name=paymentOpt]").val("KA");
					paymentKA();
					
				}
				
				
				if($("#totalpayment").val()<100){
					alert('최소결제금액은 100원입니다.');
					return null;
				}
				
		});
	});	
	
function paymentKA(data) {
	
	var payment = $("#paymentOpt").val();
	console.log("payment: "+payment);
	
	var prodname = $("#prodname").val();
	console.log("prodname: "+prodname);
	
	var prodprice = $("#totalpayment").val();
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
        		$("#impNumber").val(rsp.imp_uid);
	        	fncAddPurchase();
        	} else {
        		alert("결제가 중단되었습니다.");
        	}
        });
    });
	
}

function paymentCA(data) {
	
	var payment = $("#paymentOpt").val();
	console.log("payment: "+payment);
	
	var prodname = $("#prodname").val();
	console.log("prodname: "+prodname);
	
	var prodprice = $("#totalpayment").val();
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
    	pg : "html5_inicis", 
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
        		$("#impNumber").val(rsp.imp_uid);
	        	fncAddPurchase();
        	} else {
        		alert("결제가 중단되었습니다.");
        	}
        });
    });
	
}
    


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
				<h1 class="bg-defualt text-center"  style="color:#333;font-family: 'Tiro Devanagari Sanskrit', serif;">| P U R C H A S E |</h1><br>
				
				<!-- form Start /////////////////////////////////////-->
				<form class="form-horizontal">
				
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
			<c:forEach var="cart" items="${cartlist}">	  
				  <div class="form-group">
				  <table style="width: 100%">
					  <tr>
						<td class="imagetd">
							<img src="/resources/images/uploadFiles/${cart.cartProd.prodThumbnail.split('&')[0]}" class="image" width="120" height="120">
						</td>
						<td class="content" >
							<p style="font-weight: bold;font-size: 15px">${cart.cartProd.prodName}</p>
							<p>${cart.cartProd.prodDisPrice} 원</p>
							<p>배송비: 3000 원</p>
							
							<c:if test="${cart.cartProd.prodStock == 0}">
								<p style="color:#ff4800">*품절된 상품입니다.</p>
								<script>
									$(function() {
										$("#soldout").val("none");
									});
								</script>
							</c:if>
							<c:if test="${cart.cartProd.prodStock > 0}">
								<p>구매수량: ${cart.quantity} 개</p>
							</c:if>
							
							<c:if test="${cart.cartProd.couponApply == 'N' }">
								<p style="color:#F0445C">*쿠폰 적용이 불가능한 상품입니다.</p>
							</c:if>
					  		<input type="hidden" class="cartNo" name="cartNo" value="${cart.cartNo}">
					  		
					  	</td>
					  </tr>
				 </table>		 
				</div>
				
			</c:forEach>	
				
			</div>	  
			<div>	  
				 <br>
				<div class="subtitle">
				  <p>쿠폰 / 포인트</p>
				  </div><br>
				  
				 
				 <div class="form-group">
				    <label for="usedCoupon">쿠폰 사용</label>
				   <c:forEach var="cart" items="${cartlist}" begin="0" end="0"> 
				    
				   	  <c:if test="${cart.cartProd.couponApply == 'Y' }">
				   	  		
				      		<select name="usedCoupon" class="form-control" id="usedCoupon">
				      			<option class="selectopt" value="none" disvalue="0" disrate="0"> 사용할 쿠폰을 선택해주세요 </option>
						      		<c:forEach var="couponlist" items="${coupon}">
						      			<option class="selectopt" value="${couponlist.issueNo}" disvalue="${couponlist.discountValue}" disrate="${couponlist.discountRate}">${couponlist.couponName}</option>
						      		</c:forEach>
				      		</select>
				      		
				      </c:if>
				      <c:if test="${cart.cartProd.couponApply == 'N' }">
				      	<input type="text" class="form-control" id="usedCoupon"  placeholder="쿠폰적용이 불가한 상품입니다." readonly >
				      </c:if>
				      <input type="hidden" id="prodname" value="${cart.cartProd.prodName}">
				     </c:forEach> 
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
				      <h5 style="font-weight:normal ;color: #7c7a7a">&emsp;보유 포인트 ${user.holdpoint } P</h5>
				      </td>
				      </tr>
				      </table>
				  </div>
				  
			</div>
				  <br>
				  
		  <div class="subtitle">
		  <p>결제금액</p>
		  </div><br>
			<section>	    
				  
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
				  	<div class="payment">+<input type="text" id="divyfee" value="" size="" name="divyFee"" style="border:none;text-align:right">원</div>
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
				  
				  
				  
				  
			</section>
			<br>
			
				<div class="subtitle">
				  <p>결제수단</p>
				  </div><br>
				  
				 
				 <div class="form-group">
				 <ul class="payul">
				 	<li>
				 		<input type="radio" name="payoption" id="paybyca" checked/> <span style="font-size:16px; font-weight: bold;">신용카드</span>
				    </li>
				    <li> 
				    	<input type="radio" name="payoption"/> <img src="https://storage.wcuisine.net/web-assets/images/img-pay-kakao@3x.png" alt="kakaopay icon" width="58" height="24">
				  	</li>
				  </ul>
				  </div>
				  
			<input type="hidden" name="impNumber" id="impNumber" value="">
			<input type="hidden" name="paymentOpt" id="paymentOpt" value="">
			
			</form>
			
			<!-- 결제하기 /////////////////////////////////////-->	

			<input type="hidden" id="buyeremail" value="${user.userId }"/>
			<input type="hidden" id="buyername" value="${user.userName }"/>
			<input type="hidden" id="buyerphone" value="${user.phone }"/>
			
			<input type="hidden" id="soldout" value=""/>
			
	
			<br>
			<div class="text-center buttons">
				<button type="button" class="buy" id="iamportPayment">결제하기</button>	
				<button type="button" class="cancel" href="#" role="button">취&emsp;소</button>
			</div>
				
			<br>
 	</div>
</div>	
	
</body>

</html>