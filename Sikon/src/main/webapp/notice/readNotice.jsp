<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
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
        
        .container{
			padding-top : 170px;
		}
     </style>

  <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	$(function() {
					
		$( "#previous" ).on("click" , function() {
			self.location = "/notice/listNotice?menu=manage";
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
	
		<div class="row">
			<div style="float:left"><h2>${notice.noticeTitle}</h2></div>
		</div>
		 
		<hr/>
		
		<div class="row">
			<div><strong>${notice.noticeContent}</strong></div>
		</div>
		
		<hr/>
		
		
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" id="previous" class="btn btn-primary">이전</button>
	  		</div>
		</div>
		
		<br/>
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>