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


<!--  ///////////////////////// CSS ////////////////////////// -->
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

<style>
.getproduct{
	padding-top : 200px;
	padding-bottom : 150px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
}
div.row{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
}
div.page-header{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
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

#my_modal {
    display: none;
    width: 330px;
    padding: 20px 60px;
    background-color: #fefefe;
    border: 1px solid #888;
    border-radius: 3px;
    text-align: center;
}

#my_modal .modal_close_btn {
    position: absolute;
    top: 5px;
    right: 5px;
}

modal_close_btn{
	text-decoration-line: none;
	width:20px;
	height: 20px;
}

div.message{
	text-align: center;
	font-size: 15px;
}

a.tocart{
	border: 1px solid #d7d7d7;
	text-align: center;
	height: 40px;
	width : 160px;
	padding: 10px;
	text-decoration-line: none;
	color: #333;
}



.bi-x::before {
    font-size: xx-large;
    color: black;
}

.link{
	border: 1px solid #d7d7d7;
}


.btn-b {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width:40%;
  font-size: large;
}
.btn-b:hover {
  background-color: #937062d4;
}

.btn-w {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:40%;
  font-size: large;
}
.btn-w:hover {
  background-color: #e7e2e2;
}
.btn-s {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:40%;
  font-size: large;
}
.divyfee{
	border-top: 1px solid #d7d7d7;
	border-bottom: 1px solid #d7d7d7;
	height: 80px;
	padding-top:27px;
	padding-left: 10px;
}

<!--  댓글 -->


h3{
margin-left: 140px;
}
.reviewHeader{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
 	width: 860px;
 	 margin-left: 140px;
	border-bottom: 2px solid rgb(147, 112, 98);
    font-size: 18px;
    line-height: 28px;
    letter-spacing: 0px;
    padding-bottom: 8px;
    border-bottom: 2px solid rgb(147, 112, 98);
    text-align: start;
    font-weight: bold;
    height:5;
}

.panel{
    width: 860px;
    margin-left: 140px;
}
.img-sm {
    width: 46px;
    height: 46px;
}

.panel {
    box-shadow: 0 2px 0 rgba(0,0,0,0.075);
    border-radius: 0;
    border: 0;
    margin-bottom: 15px;
}

.panel .panel-footer, .panel>:last-child {
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}

.panel .panel-heading, .panel>:first-child {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

.panel-body {
    padding: 25px 20px;
}


.media-block .media-left {
    display: block;
    float: left
}

.media-block .media-right {
    float: right
}

.media-block .media-body {
    display: block;
    overflow: hidden;
    width: auto
}

.middle .media-left,
.middle .media-right,
.middle .media-body {
    vertical-align: middle
}

.thumbnail {
    border-radius: 0;
    border-color: #e9e9e9
}

.tag.tag-sm, .btn-group-sm>.tag {
    padding: 5px 10px;
}

.tag:not(.label) {
    background-color: #fff;
    padding: 6px 12px;
    border-radius: 2px;
    border: 1px solid #cdd6e1;
    font-size: 12px;
    line-height: 1.42857;
    vertical-align: middle;
    -webkit-transition: all .15s;
    transition: all .15s;
}
.text-muted, a.text-muted:hover, a.text-muted:focus {
    color: #acacac;
}
.text-sm {
    font-size: 0.9em;
}
.text-5x, .text-4x, .text-5x, .text-2x, .text-lg, .text-sm, .text-xs {
    line-height: 1.25;
}

.btn-trans {
    background-color: transparent;
    border-color: transparent;
    color: #929292;
}

.btn-icon {
    padding-left: 9px;
    padding-right: 9px;
}

.btn-sm, .btn-group-sm>.btn, .btn-icon.btn-sm {
    padding: 5px 10px !important;
}

.mar-top {
    margin-top: 15px;
}
.productDetail{
	color: #937062;
	font-size: 18px;
	font-weight: bold;
	
}
.productDetail:hover{
	text-decoration: none;
	color: #937062;
}
.smtitle{
	text-decoration: none;
	color: #937062;
	font-size: 18px;
	font-weight:bold;
}
.tabs{
	width: 1000px;
	margin-left: 70px;
}
.noreview{
	text-align: center;
	font-weight: bold;
	padding: 50px;
}
.getcontent{
	padding-left: 10px;
}
.tumb{
	margin-right: -10px;
}
</style>
 <!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
 
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">

		
		//======= 카카오 공유하기 ==========================================================================
			
		Kakao.init('44e9a817fd963e4dff5a1f8cf9c9e807');
	
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
		        imageUrl: 'http://192.168.0.11:8080/resources/images/uploadFiles/'+image ,
		        link: {
		          mobileWebUrl: 'http://192.168.0.11:8080/product/getProduct?menu=search&prodNo='+prodNo,
		          webUrl: 'http://192.168.0.11:8080/product/getProduct?menu=search&prodNo='+prodNo, 
		        },
		      },
		      buttons: [
		        {
		          title: '해당상품 보러가기',
		          link: {
		            mobileWebUrl: 'http://192.168.0.11:8080/product/getProduct?menu=search&prodNo='+prodNo,
		            webUrl: 'http://192.168.0.11:8080/product/getProduct?menu=search&prodNo='+prodNo,
		          },
		        },
		      ],
		      installTalk: true,
		    })
		  }
		
		//=============================================================================================
		
		
		
		$( document ).ready( function() {
			 
			
			//======= 수량옵션 ================================
			 $('#quantity').change( function() {
				 var quantity = $('#quantity').val();
				 $('#quantity').val(quantity)
				 console.log('구매수량: '+quantity);
			 });
			
			//======= 구매하기 클릭 ================================
			 $( ".addPurchase" ).on("click" , function() {
				 console.log('구매하기');
				 var quantity = $('#quantity').val();
				 
				 self.location = "/purchase/addPurchase?prodNo=${product.prodNo}&quantity="+quantity;
			});
			 
			
			//======= 상품수량 ================================
			 $( "#quantity" ).on("change" , function() {
				 
				 var quantity = $('#quantity').val();
				 var stock = Number("${product.prodStock}");
				 
				 console.log("quantity: "+quantity);
				 console.log("stock: "+stock);
				 
				 if(quantity>stock){
					 alert('구매수량이 재고량보다 많습니다.');
					 $('#quantity').val(stock);
					 return null;
				 }
			});
			
			//======= 상품수정 ================================
			 $( ".updateProd" ).on("click" , function() {
				 console.log('업데이트');
				 var prodNo = $('#prodNo').val();
				 self.location = "/product/updateProduct?prodNo="+prodNo
			});
			 
			//======= 장바구니 담기 ================================	
			 $( ".addcart" ).on("click" , function() {
				 console.log('장바구니');
				 var quantity = $('#quantity').val();
				 
				 $.ajax({
		                  url : "/cart/json/addCart?prodNo=${product.prodNo}&quantity="+quantity ,
		                  method : "GET" ,
		                  dataType : "json" ,
		                  headers : {
		                     "Accept" : "application/json",
		                     "Content-Type" : "application/json"
		                  },
		                  success : function(response) {
		                	  console.log("[response] : " + response);
		                	  modal('my_modal'); 
		                  }
		            });
				 
			});
	
			 
			//======= 장바구니 이동 ================================
			 $( ".tocart" ).on("click" , function() {
				 
				 var quantity = $('#quantity').val();
				 			 
				 self.location = "/cart/getCartList"
				 
			});
			 
			//======= 리뷰보기 이동 ================================
			 $( ".goreview" ).on("click" , function() {
				 
				 var offset = $(".reviewHeader").offset();
				 
				 $("html").animate({scrollTop : offset.top},400);
				 
			 });
			 
			 
		});
	
			//======= 상단으로 이동 ================================
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
				
			
			function CloseModal(){
		        var CloseModal = document.querySelector(".popup");
		        CloseModal.classList.add("CloseModal");
		     }
		
		
			//======= 모달창 띄우기(장바구니 담을 시) ================================
	
			function modal(id) {
		    var zIndex = 9999;
		    var modal = $('#' + id);
		    var quantity = $('#quantity').val();
		
		    // 모달 div 뒤에 희끄무레한 레이어
		    var bg = $('<div>')
		        .css({
		            position: 'fixed',
		            zIndex: zIndex,
		            left: '0px',
		            top: '0px',
		            width: '100%',
		            height: '100%',
		            overflow: 'auto',
		            // 레이어 색갈은 여기서 바꾸면 됨
		            backgroundColor: 'rgba(0,0,0,0.4)'
		        })
		        .appendTo('body');
		
		    modal
		        .css({
		            position: 'fixed',
		            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
		
		            // 시꺼먼 레이어 보다 한칸 위에 보이기
		            zIndex: zIndex + 1,
		
		            // div center 정렬
		            top: '50%',
		            left: '50%',
		            transform: 'translate(-50%, -50%)',
		            msTransform: 'translate(-50%, -50%)',
		            webkitTransform: 'translate(-50%, -50%)'
		        })
		        .show()
		        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
		        .find('.modal_close_btn')
		        .on('click', function() {
		            bg.remove();
		            modal.hide();
		        });
			}
			
		//===========================================================

	</script>
	
</head>

<body>

	<!-- tool bar start -->
	<jsp:include page="/layout/toolbar.jsp" />

	
	<div class="container getproduct">

		<div class="row">
	
				<div class="col-xs-6 col-md-6 text-center image">				
					<c:forEach var="name" items="${product.prodThumbnail.split('&')[0]}">
							<img src="/resources/images/uploadFiles/${name}" width="450" height="450" class="tumb"/>
					</c:forEach>
				</div>	
			

				<div class="col-xs-4 col-md-4">
				
					<div class="row">
						<input type="hidden" name="prodNo" id="prodNo" value="${product.prodNo }"/>
					</div>
				
					<br/>
				
					<div class="row getcontent">
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
				
					<div class="row getcontent">
						<p style="color:#aba6a6"><del>${product.prodPrice}</del></p>
						<p style="font-size:17px;font-weight: bold"><span style="color:#d9534f"><fmt:formatNumber value="${product.prodDisRate}" type="percent"/>&nbsp;</span>
						${product.prodDisPrice}<span style="font-size:14px;font-weight:600">원</span></p>
					</div>
				
					<br/>
				
					<div class="row getcontent">
						구매수량: &emsp;
						<c:if test="${product.prodStock>0}">
				      	<input type="number" min="0" id="quantity" name="quantity" value="1" style="width:40px"/> 개&emsp;
				      	</c:if>
				      	<c:if test="${product.prodStock==0}">
				      	<input type="number" min="0" value="0" style="width:40px" readonly/> 개&emsp;
				      	</c:if>
				      	<c:if test="${product.prodStock <= 10}">( 현재 남은 재고량: ${product.prodStock} )</c:if>
					</div>
				
					<br/><br/>
				
					<div class="row divyfee">
						 배송비 : 3000원				
					</div>
				
					<br/>
				
				
					<div class="row">
				  		<div class="text-center">	
			  			<c:if test="${product.prodStock>0 && product.prodStatus == 'Y'}">
				  			<c:if test="${menu == 'search' }">
				  				<button type="button" class="btn-w addcart" id="popup_open_btn">장바구니</button>&emsp;
							</c:if>
							<c:if test="${menu == 'manage' }">
			  					<button type="button" class="btn-w updateProd">수정하기</button>&emsp;
			  				</c:if>			  		
			  				
			  				<button type="button" class="btn-b addPurchase" id="buy" >구매하기</button>
				  		</c:if>
				  		
				  		<c:if test="${product.prodStock==0}">
				  			<c:if test="${menu == 'manage' }">
			  					<button type="button" class="btn-w updateProd">수정하기</button>&emsp;
			  				</c:if>	
			  				<button type="button" class="btn-s soldout">품&emsp;절</button>&emsp;
				  		</c:if>	
				  		
				  		<c:if test="${product.prodStatus=='N'}">
				  			<c:if test="${menu == 'manage' }">
			  					<button type="button" class="btn-w updateProd">수정하기</button>&emsp;
			  				</c:if>	
			  				<button type="button" class="btn-s soldout">구매불가</button>&emsp;
				  		</c:if>	
				  			
				  		</div>
					</div>	
				
		 		</div>

		 	
		</div>
		 	
		<div>
		
			<br><br>
			 	
			<div class="tabs">
			 	<span class="smtitle">상품정보 </span> | 
			 	<a href="#" class="goreview" style="text-decoration: none;color: #937062;font-size:15px"> 리뷰보기(${reviewNum })</a>
			</div>
			 	
			<br><br>
			 	
			<div style="text-align: center">
				${product.prodContent }
			</div>
			 	
		</div>
		 
		<br><br>

		<!-- 상품 리뷰 /////////////////////////////////////-->
		<h4 class="reviewHeader">리뷰(${reviewNum })</h4>
				
			<c:forEach var="review" items="${review}">
				<div class="panel">
					<div class="panel-body">
						<div class="media-block">
							<a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="/resources/images/168939.jpg"></a>
							<div class="media-body">
								<div class="mar-btm">
									<a href="#" class="btn-link text-semibold media-heading box-inline">${review.writerNickname }</a>
									<p class="text-muted text-sm">
										<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${review.reviewRegdate}" />
									</p>
								</div>
								<c:if test="${review.reviewImg != null }">
									<img src="/resources/images/uploadFiles/${review.reviewImg }" width="200" height="200">
								</c:if>
								<p>${review.reviewContent }</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			
			<c:if test="${empty review}">
				<div class="noreview">
					작성된 리뷰가 없습니다.
				</div>
			</c:if>

	</div>
	
	
	
	 	<!--  모달창 띄우기 /////////////////////////////////////-->
	 	<div id="my_modal">
	 		<a class="modal_close_btn"><i class="bi bi-x"></i></a>
	 		<br>
	 		<div class="message">
		    	장바구니에 상품이 담겼습니다.
		    </div><br>
		    <div class="forcenter">
		   		<a href="#" class="tocart">
		   	 		장바구니 바로가기 &nbsp;
		    		<i class="fa-solid fa-angle-right"></i>
		   		</a>
		    </div>
		    <br>
		</div>
	 	
	 	
	 	<!-- 상단으로 이동하기 버튼 -->
		<a href="#" class="btn_gotop">
		  <span class="glyphicon glyphicon-chevron-up">
		  </span>
		</a>

</body>

</html>
