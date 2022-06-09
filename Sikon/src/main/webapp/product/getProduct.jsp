<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

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
body>div.container{
	padding-top : 70px;
	font-family: 'Nanum Myeongjo', serif;
}
div.row{
	font-family: 'Nanum Myeongjo', serif;
}
div.page-header{
	font-family: 'Nanum Myeongjo', serif;
}

div.image{
	padding-top : 30px;
}

.btn_gotop {
	display:none;
	position:fixed;
	bottom:30px;
	right:30px;
	z-index:999;
	outline:none;
	background-color:#937062;
	color:#f7f7f7;
	padding:15px 20px;
}
.btn_gotop:hover{
	color: #f7f7f7;
}

</style>
 <!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
 
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
///*
	Kakao.init('44e9a817fd963e4dff5a1f8cf9c9e807');

	  // SDK 초기화 여부를 판단합니다.
	  console.log(Kakao.isInitialized());

	  
	  function kakaoShare() {
		  
		  var image = $("input:hidden[name='image']").val();
		  console.log(image);
		  var name = $("input:hidden[name='prodName']").val();
		  console.log(name);
		  var detail = $("input:hidden[name='detail']").val();
		  console.log(detail);
		  var prodNo = $("input:hidden[name='prodNo']").val();
		 console.log(prodNo);
		  
	    Kakao.Link.sendDefault({
	      objectType: 'feed',
	      content: {
	        title: name,
	        description: detail,
	        imageUrl: 'http://192.168.0.65:8080/resources/images/uploadFiles/'+image ,
	        link: {
	          mobileWebUrl: 'http://192.168.0.65:8080/product/getProduct?prodNo='+prodNo,
	          webUrl: 'http://192.168.0.65:8080/product/getProduct?prodNo='+prodNo,
	        },
	      },
	      buttons: [
	        {
	          title: '웹으로 보기',
	          link: {
	            mobileWebUrl: 'http://192.168.0.65:8080/product/getProduct?prodNo='+prodNo,
	            webUrl: 'http://192.168.0.65:8080/product/getProduct?prodNo='+prodNo,
	          },
	        },
	      ],
	      // 카카오톡 미설치 시 카카오톡 설치 경로이동
	      installTalk: true,
	    })
	  }
//*/	
	//=====================공유하기====================================
	
	
	
	$( document ).ready( function() {
		 
		
		
		 $('#quantity').change( function() {
			 var quantity = $('#quantity').val();
			 $('#quantity').val(quantity)
			 console.log('구매수량: '+quantity);
		 });
		
		 $( "#check" ).on("click" , function() {
			 self.location = "/product/listProduct?menu=manage"
		});
		 
		 $( "#cancel" ).on("click" , function() {
			 self.location = "/product/listProduct?menu=search"
		});
		 
		 $( "button.btn-warning" ).on("click" , function() {
			 var quantity = $('#quantity').val();
			 self.location = "/purchase/addPurchase?prodNo=${product.prodNo}&quantity="+quantity;
		});
		 
		 $( "button.btn-primary" ).on("click" , function() {
			 var prodNo = $('#prodNo').val();
			 self.location = "/product/updateProduct?prodNo="+prodNo
		});
		 
		 $( "button.btn-default" ).on("click" , function() {
			 var quantity = $('#quantity').val();
			 self.location = "/cart/addCart?prodNo=${product.prodNo}&quantity="+quantity;
		});
		 
	});

//===================== 상단으로 이동 ====================================
	
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300){
			$('.btn_gotop').show();
		} else{
			$('.btn_gotop').hide();
		}
	});
	
	$('.btn_gotop').click(function(){
		$('html, body').animate({scrollTop:0},400);
		return false;
	});
		
	
	</script>
</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

		<div class="row">
	
				<div class="col-xs-6 col-md-6 text-center image">				
						<c:forEach var="name" items="${product.prodThumbnail.split('&')[0]}">
								<img src="/resources/images/uploadFiles/${name}" width="400" height="400"/>
						</c:forEach>
				</div>	
			

				<div class="col-xs-4 col-md-4">
			
				<div class="row">
					<input type="hidden" name="prodNo" id="prodNo" value="${product.prodNo }"/>
				</div>
				
				<hr/>
				
				<div class="row">
				
					<div class="text-right">
						<a id="kakao-link-btn" href="javascript:kakaoShare()">
					    	<img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" width="30" height="30"/>
					    </a>
					</div>
					
					<p>${product.prodDetail }</p>
					<h4><strong>${product.prodName}</strong></h4>
					<input type="hidden" name="detail" value="${product.prodDetail }"/>
					<input type="hidden" name="prodName" value="${product.prodName}"/>
					
				</div>
				
				<br/>
				
				<div class="row">
				<p style="color:#aba6a6"><del>${product.prodPrice}</del></p>
				<p style="font-size:17px;font-weight: bold"><span style="color:#d9534f"><fmt:formatNumber value="${product.prodDisRate}" type="percent"/>&nbsp;</span>
				${product.prodDisPrice}<span style="font-size:14px;font-weight:600">원</span></p>
				</div>
				
				<br/>
				
				<div class="row">
					구매수량: &emsp;
				      <input type="number" min="0" id="quantity" name="quantity" value="1" style="width:40px"/> 개
				</div>
				
				<br/><br/>
				
				<div class="row">
					------------------<br/>
					 배송비 : 3000원<br/>
					------------------					
				</div>
				
				<br/>
				
				<hr/> 
				
				
				<div class="row">
			  		<div class="text-center">	
			  				<button type="button" class="btn btn-default btn-lg" id="cancel">장바구니</button>&emsp;
			  				<button type="button" class="btn btn-warning btn-lg" id="buy" >구매하기</button>
			  				<c:if test="${menu == 'manage' }">
			  				&emsp;<button type="button" class="btn btn-primary btn-lg" id="buy" >수정하기</button>
			  				</c:if>
			  		</div>
				</div>
		
				
		 	</div>
		 	
		 	<div class="col-xs-2 col-md-2">
		 	</div>
		 	
		 	</div>
		 	
		 	<hr/>
		 	
		 	<div class="col-xs-12 col-md-12 text-center">
		 	
		 	${product.prodContent }
		 	
		 	</div>
		 	
</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->
 	
 	<!-- 상단으로 이동하기 버튼 -->
	<a href="#" class="btn_gotop">
	  <span class="glyphicon glyphicon-chevron-up">
	  </span>
	</a>

</body>
</html>