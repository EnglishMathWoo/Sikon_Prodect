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
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
    <link href="/resources/css/animate.min.css" rel="stylesheet">
    <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <!-- jQuery UI toolTip 사용 JS-->
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<!--  ///////////////////////// CSS ////////////////////////// -->

<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
	padding-top: 50px;
}

.best_label {
	position: absolute;
	transform: translate(14px, 43px);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	top: 1px;
	left: 1px;
	width: 32px;
	height: 40px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	font-style: normal;
	font-weight: normal;
	font-size: 15px;
	letter-spacing: -0.5px;
	color: rgb(255, 255, 255);
	background:
		url(https://storage.wcuisine.net/web-assets/icons/best_label.svg) 0%
		0%/32px 40px no-repeat;
}

.orderCondition {
	width: 90%;
	margin: 10px auto;
	float: right;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.order {
	border: 1px solid #937062;
	color: #8B4513;
	float: right;
	height: 40px;
	width: 6%;
	box-sizing: border-box;
	justify-content: center;
	display: flex;
	align-items: center;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	cursor: pointer;
}

.page-header.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B;
	border-bottom: none;
}

.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.row {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.table.table-hover.table-striped {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.ref-sort {
	display: block;
	margin-bottom: 50px;
	text-align: center;
}

.ref-sort ul {
	margin: 0;
	padding: 0;
	list-style: none;
	text-transform: uppercase;
	font-weight: bold;
	font-size:medium;
	font-family: 'Gowun Batang', serif;
	  cursor: pointer;
}

.ref-sort li {
	display: inline-block;
	position: relative;
	margin: 0 10px 0 0;
	padding: 0 20px 0 0;
}

.ref-sort li::after {
	position: absolute;
	top: 0;
	right: 0;
	content: "|";
}

.ref-sort li:last-child {
	margin: 0;
	padding: 0;
}

.ref-sort li:last-child::after {
	display: none;
}

.ref-sort li a {
	
}
/* References */
.ref-sort li a {
	color: inherit;
}

.ref-sort li a:hover, #references .ref-sort li.current a {
	color: #937062;
	text-decoration-line: none;
}

.sectiontitle, #introblocks ul, #references .ref-sort {
	text-align: left;
}

.sectiontitle {
	display: block;
	max-width: 55%;
	margin: 0 auto 80px;
	text-align: center;
}

.sectiontitle .heading {
	margin: 0;
	padding: 0;
	line-height: 1;
}

.sectiontitle {
	max-width: none;
	margin-bottom: 50px;
}

.sectiontitle, #introblocks ul, #references .ref-sort {
	text-align: left;
}

.imgover:hover::before {
	background: rgba(130, 157, 162, .5); /* #829DA2 */
}

.imgover, .imgover:hover::after {
	color: #333333;
}
/* Latest */
.excerpt time {
	border-color: #D7D7D7;
}

#latest article {
	max-width: 348px;
}

#footer {
	padding-bottom: 50px;
} /* Not required, just looks a little better */
.latestimg>li {
	display: inline-block;
	float: none;
	width: auto;
	margin: 0 5% 5% 0;
}

.latestimg>li img {
	width: auto;
}

* Latest
	--------------------------------------------------------------------------------------------------------------- *
	/
	#latest {
	
}

#latest>li:last-child {
	margin-bottom: 0;
} /* Used when elements stack in small viewports */
article {
	
}

article img {
	width: 100%;
} /* Force the image to have the full width of parent at all times */
.excerpt {
	padding: 15px 0 0;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}


.excerpt time {
	display: block;
	margin: 0 0 30px 0;
	padding: 0 0 15px 0;
	font-style: normal;
	font-size: .8rem;
	line-height: 1;
	border-bottom: 1px solid;
}

.excerpt time i {
	margin-right: 5px;
}

.excerpt .heading {
	margin: 0 0 10px 0;
	font-size: 17px;
	text-align: center
}

.excerpt .meta {
	margin: 0 0 30px 0;
	padding: 0;
	list-style: none;
	text-align: left;
}

.excerpt .meta li {
	display: inline-block;
	font-size: .8rem;
}

.excerpt .meta li::after {
	margin-left: 5px;
	content: "|";
}

.excerpt .meta li:last-child::after {
	margin: 0;
	content: "";
}
p {
    font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
    margin: 0 0 0px;
        font-size: 13px;
}

.excerpt p {
	
}

.excerpt footer {
	margin-top: 30px;
}

.latestimg {
	
}

.latestimg>li {
	display: inline-block;
	float: left;
	width: 30%;
	margin: 0 0 5% 5%;
}

.latestimg>li:nth-last-child(-n+3) {
	margin-bottom: 0;
}
	/* Removes bottom margin from the last three items - margin is restored in the media queries when items stack */
.latestimg>li:nth-child(3n+1) {
	margin-left: 0;
	clear: left;
} /* Removes the need to add class="first" */
.latestimg>li img {
	width: 100%;
}
	/* Force the image to resize to take the full space - may have to be changed for tablets, depends on personal preference */
.latestimg>li a.imgover {
	display: block;
}

.carousel-inner>.item>img {
	top: 0;
	left: 0;
	min-width: 100%;
	max-height: 500px;
}
/* [RECIPE LIST] 폰트 적용 */
.wrapper {
	font-family: 'Tiro Devanagari Sanskrit', serif;
}
/* 검색, 정렬조건 css */
.condition {
	font-family: 'Gowun Batang', serif;
	width: 100px;
	float: right;
	border-color: #D7D7D7;
}

.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	padding-top: 120px;
}

.hoc {
	padding-top: 0px;
}

/* 폰트어썸 search */
.search {
	font-family: FontAwesome;
	border: none;
	background-color: #f7f7f7;
}

.act {
	background-color: #937062;
	color: #f7f7f7;
}

article img {
	width: 100%;
}

.fa-arrow-up:before {
	content: "\f062";
	margin-right: 7px;
	font-size: 19px;
	color: #a93f0d94;
	margin-top: 3px;
}

#increase {
	font-weight: bold;
	margin-right: 25px;
	font-size: 19px;
	color: #a93f0d94;
}

.imgover:hover{
	opacity: 0.8;
}
</style>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	
	//이미지 클릭시 상품 상세보기 이동
	$(document).on('click', '.imgover', function(){
		console.log($(this).attr("value"));
		self.location ="/product/getProduct?prodNo="+$(this).attr("value")+"&menu=search";
	});
					
	///레시피 랭킹
	$(document).on('click', '#recipe', function(){
		 self.location = "/ranking/listRecipe";
	});
	
	//스토어 랭킹
	$(document).on('click', '#store', function(){
		 var cookNo =$(this).attr("value");
		 self.location = "/ranking/listProduct";
	});
	
	//쿠킹멘토 랭킹
	$(document).on('click', '#mentor', function(){
		 self.location = "/ranking/listLove";
	});
	
	//스토어 전체 랭킹
	$(document).on('click', '#all', function(){
		 var orderCondition = $(this).attr('value');
		 self.location = "/ranking/listProduct";
	});
	
	//스토어 일간 랭킹
	$(document).on('click', '#daily', function(){
		 var orderCondition = $(this).attr('value');
		 self.location = "/ranking/listProduct?orderCondition="+orderCondition;
	});
	
	//스토어 주간 랭킹
	$(document).on('click', '#weekly', function(){
		 var orderCondition = $(this).attr('value');
		 self.location = "/ranking/listProduct?orderCondition="+orderCondition;
	});
	
	//스토어 월간 랭킹
	$(document).on('click', '#monthly', function(){
		 var orderCondition = $(this).attr('value');
		self.location = "/ranking/listProduct?orderCondition="+orderCondition;
	});
			
	//버튼 클릭시 상태 유지
	$(function() {				
		var odc = $("#orderCon").val();
		
		if(odc == ""){
			$(".order").removeClass('act');
			$("#all").addClass('act');
		} else if(odc == 0){
			$(".order").removeClass('act');
			$("#daily").addClass('act');
		} else if(odc == 1){
			$(".order").removeClass('act');
			$("#weekly").addClass('act');
		} else {
			$(".order").removeClass('act');
			$("#monthly").addClass('act');
		}
	});
			            
</script>
	
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">
		<div class="page-header text-info text-left"></div>
		
		<div class="wrapper row3">
			  <section class="hoc container clear"> 
			  <div class="center btmspace-50">
				  <br/>
				  <div class="font-x2 nospace" align="center" style="color:#937062; font-size:35px"><br> RANKING </div>
				  <div align="center" style="color:#937062; font-size:18px;"><br> TOP 20 </div>
			  </div>
			  
			  <form class="form-inline" name="detailForm">
			    
			  <br/><hr/><br/>
	    
		      <nav class="ref-sort" >
		      <ul>
		        <li id="recipe"><div>&nbsp;레시피&nbsp;</div></li>
		        <li id="store"><div style="color:#DAA520;">&nbsp;스토어&nbsp;</div></li>
		        <li id="mentor"><div>&nbsp;쿠킹멘토&nbsp;</div></li>
		      </ul>  
		      
		      <br>
				<div class="orderCondition" style="float:right">
			  	  <div class="order" id="monthly" value="2">월간</div>
			      <div class="order" id="weekly" value="1">주간</div>
			      <div class="order" id="daily" value="0">일간</div>
			      <div class="order" id="all" value=null>전체</div>
			    </div>
		  
		  		<input type="hidden" id="orderCon" value="${search.orderCondition}"/>
		  
		    </nav>
	  		</form>
	    	</section>
	  	</div>
		<input type="hidden" id="currentPage" name="currentPage" value="1"/>
	 
	  
		<div class="row">
		
		<c:if test="${!empty list}">
			<c:forEach var="product" items="${list}">
			<c:set var="i" value="${i+1}" />
		 	<div class="col-sm-6 col-md-3">
		  	<br/> <br/>
		    <div id="latest" class="group">
		    	<article class="one_third first">
		    	<a class="imgover" value="${product.prodNo}" >
					<img src="/resources/images/uploadFiles/${product.prodThumbnail.split('&')[0]}" id="image" class="image" value="${product.prodNo }"></a>
					<div class="best_label"><span style="margin-bottom: 8px;">${i}</span></div>
			        <div class="excerpt">
			        	<p>${product.prodDetail}<p>
			          	<h4 class="heading prodName" style="font-weight: bold">${product.prodName}</h4>
			        </div>
			         <br>
			      </article>
		    </div>
		    </div>
			</c:forEach>
	  	</c:if>
	  
		  <c:if test="${empty list}">
		  <br><br><br><br>
		  	<h2 id="noRanking" style="text-align:center; font-weight:bold;">랭킹 정보가 없습니다.</h2>
		    <br>
		  </c:if>   
		  
		  <div  id="scrollList"></div>
		  </div>
	</div>
	
</body>
</html>