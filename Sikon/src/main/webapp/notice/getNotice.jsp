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
			font-family: 'Nanum Myeongjo', serif;
            padding-top : 50px;
        }
        	
		h1.text-center {
			font-family: 'Nanum Myeongjo', serif;
		}
		
		div.form-group{
			font-family: 'Nanum Myeongjo', serif;
		}
				  
        .buttonDiv{
        	display:flex;
        	flex-direction: row-reverse;        	
        }
        
        .buttonDiv button{
        	margin-right:10px;
        }
        
        h2{
    		margin-top: 50px;
		}
		
		#noticeDate {
			margin-top:70px;
			text-align:right;
			margin-right:30px;
		}
		
		.container{
			padding-top : 170px;
		}
		
		.btn-b {
			cursor: pointer;
		    background-color: #937062;
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
		    margin: auto;
		}
	
		.btn-b:hover {
			background-color: #937062d4;
		}
		
     </style>

  <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	$(function() {
				
		$( "#previous" ).on("click" , function() {
			history.go(-1);
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
			<div id="noticeDate" style="float:right">등록일자: ${notice.noticeDate}</div>
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
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>