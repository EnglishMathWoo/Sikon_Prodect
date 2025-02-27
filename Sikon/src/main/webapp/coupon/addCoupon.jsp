<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
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
   
   <!-- jQuery UI toolTip 사용 CSS-->
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <!-- jQuery UI toolTip 사용 JS-->
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

	body>div.container {
		padding-top : 250px;
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	}
	
	.soo {
		border: 2px solid 	#DEB887;
	}
		
	h1.text-center {
		margin-top: 20px;
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	}
	
	div.form-group {
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	}
		
	#button {
		margin-top:15px;
		margin-bottom:15px;
		display: flex;
  		justify-content: center;	
	}
		
	.btn-b {
		cursor: pointer;
	    background-color: #937062;
	    color: #fff;
	    padding: 12px 0;
	    width:20%;
	    height: 34px;
	    justify-content: center;
	    display: flex;
	    align-items: center;
	    font-size: 17px;
	    border-radius: 5px;
	    border: 1px solid #d7d7d7;
	}
	
	.btn-b:hover {
		background-color: #937062d4;
	}	
</style>
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">		
	
	//뒤로가기 
	$(function(){	
		$( "#previous" ).on("click" , function() {
			history.go(-1);
		});
	});
	
	//쿠폰생성
	$(function() {
			
		$("#addCoupon").on("click" , function() {
		
			var couponName = $("input[name='couponName']").val();
			var discountRate = $("input[name='discountRate']").val();
			var discountValue = $("input[name='discountValue']").val();
						
			if(discountRate == "") {
				$("input[name='discountRate']").val(0);
			}
			
			if(discountValue == "") {
				$("input[name='discountValue']").val(0);
			}
			
			if(couponName == null || couponName.length <1){
				alert("쿠폰 이름은 반드시 입력하셔야 합니다.");
				return;
			}
			
			if(discountRate == "" && discountValue == ""){
				alert("할인율, 할인금액 중 한 가지를 입력해주세요.");
				return;
			}
			
			if(discountRate == 0 && discountValue == 0){
				alert("할인율, 할인금액 중 한 가지를 입력해주세요.");
				return;
			}
						
			if(discountRate != 0 && discountValue != 0){
				alert("할인율, 할인금액 중 한 가지만 입력해주세요.");
				return;
			}
			
			$("form").attr("method", "POST").attr("action", "/coupon/addCoupon/").submit();
		});
	});

</script>		
    
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	<div class="soo">
		<h1 class="text-center" style="color:#937062; font-family: 'Gowun Batang', serif; font-weight:bold;">쿠 폰 생 성</h1>
		
		<form class="form-horizontal" name="detailForm"  enctype="multipart/form-data" >
		<input type="hidden" name="userId" value="${user.userId}">
		  
		  <div class="form-group">
		    <label for="couponName" class="col-sm-offset-1 col-sm-3 control-label">쿠폰이름</label>
		    <div class="col-sm-4">
		    <input type="text" class="form-control" id="couponName"  name="couponName" placeholder="쿠폰이름">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="discountRate" class="col-sm-offset-1 col-sm-3 control-label">할인율</label>
		    <div class="col-sm-4">
		    <input type="number" step="0.01" class="form-control" id="discountRate"  name="discountRate" placeholder="할인율">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="discountValue" class="col-sm-offset-1 col-sm-3 control-label">할인금액</label>
		    <div class="col-sm-4">
		    <input type="number" class="form-control" id="discountValue"  name="discountValue" placeholder="할인금액">
		    </div>
		  </div>
		  
		 
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center" id="button">
		    <button type="button"  class="btn-b" style="margin-right: 10px;" id="addCoupon">생 &nbsp;성</button>
			<button type="button" class="btn-b" id="previous">취&nbsp;소</button>
		    </div>
		  </div>
	
		</form>
		
		</div>
 		</div>
</body>

</html>