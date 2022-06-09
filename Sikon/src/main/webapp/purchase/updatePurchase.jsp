<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko">
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

<style>
body{
	padding-top : 50px;
	font-family: 'Nanum Myeongjo', serif;
	font-family: 'Open Sans', sans-serif;
}
div.container{
	padding-top : 170px;
}
</style>

<script type="text/javascript">

function fncUpdatePurchase() {
	
	var addr = $("#sample6_postcode").val() + "/" +  $("#sample6_address").val() + "/" +  $("#sample6_detailAddress").val() + "/" + $("#sample6_extraAddress").val();
	console.log('submit');
	console.log(addr);
	$("input:hidden[name='divyAddr']").val( addr );
	
	$("form").attr("method" , "POST").attr("action" , "/purchase/updatePurchase?tranNo=${purchase.tranNo }").submit();

	
}
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

$(function() {
	
	 $( "a[href='#' ]" ).on("click" , function() {
		 history.go(-1);
	});
	
});

///*
$(function() {
	
	$("button.btn-primary").click(function(){
		console.log('수정');
		fncUpdatePurchase();
		
	});
	
	
});

$(function() {
	var price = $( "#price" ).val();
	console.log("price: "+price);
	
	var quantity = $("#purchaseQuantity").val();
	console.log("quantity: "+quantity);
	
	$("#totalprice").val(price*quantity);
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
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="text-center" style="color:#bc8f8f">구매정보수정</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <input type="hidden" name="prodNo" value="${product.prodNo }" />
		  <input type="hidden" name="userId" value="${user.userId }" />
		  
		  
		  <hr/>
		 <h4 align="center">주문상품</h4>
		 <hr/>
		 
		 <div class="row">
		<div class="col-xs-12 col-md-12" align="center">
		
		<c:choose>
		
		<c:when test="${purchase.purchaseProd.prodThumbnail.contains('&')}">
		
			<td class="ct_write01">
				<c:choose>
				<c:when test="${purchase.purchaseProd.prodThumbnail.contains('mp4')}">
					<c:forEach var="name" items="${purchase.purchaseProd.prodThumbnail.split('&')}">
						<video width="400" height="300" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"></video>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach var="name" items="${purchase.purchaseProd.prodThumbnail.split('&')}">
						<img src="/resources/images/uploadFiles/${name}" width="300" height="300" align="absmiddle"/>
					</c:forEach>
				</c:otherwise>
				</c:choose>		
		
			</td>
		
		</c:when>
		
		<c:otherwise>
			<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail}" width="300" height="300" align="absmiddle"/>
		</c:otherwise>
		</c:choose>

		</div>
		</div>
		  <br>
		 <div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-8">${purchase.purchaseProd.prodName}</div>
		</div>
			  		<hr/>
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>결제금액</strong></div><br>
			<div class="col-xs-8 col-md-8">상품가격: ${purchase.purchaseProd.prodDisPrice} 원</div>
			<div class="col-xs-8 col-md-8">+ 배송비: ${purchase.divyFee} 원</div>
		</div>
			  		<hr/>
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>구매수량</strong></div>
			<div class="col-xs-8 col-md-8">${purchase.purchaseQuantity} 개</div>
		</div>
		
		<hr/>
			  		
		<input type="hidden" id="price" value="${purchase.purchaseProd.prodDisPrice}">
		<input type="hidden" id="purchaseQuantity" value="${purchase.purchaseQuantity}">
			  		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>총 결제금액</strong></div>
			<div class="col-xs-8 col-md-8">
		     <input type="text" id="totalprice" value="" style="border:none;width:50px"> 원</div>
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>적립 포인트</strong></div>
			<div class="col-xs-8 col-md-8">+
		      ${purchase.earnPoint} P</div>
		</div>
		  
		  
		  <hr/>
		  <h4 align="center">배송정보</h4>
		  <hr/>
		  
		  	  
		  <div class="form-group">
		    <label for="receiverName" class="col-sm-offset-1 col-sm-3 control-label">받는분 이름</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverName" name="receiverName" value="${user.userName}"> 
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="divyAddr" class="col-sm-offset-1 col-sm-3 control-label">배송지</label>
		    <div class="col-sm-4">
		        <input type="text" id="sample6_postcode" name="postcode" placeholder="우편번호" value="">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" name="address" placeholder="주소" value=""><br>
				<input type="text" id="sample6_detailAddress" name="detailAddress" placeholder="상세주소" value=""><br>
				<input type="text" id="sample6_extraAddress" name="extraAddress" placeholder="참고항목" value="">
		    </div>
		    <input type="hidden" name="divyAddr" value="${user.addr}">
		  </div>
		  
		    <div class="form-group">
		    <label for="receiverPhone" class="col-sm-offset-1 col-sm-3 control-label">연락처</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverPhone" name="receiverPhone" value="${user.phone}">
		    </div>
		  </div>
		  
		  <c:if test="${!empty user}">
		      <input type="hidden" class="form-control" id="receiverEmail" name="receiverEmail" value="${user.userId}">
		  </c:if>
		  <c:if test="${empty user}">
		  <div class="form-group">
		    <label for="receiverEmail" class="col-sm-offset-1 col-sm-3 control-label">이메일</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="receiverEmail" name="receiverEmail" placeholder="비회원 구매" >
		    </div>
		  </div>
		  </c:if>
		  
		  
		   <div class="form-group">
		    <label for="divyMessage" class="col-sm-offset-1 col-sm-3 control-label">배송메시지</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="divyMessage" name="divyMessage" placeholder="요청사항을 적어주세요."  >
		    </div>
		  </div>

		  
		  <hr/>
		  <h4 align="center">쿠폰 / 포인트</h4>
		  <hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>사용 쿠폰</strong></div>
			<div class="col-xs-8 col-md-8">${purchase.usedCoupon }</div>
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>사용 포인트</strong></div>
			<div class="col-xs-8 col-md-8">- ${purchase.usedPoint } P</div>
		</div>
		  
		  
		</form>
		<!-- form Start /////////////////////////////////////-->
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button"  class="btn btn-primary"  >수&nbsp;정</button>
			  <a class="btn btn-default btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		  
		
 	</div>
	
</body>

</html>