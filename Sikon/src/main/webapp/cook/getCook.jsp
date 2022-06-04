<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	padding-top : 150px;
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
</style>
 <!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
 
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

	
//=========================================================================================//	
	$( document ).ready( function() {
		 
		
		
		 $('#cookStatus').change( function() {
			 var quantity = $('#cookStatus').val();
			 $('#cookStatus').val(cookStatus)
			 console.log('신청인원: '+cookStatus);
		 });
		
		 $( "#check" ).on("click" , function() {
			 self.location = "/cook/listCook?menu=manage"
		});
		 
		 $( "#cancel" ).on("click" , function() {
			 self.location = "/cook/listCook?menu=search"
		});
		 
		 $( "button.btn-warning" ).on("click" , function() {
			 var quantity = $('#quantity').val();
			 self.location = "/apply/addApply?menu=${param.menu}&cookNo=${cook.cookNo}"
		});
		 

		 
		 $( "button.btn-primary" ).on("click" , function() {
			 var cookNo = $('#cookNo').val();
			 self.location = "/cook/updateCook?cookNo="+cookNo
		});
		 
	});
//=========================================장바구니=========================================//	
	
	 function fncAddWish() {	
			
			$("form").attr("method" , "POST").attr("action" , "/wish/addWish").submit();
			
		}
	 
	 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#wish" ).on("click" , function() {
				console.log('장바구니');
				fncAddWish();
			});
		});
//=========================================================================================//	
	
		
	
	</script>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	



	<div class="container">
	
		<div class="row">
	
				<div class="col-xs-6 col-md-6 text-center image">				
						<c:forEach var="name" items="${cook.cookFilename.split('/')[0]}">
								<img src="/resources/images/uploadFiles/${name}" width="400" height="400"/>
						</c:forEach>
				</div>	
			

				<div class="col-xs-4 col-md-4">
			
				<div class="row">
					<input type="hidden" name="cookNo" id="cookNo" value="${cook.cookNo }"/>
				</div>
				
				<hr/>
				
				<div class="row">
				
				
					
					<div><h4><strong>${cook.cookName}</strong></h4></div><br>
					<div>${cook.cookBrief }</div>
					<input type="hidden" name="detail" value="${cook.cookBrief }"/>
					<input type="hidden" name="cookName" value="${cook.cookName}"/>
				</div>
				
				<br/><br/>
				
				
				
				
				<div class="row">
					<div><h6><del>${cook.cookPrice } 원</del></h6></div>
					<div><h5><strong>모집인원${cook.cookRecruit}&emsp;명</strong></h5></div>
				</div>
				
				<br/>
				
				<div class="row">
					신청인원: &emsp;
				      <input type="number" min="0" id="cookStatus" name="cookStatus" value="1" style="width:40px"/> 명
				</div>
				
				<br/><br/>
				
				<div class="row">
					------------------<br/>
					 배송비 : 3000원<br/>
					------------------					
				</div>
				
				<hr/> 
				
				
				<div class="row">
			  		<div class="text-center">	
			  				<button type="button" class="btn btn-default btn-lg" id="wish">장바구니</button>&emsp;
			  				<button type="button" class="btn btn-warning btn-lg" id="buy" >구매하기</button>
			  			
			  				<button type="button" class="btn btn-primary btn-lg" id="buy" >수정하기</button>
			  				
			  		</div>
				</div>
		
				
		 	</div>
		 	
		 	<div class="col-xs-2 col-md-2">
		 	</div>
		 	
		 	</div>
		 	
		 	<hr/>
		 	
		 	
		 	
</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
</html>