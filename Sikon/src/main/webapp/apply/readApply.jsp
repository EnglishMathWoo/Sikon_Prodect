<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

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
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
     
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원정보수정 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			
			
			 $( "button:contains('확인')" ).on("click" , function() {
					self.location = "/cook/listCook?menu=search"
				});
			
		});
		
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		<form class="form-horizontal" enctype="multipart/form-data">
	
		
		<div class="page-header">

			<h3 class=" text-info" style="color: #75574B;">신청목록</h3>
			<br></br>
		</div>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스이미지</strong>
			</div>
			<div class="col-xs-8 col-md-4">		    	
		<img src="/resources/images/uploadFiles/${apply.classCook.cookFilename}" width="300" height="300" align="absmiddle"/></div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스번호</strong>
			</div>
			<div class="col-xs-8 col-md-4">${apply.classCook.cookNo}</div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스가격</strong>
			</div>
			<div class="col-xs-8 col-md-4">${apply.classCook.cookPrice}</div>
		</div>

		<hr/>
		
			

		<div class="row">
		  	<div class="col-xs-4 col-md-2">
		  	<strong>수업시간</strong>
		  	</div>
			 <div class="col-sm-8 col-md-4">
		     ${apply.classCook.startTime}~ ${apply.classCook.endTime}
		    </div>
		</div>

		<hr/>		
				<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>신청자아이디</strong>
			</div>
			<div class="col-xs-8 col-md-4">${apply.applier.userId}</div>
		</div>

		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>결제날짜</strong></div>
			<div class="col-xs-8 col-md-4">${apply.checkDate}</div>
		</div>
		
		<hr/>
		

	
	
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자연락처</strong></div>
			<div class="col-xs-8 col-md-4">${user.phone}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자주소</strong></div>
			<div class="col-xs-8 col-md-4">${user.addr}</div>
		</div>
		
		<hr/>
			<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>신청인원 :</strong></div>
			<div class="col-xs-8 col-md-4">${apply.cookStatus }명</div>
		</div>
		
		<hr/>
		
		
		
		
		<hr/>
	
		
		
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  	
	  		<button type="button" class="btn btn-default">확인</button>
	  		
		
	  		</div>
		</div>
		
		<br/>
		</form>	
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>