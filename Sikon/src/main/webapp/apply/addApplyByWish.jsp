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

.wish {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  font-size: large;
  padding: 11px 0;
  width: 49.3%;
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

</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">



function fncAddApply() {
	
	var cookStock=$("#cookStock").val();
	var cookStatus=$("input[name='cookStatus']").val();
	console.log(cookStock);
	console.log(cookStatus);
	if (cookStock < cookStatus) {
		alert("모집인원이 마감되었습니다");
		return;
	}
	
	
	$("form").attr("method" , "POST").attr("action" , "/apply/addApplyByWish").submit();	
}


$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$( "#buyjust" ).on("click" , function() {
		fncAddApply();
	});
});	



	 
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$(".cancel").on("click" , function() {
		history.go(-1);
	});
});	
</script>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$(function() {
	
	$("#iamportPayment").on("click" , function() {
		console.log("아임포트");		
		
		if($("#paybyca").prop("checked")){
			
			
			alert('card');
			$("input[name=paymentOpt]").val("CA");
			alert($("input[name=paymentOpt]").val());
			paymentCA();
			
		}else{
			alert('kakao');
			$("input[name=paymentOpt]").val("KA");
			alert($("input[name=paymentOpt]").val());
			paymentKA();
			
		}
	});
});	
	
	function paymentKA(data) {
		
		var payment = $("#paymentOpt").val();
		console.log("payment: "+payment);
		
		var cookName = $("#cookName").val();
		console.log("cookName: "+cookName);
		
		var cookPrice = $("#cookPrice").val();
		console.log("cookPrice: "+cookPrice);
		
		var phone = $("#phone").val();
		console.log("phone: "+phone);


		var userName = $("#userName").val();
		console.log("userName: "+userName);

		var cookLocation = $("#cookLocation").val();
		console.log("cookLocation: "+cookLocation);
		
		var uid="${uid }";
		console.log("uid: "+uid);
		
		
		
		IMP.init('imp05238113'); 
	    
	    IMP.request_pay({
	    	pg : "kakaopay", 
	        pay_method : payment,
	        merchant_uid : uid ,
	        name : cookName ,
	        amount : cookPrice ,
	        buyer_name : userName ,
	        buyer_tel : phone ,
	        cookLocation : cookLocation

	    }, function(rsp) {
	    	console.log(rsp);
	    	$.ajax({

	        	type : "POST",
	        	url : "/apply/json/verifyIamport?imp_uid=" + rsp.imp_uid 
	        	
	        }).done(function(data) {
	        	
	        	console.log(data);
	        	
	        	if(rsp.paid_amount == data.response.amount){
	        		$("#impNumber").val(rsp.imp_uid);
		        	alert("결제 및 결제검증완료");
		        	fncAddApply();
	        	} else {
	        		alert("결제 실패");
	        	}
	        });
	    });
	}
	function paymentCA(data) {
		
		var payment = $("#paymentOpt").val();
		console.log("payment: "+payment);
		
		var cookName = $("#cookName").val();
		console.log("cookName: "+cookName);
		
		var cookPrice = $("#cookPrice").val();
		console.log("cookPrice: "+cookPrice);
		
		var phone = $("#phone").val();
		console.log("phone: "+phone);


		var userName = $("#userName").val();
		console.log("userName: "+userName);

		var cookLocation = $("#cookLocation").val();
		console.log("cookLocation: "+cookLocation);
		
		var uid="${uid }";
		console.log("uid: "+uid);
		
		
		
		IMP.init('imp05238113'); 
	    
	    IMP.request_pay({
	    	pg : "html5_inicis", 
	        pay_method : payment,
	        merchant_uid : uid ,
	        name : cookName ,
	        amount : cookPrice ,
	        buyer_name : userName ,
	        buyer_tel : phone ,
	        cookLocation : cookLocation

	    }, function(rsp) {
	    	console.log(rsp);
	    	$.ajax({

	        	type : "POST",
	        	url : "/apply/json/verifyIamport?imp_uid=" + rsp.imp_uid 
	        	
	        }).done(function(data) {
	        	
	        	console.log(data);
	        	
	        	if(rsp.paid_amount == data.response.amount){
	        		$("#impNumber").val(rsp.imp_uid);
		        	alert("결제 및 결제검증완료");
		        	fncAddApply();
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
        <jsp:include page="/layout/toolbar.jsp" />

	


	<div class="container" >
	
		<div class="layout">
		<h1 class="bg-defualt text-center">쿠킹클래스 신청</h1><br>
		
	<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		

				    <input type="hidden" name="userId" value="${user.userId }" />
		
		
		
				  <div class="subtitle">
				  <p>쿠킹클래스정보</p>
				  </div><br>
				  
		  	<input type="hidden" id="userName"  value="${user.userName }" />  
		  <div class="form-group">
		    <label for="userName" class="form-control">신청자이름</label>
		 
		      <input type="text" class="form-control" id="userName" name="userName" placeholder="구매자이름" value="${user.userName}"> 
		    
		  </div>
		  
		   <input type="hidden" id="phone"  value="${user.phone }" />
		    <div class="form-group">
		    <label for="phone" class="form-control">신청자연락처</label>		    
		      <input type="text" class="form-control" id="phone" name="phone" placeholder="신청자연락처"  value="${user.phone}">
		    
		  </div>
		  
		  
	  
		  
			<div><br>
				  <div class="subtitle">
				  <p>쿠킹클래스</p>
				  </div><br>
				  		<c:forEach var="wish" items="${wishlist}">	
				  <div class="form-group">
				  <table style="width: 100%">
					  <tr>
						<td class="imagetd">
			
						    <c:forEach var="name" items="${wish.wishCook.cookFilename.split('/')[0]}">
							<img src="/resources/images/uploadFiles/${name}" class="image" width="100" height="100">
							</c:forEach>  
						</td>
						<td class="content">
							<p style="font-weight: bold;font-size: 15px">${wish.wishCook.cookName}</p>
							<p>${wish.wishCook.cookPrice} 원</p>

							
							

		<p>쿠킹클래스 장소: ${wish.wishCook.cookLocation} </p>
		<p>테마 : 	
				
		    <c:if test = "${wish.wishCook.cookTheme =='KO'}">
			한식
			</c:if>
			<c:if test = "${wish.wishCook.cookTheme == 'JA'}">
			일식
			</c:if>
			<c:if test = "${wish.wishCook.cookTheme == 'AM'}">
			양식
			</c:if>
			<c:if test = "${wish.wishCook.cookTheme == 'CH'}">
			중식
			</c:if>
			<c:if test = "${wish.wishCook.cookTheme == 'DE'}">
			간식
			</c:if>	</p>
			
			<p>난이도 :
			<c:if test = "${wish.wishCook.cookDifficuty == '1'}">
			초급 
			</c:if>
			<c:if test = "${wish.wishCook.cookDifficuty == '2'}">
			중급
			</c:if>
			<c:if test = "${wish.wishCook.cookDifficuty == '3'}">
			고급
			</c:if>			
			
			
			</p>	
			   <input type="hidden" id="cookStatus"  value="${wish.cookStatus }" />
			<p>신청인원 :&emsp; ${wish.cookStatus}명
			
			</p>	
			<p>수업시간 :&emsp; ${wish.wishCook.startTime}&emsp;~&emsp; ${wish.wishCook.endTime}
			</p>	  	
					  	</td>
					  </tr>
				 </table>		 
				</div>
				
				<input type="hidden" class="wishNo" name="wishNo" value="${wish.wishNo}">
				    </c:forEach> 	
			</div>	 				  
 <div class="form-group">	
 	<c:forEach var="wish" items="${wishlist}" begin="0" end="0"> 
 					 <input type="hidden" id="cookName" value="${wish.wishCook.cookName }"/>
 					 		<input type="hidden" id="cookName" value="${wish.wishCook.cookName }"/>
	<input type="hidden" id="cookPrice" value="${wish.wishCook.cookPrice }"/>
	<input type="hidden" id="cookLocation" value="${wish.wishCook.cookLocation }"/>	
	<input type="hidden" id="cookStatus" value="${wish.cookStatus }"/>
 	</c:forEach>
 		  
	  </div>			  
				<div class="subtitle">
				  <p>결제 </p>
				  </div><br>
				  
				 

		  		  				  			

	  
		  

		  
		  	  
		  <div class="form-group">
		    <label for="userId" >신청자아이디 :  ${user.userId} </label>
		   
		     
		  
		  </div>
		  
		  	  

	  
		  


		   <input type="hidden" id="cookStock"  value="${cook.cookStock }" />
		  
	  	
	  
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
	  	
			<input type="hidden" id="userId" value="${user.userId }"/>
			<input type="hidden" id="userName" value="${user.userName }"/>
			<input type="hidden" id="phone" value="${user.phone }"/>
 	
  	
	  	
	
			<br>
			
			<div class="text-center  buttons">
			
		
				<button type="button" class="buy" id="iamportPayment" value="">결제하기</button>					
				<button type="button" class="cancel" href="#" role="button">취&emsp;소</button>
			</div>			
			
			
 	</div>
</div>	

	  
		  


  




		
		  
		
		  
		  
		

		
		  
		  
	


<!-- 결제하기 /////////////////////////////////////-->		
	


	  


	
 
	
</body>

</html>