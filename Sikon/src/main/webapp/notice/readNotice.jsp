<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">

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
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

	body {
        padding-top : 50px;
    }
        
    .container {
       font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
		padding-top : 170px;
	}
		
	h2 {
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
    	margin-top: 50px;
	}
		
	.btn-b {
		cursor: pointer;
	    background-color: #937062;
	    border: none;
	    color: #fff;
	    padding: 12px 0;
	    width: 6%;
	    height: 34px;
	    justify-content: center;
        display: flex;
        align-items: center;
	    font-size: 17px;
	    border-radius: 5px;
	    border: 1px solid #d7d7d7;
	    margin : auto;
	}

	.btn-b:hover {
		background-color: #937062d4;
	}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">

	//뒤로가기
	$(function() {					
		$( "#previous" ).on("click" , function() {
			self.location = "/notice/listNotice?menu=manage";
		});	
	});	
	
</script>
	
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">
	
		<div class="row">
			<div style="float:left; color:#937062;"><h2 style= "font-weight: bold; font-family: 'Gowun Batang', serif;">${notice.noticeTitle}</h2></div>
		</div>
		<hr/>
		<div class="row">
			<div><strong>${notice.noticeContent}</strong></div>
		</div>
		<hr/>
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" id="previous" class="btn-b">이전</button>
	  		</div>
		</div>
		<br/>
		
 	</div>
 	
</body>

</html>