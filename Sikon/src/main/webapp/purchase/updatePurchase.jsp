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
	padding-top: 220px;
	font-family: 'Nanum Myeongjo', serif;
	width: 652px;
	padding-bottom: 150px;
}


.update {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  font-size: large;
  padding: 12px 0;
  width: 49.3%;
}
.update:hover {
  background-color: #937062d4;
}

.check {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  font-size: large;
  padding: 11px 0;
  width: 49.3%;
}
.check:hover {
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

h5,h6{
	width: 15%;
	font-weight: bold;
}

label{
	width: 15%;
}

.sectd{
	display: flex;
}
.paycontent{
	border-top: 2px solid #937062;
	width: 652px;
	padding-top: 20px;
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
.form-group, .buttons{
	width: 652px;
}
</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(".check").on("click" , function() {
				history.go(-2);
			});
			
			$(".update").on("click" , function() {
				fncUpdatePurchase();
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
			
			
		function fncUpdatePurchase() {
			
			var addr = $("#sample6_postcode").val() + "/" +  $("#sample6_address").val() + "/" +  $("#sample6_detailAddress").val() + "/" + $("#sample6_extraAddress").val();
			console.log('submit');
			console.log(addr);
			$("input:hidden[name='divyAddr']").val( addr );
			
			$("form").attr("method" , "POST").attr("action" , "/purchase/updatePurchase?tranNo=${purchase.tranNo }").submit();
		
			
		}	
			
		
		
		
		
		 
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
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
        <jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
<div class="container">
<form>

			<br>
				<h1 class="bg-defualt text-center">결제내역</h1><br>

			<div class="subtitle">
			  <p>배송정보</p>
			</div><br>
		
				  
				 <div class="form-group">
				    <label for="receiverName">받는분 이름</label>
				      <input type="text" class="form-control" id="receiverName" name="receiverName" value="${purchase.receiverName }">
				  </div>
				  
				 <div class="form-group">
				    <label for="receiverPhone">연락처</label>
				      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" value="${purchase.receiverPhone}">
				  </div>
				  
				  <c:if test="${empty user}">
					  <div class="form-group">
					    <label for="receiverEmail">이메일</label>
					    <input type="text" class="form-control" id="receiverEmail" name="receiverEmail" value="${purchase.receiverEmail}">
					   
					  </div>
				  </c:if>
				  
				  <c:if test="${!empty user}">
				      <input type="hidden" class="form-control" id="receiverEmail" name="receiverEmail" value="${purchase.receiverEmail}">
				  </c:if>
				  
				  <div class="form-group divyAddr">
				    <label for="divyAddr">배송지</label>
				    <table style="width:652px">
				    	<tr>
				    	<td>
				        <input type="text" class="form-divy postcode" id="sample6_postcode" name="postcode" value="">
				        </td>
				        <td class="search" >
						<input type="button" class="form-divy searchpost" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						</td>
						</tr>
						
						<tr>
						<td colspan="2">
						<input type="text" class="form-divy" id="sample6_address" name="address"  value=""><br>
						</td>
						</tr>
						<tr>
						<td colspan="2"  class="addr">
						<input type="text" class="form-divy" id="sample6_detailAddress" name="detailAddress" value=""><br>
						</td>
						</tr>
						<tr>
						<td colspan="2" class="addr">
						<input type="text" class="form-divy" id="sample6_extraAddress" name="extraAddress" value="">
						</td>
						</tr>
						
					</table>
				    	<input type="hidden" class="form-divy" name="divyAddr" value="${purchase.divyAddr}">
				  </div>
				  
				  
				   <div class="form-group">
				    <label for="divyMessage">배송메시지</label>
				      <input type="text" class="form-control" id="divyMessage" name="divyMessage" value="${purchase.divyMessage}" >
				  </div>
				
		
				  
				  
			<div><br>
				  <div class="subtitle">
				  <p>주문상품</p>
				  </div><br>
				  
				  <div class="form-group">
				  <table style="width: 100%">
					  <tr>
						<td class="imagetd">
							<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" class="image" width="120" height="120">
						</td>
						<td class="content">
							<p style="font-weight: bold;font-size: 15px">${purchase.purchaseProd.prodName}</p>
							<p>${purchase.purchaseProd.prodDisPrice} 원</p>
							<p>배송비: 3000 원</p><input type="hidden" class="form-control" id="divyFee" name="divyFee" value="3000">
							<p>구매수량: ${purchase.purchaseQuantity} 개</p><input type="hidden" min="0" class="form-control" id="purchaseQuantity" name="purchaseQuantity" value="${purchase.purchaseQuantity}"  />
							<c:if test="${purchase.purchaseProd.couponApply == 'N' }">
								<p style="color:#F0445C">*쿠폰 적용이 불가능한 상품입니다.</p>
							</c:if>
						  	<input type="hidden" id="price" value="${purchase.purchaseProd.prodDisPrice}">
					  	
					  	</td>
					  </tr>
				 </table>		 
				</div>
			</div>	  
			
			
			<input type="hidden" name="paymentOpt" value="${purchase.paymentOpt}">
			<input type="hidden" name="usedCoupon" value="${purchase.usedCoupon}">
			<input type="hidden" name="usedPoint" value="${purchase.usedPoint}">
			<input type="hidden" name="earnPoint" value="${purchase.earnPoint}">
			
			
			
			
			
			
			
			<br>
				  
			<section class="paycontent">	    
				  
				  <div class="sectd">
				  	<h5>총 상품금액</h5>
				  	<div class="payment">${purchase.purchaseProd.prodDisPrice * purchase.purchaseQuantity}원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>쿠폰 사용</h5>
				  	<div class="payment">
				  		<c:if test="${!empty purchase.usedCoupon}">- ${purchase.usedCoupon}원</c:if>
				  		<c:if test="${empty purchase.usedCoupon}">- 0원</c:if>
				  	</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>포인트 사용</h5>
				  	<div class="payment">- ${purchase.usedPoint}P</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>배송비</h5>
				  	<div class="payment">+ ${purchase.divyFee}원</div>
				  </div>
				  
				  <br>
				  
				  <div class="sectd">
				  	<h5>총 결제금액</h5>
				  	<div class="payment totals"><strong class="totalpay">${purchase.purchaseProd.prodDisPrice * purchase.purchaseQuantity - purchase.usedPoint + purchase.divyFee }</strong>원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h6>적립 포인트</h6>
				  	<div class="payment totals">+ ${purchase.earnPoint} P</div>
				  </div>
				  
				  
				  <hr>
				  
				  
				  <div class="sectd">
				  	<h5>결제수단</h5>
				  	<div class="payment">
				  		<c:if test="${purchase.paymentOpt == 'KA'}">카카오 간편결제</c:if>
						<c:if test="${purchase.paymentOpt == 'CA'}">신용카드 결제</c:if>
				  	</div>
				  </div>
				  
				  
			</section>
			
</form>
			<br><br>
			<div class="text-center buttons">
			
				<c:if test="${purchase.divyStatus.equals('001') }">	
				<button type="button" class="update" >수정하기</button>	
				</c:if>
				
				<button type="button" class="check" >취&emsp;소</button>
			</div>
				
			<br>
			
			
 	</div>

	
</body>

</html>