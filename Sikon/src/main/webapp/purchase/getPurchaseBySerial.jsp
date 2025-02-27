<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">
<style>


div.container {
	padding-top: 220px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
	width: 652px;
	padding-bottom: 150px;
}

html input[type=text]{
	background-color: #f7f7f7;
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
	margin-left: -15px;
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
.golist {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  font-size: large;
  padding: 11px 0;
  width: 49.3%;
}
.golist:hover {
  background-color: #e7e2e2;
}
</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		
		$(function() {
			$(".check").on("click" , function() {
				history.go(-1);
			});
			
			$(".golist").on("click" , function() {
				self.location = "/purchase/listPurchase"
			});
			
			$(".update").on("click" , function() {
				self.location = "/purchase/updatePurchaseBySerial?serialNo=${purchaseinfo.serial}"
			});
			
		});	

		$(function() {
			
			var totalprice = Number("${purchaseinfo.totalprice}");
			var divyfee = Number("${purchaseinfo.divyfee}");
			var couponvalue = Number("${purchaseinfo.couponvalue}");
			var couponRate = Number("${purchaseinfo.couponRate}");
			var pointpay = Number("${purchaseinfo.pointpay}");
			var serial = "${purchaseinfo.serial}";
			
			var couponpay = couponvalue+(totalprice*couponRate);
			
			console.log("총 상품금액: "+totalprice);
			console.log("배송비: "+divyfee);
			console.log("쿠폰사용 값: "+couponvalue);
			console.log("쿠폰사용 률: "+couponRate);
			console.log("포인트사용: "+pointpay);
			console.log("serial: "+serial);
			console.log("쿠폰사용: "+couponpay);
			console.log("총 결제금액: "+(totalprice-couponpay-pointpay+divyfee));
			console.log("적립포인트: "+(totalprice*0.05));
			
			
			
			$("#totalProdPrice").val(totalprice);
			$("#couponuse").val("- "+couponpay);
			$("#usingpoint").val("- "+pointpay);
			$("#divyfee").val("+ "+divyfee);
			$("#totalpayment").val(totalprice-couponpay-pointpay+divyfee);
			$("#earnPoint").val(totalprice*0.05);
			
		});	 
		 
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
				<h1 class="bg-defualt text-center" style="color:#333;font-family: 'Tiro Devanagari Sanskrit', serif;">| P A Y M E N T |</h1><br><br>
				
				<!-- form Start /////////////////////////////////////-->


				
			  
			<div>
			<c:forEach var="purchase" items="${purchaselist}" begin="0" end="0">	  
				  <div class="subtitle">
				  <p>배송정보</p>
				  </div><br>
				  	  
				  <div class="form-group">
				    <label for="receiverName">받는분 이름</label>
				      ${purchase.receiverName }
				  </div>
				  
				 <div class="form-group">
				    <label for="receiverPhone">연락처</label>
				      ${purchase.receiverPhone }
				  </div>
				  
				  
				  <c:if test="${empty user}">
					  <div class="form-group">
					    <label for="receiverEmail">이메일</label>
					    ${purchase.receiverEmail }
					  </div>
				  </c:if>
				  
				  <div class="form-group divyAddr">
				    <label for="divyAddr">배송지</label>
				    	<c:forEach var="addr" items="${purchase.divyAddr.split('/')}" begin="1">
				    	${addr }&nbsp;
				    	</c:forEach>
				  </div>
				  
				  
				   <div class="form-group">
				    <label for="divyMessage">배송메시지</label>
				      ${purchase.divyMessage }
				  </div>
			</c:forEach>	
			</div>
				  
				  
			<div><br>
			
				  <div class="subtitle">
				  <p>주문상품</p>
				  </div><br>
			<c:forEach var="purchase" items="${purchaselist}">	  
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
							<p>구매수량: ${purchase.purchaseQuantity} 개</p><input type="hidden" min="0" class="form-control" name="purchaseQuantity" />
							<c:if test="${purchase.purchaseProd.couponApply == 'N' }">
								<p style="color:#F0445C">*쿠폰 적용이 불가능한 상품입니다.</p>
							</c:if>
					  	
					  	</td>
					  </tr>
				 </table>		 
				</div>
				
				<input type="hidden" class="quantity" value="${purchase.purchaseQuantity}" />
				<input type="hidden" class="price" value="${purchase.purchaseProd.prodDisPrice}" />
				
			</c:forEach>	
			</div>	  
			
			<br>
				  
			<section class="paycontent">	    
				  
				  <div class="sectd">
				  	<h5>총 상품금액</h5>
				  	<div class="payment"><input type="text" id="totalProdPrice" value="" size="" style="border:none;text-align:right">원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>쿠폰 사용</h5>
				  	<div class="payment"><input type="text" id="couponuse" value="" size=""  style="border:none;text-align:right">원</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>포인트 사용</h5>
				  	<div class="payment"><input type="text" id="usingpoint" value="" size=""  style="border:none;text-align:right">P</div>
				  </div>
				  
				  <div class="sectd">
				  	<h5>배송비</h5>
				  	<div class="payment"><input type="text" id="divyfee" value="" size=""  style="border:none;text-align:right">원</div>
				  </div>
				  
				  <br>
				  
				  <div class="sectd">
				  	<h5>총 결제금액</h5>
				  	<div class="payment totals"><strong class="totalpay"><input type="text" id="totalpayment" value="" size=""  style="border:none;text-align:right"></strong>원</div>
				  </div>
				  
			  <c:forEach var="purchase" items="${purchaselist}" begin="0" end="0">	
				  
				  <div class="sectd">
				  	<h6>적립 포인트</h6>
				  	<div class="payment totals"><input type="text" id="earnPoint" name="earnPoint" value="" size=""  style="border:none;text-align:right"> P</div>
				  </div>
				  
				  
				  <hr>
				  
				  
				  <div class="sectd">
				  	<h5>결제수단</h5>
				  	<div class="payment">
				  		<c:if test="${purchase.paymentOpt == 'KA'}">카카오 간편결제</c:if>
						<c:if test="${purchase.paymentOpt == 'CA'}">신용카드 결제</c:if>
				  	</div>
				  </div>
				  
			</c:forEach>	  
				  
			</section>
			

			<br><br>
			
			<c:forEach var="purchase" items="${purchaselist}" begin="0" end="0">	
			
			<div class="text-center">
			
				<c:if test="${purchase.divyStatus.equals('001')}">	
				<button type="button" class="update" >수정하기</button>	
				</c:if>
				<button type="button" class="golist" >확&emsp;인</button>
			</div>
			
			</c:forEach>	
				
			<br>
 	</div>
</div>	
	
</body>

</html>