<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
<meta charset="EUC-KR">
	
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<style>


.formall{
	padding:220px;
	font-family: 'Nanum Myeongjo', serif;
}

html {
  line-height: 1;
}

ol, ul {
  list-style: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: none;
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
  content: none;
}

a img {
  border: none;
}

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
  display: block;
}

/* Colors */
/* ---------------------------------------- */
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  text-align: center;
  font-family: 'Nanum Myeongjo', serif;
  font-weight: 400;
}

a {
  text-decoration: none;
}


.info-text {
  text-align: left;
  width: 100%;
}

.form-group {
  margin-bottom: 20px;
}

h2.heading {
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 300;
  text-align: left;
  color: #937062;
  border-bottom: 1px solid #937062;
  padding-bottom: 3px;
  margin-bottom: 20px;
}

.controls {
  text-align: left;
  position: relative;
}
.controls input[type=text],
.controls input[type=email],
.controls input[type=number],
.controls input[type=date],
.controls input[type=tel],
.controls textarea,
.controls button,
.controls select {
  padding: 12px;
  font-size: 14px;
  border: 1px solid #c6c6c6;
  width: 100%;
  margin-bottom: 18px;
  color: #888;
  font-family: 'Nanum Myeongjo', serif;
  font-size: 16px;
  font-weight: 300;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -ms-border-radius: 2px;
  -o-border-radius: 2px;
  border-radius: 2px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}
.controls input[type=text]:focus, .controls input[type=text]:hover,
.controls input[type=email]:focus,
.controls input[type=email]:hover,
.controls input[type=number]:focus,
.controls input[type=number]:hover,
.controls input[type=date]:focus,
.controls input[type=date]:hover,
.controls input[type=tel]:focus,
.controls input[type=tel]:hover,
.controls textarea:focus,
.controls textarea:hover,
.controls button:focus,
.controls button:hover,
.controls select:focus,
.controls select:hover {
  outline: none;
  border-color: #937062;
}

.controls .fa-sort {
  position: absolute;
  right: 10px;
  top: 17px;
  color: #999;
}
.controls select {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  cursor: pointer;
}

.controls textarea {
  resize: none;
  height: 200px;
}

input:-webkit-autofill {
   -webkit-box-shadow: 0 0 0 1000px #fff inset;
   -webkit-text-fill-color: #888;
}

.submit {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
}
.submit:hover {
  background-color: #937062d4;
}

.cancel {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
}
.cancel:hover {
  background-color: #e7e2e2;
}

.point {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width: 30%;
}
.point:hover {
  background-color: #937062d4;
}
.DaumPostcode {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width:100%;
}
.DaumPostcode:hover {
  background-color: #937062d4;
}



.clear:after {
  content: "";
  display: table;
  clear: both;
}

.grid {
  background: #f7f7f7;
}
.grid:after {
  /* Or @extend clearfix */
  content: "";
  display: table;
  clear: both;
}

.grid [class*=col-]:last-of-type {
  padding-right: 0;
}

.col-2-3 {
  width: 66.66%;
}

.col-1-3 {
  width: 33.33%;
}

.col-1-2 {
  width: 50%;
}

.size {
  width: 25%;
}

[class*=col-] {
  float: left;
  padding-right: 10px;
}

@media (max-width: 760px) {
  .col-1-4-sm,
.col-1-3,
.col-2-3 {
    width: 100%;
  }

  [class*=col-] {
    padding-right: 0px;
  }
}
.col-1-8 {
  width: 12.5%;
}

</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		//============= "구매"  Event 연결 =============
		
		/*	
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#iamportPayment" ).on("click" , function() {
				alert('결제');
				console.log($("#usedCoupon").val());
				fncAddPurchase();
			});
		});	
		//*/
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
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
		
		$("button.iamportPayment").on("click" , function() {
			console.log("아임포트");		
			
			var payopt = $("button.iamportPayment").attr('value');
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
        if ( rsp.success ) {
            fncAddPurchase();
        } else {
        	alert("결제 실패");
            
        }
    });
	
}
    //*/
    


    </script>
	
</head>

<body>

<div>
	<jsp:include page="/layout/toolbar.jsp" />
</div>

<div class="container">
<div class="formall">

<h2>| PURCHASE |</h2>

<br><br><br>

<form action="">
  <!--  General -->
  <div class="form-group">
    <h2 class="heading">배송정보</h2>
    
    <div class="controls">
    <label for="prodName">받는분 이름</label>
      <input type="text" id="receiverName" class="floatLabel" name="receiverName" placeholder="${user.userName}">
    </div>
    
	<div class="controls">
	<label for="prodName">연락처</label>
	     <input type="text" id="receiverPhone" class="floatLabel" name="receiverPhone" placeholder="${user.phone}">
    </div>
    
	<c:if test="${!empty user}">
	    <input type="hidden" class="form-control" id="receiverEmail" name="receiverEmail" value="${user.userId}">
	</c:if>
    
   <c:if test="${empty user}"> 
   <div class="controls">
	<label for="prodName">이메일</label>
	     <input type="text" id="receiverEmail" class="floatLabel" name="receiverEmail" placeholder="${user.phone}">
    </div>
    </c:if>
    
    <div class="controls">
	<label for="prodName">배송지</label>
	<div>
	 <div class="grid">
		<div class="col-2-3 col-2-3-sm">
		<input type="text" id="sample6_postcode" name="postcode" placeholder="우편번호" value="">
		</div>
		<div class="col-1-3 col-1-3-sm">
		<input type="button" onclick="sample6_execDaumPostcode()" class="DaumPostcode" value="우편번호 찾기"><br>
		</div>
	</div>
		<input type="text" id="sample6_address" name="address" placeholder="주소" value=""><br>
		<input type="text" id="sample6_detailAddress" name="detailAddress" placeholder="상세주소" value=""><br>
		<input type="text" id="sample6_extraAddress" name="extraAddress" placeholder="참고항목" value="">
	    <input type="hidden" name="divyAddr" value="${user.addr}">
    </div>
    </div>
    
	<div class="controls">
	<label for="prodName">배송메시지</label>
	     <input type="text" id="divyMessage" class="floatLabel" name="divyMessage" placeholder="요청사항을 적어주세요.">
    </div>
   
   <br>
   
  </div>
  

  <div class="form-group">
    <h2 class="heading">주문상품</h2>
    
    <input type="hidden" name="prodNo" value="${product.prodNo }" />
	<input type="hidden" name="userId" value="${user.userId }" />
      
	<div class="controls">
	     <div style="border: 1px solid #937062; height:100px;"></div>
    </div>
    
    <input type="hidden" id="price" value="${product.prodDisPrice}">
    <input type="hidden" min="0" class="form-control" id="purchaseQuantity" name="purchaseQuantity" value="${quantity}">
		
 </div>
 
 <br>
  
  <div class="form-group">
    <h2 class="heading">쿠폰 / 포인트</h2>
    
    <div class="controls">
        <i class="fa fa-sort"></i>
        <c:if test="${product.couponApply == 'Y' }">
      		<select name="usedCoupon" id="usedCoupon" class="floatLabel">
	      		<option>사용할 쿠폰을 선택해주세요</option>
		      		<c:forEach var="couponlist" items="${coupon}">
		      		<option value="${couponlist.issueNo}">${couponlist.couponName}</option>
		      		</c:forEach>
      		</select>
      </c:if>
      <c:if test="${product.couponApply == 'N' }">
      	<input type="text" class="floatLabel" id="usedCoupon" name="usedCoupon" placeholder="쿠폰적용이 불가한 상품입니다." readonly >
      </c:if>
      </div>  
    
    <div class="grid">
	    <div class="col-1-2 col-1-2-sm">
	      <div class="controls">
	        <input type="text" id="usedPoint" class="floatLabel" name="usedPoint" value="0">
	      </div>      
	    </div>
	    <div class="col-1-2 col-1-2-sm">
	      <button Type="button" class="point" id="point" value="${user.holdpoint }">모두 사용</button>&emsp;     
	      보유 포인트 ${user.holdpoint } P
	    </div>
	    
	
	</div>
    
    
  </div>
  <div class="form-group">
    <h2 class="heading">결제금액</h2>
    
    <div class="controls">
    <label for="prodName">총 결제금액</label>
      <input type="text" id="totalprice" class="floatLabel" name="totalprice" value="" style="border:none;width:10%;text-align:right;">원
    </div>
    <div class="controls">
    <label for="prodName">적립 포인트</label>
      <input type="text" id="earnPoint" class="floatLabel" name="earnPoint" value="" style="border:none;width:10%;text-align:right;">P
    </div>
    
  </div>
  
  
  <h2 class="heading"></h2>
  
  	<button type="submit" value="Submit" class="size submit">구매하기</button> &nbsp;
	<button class="size cancel">취 소</button>
  
</form>


	</div>
</div>
	
</body>

</html>