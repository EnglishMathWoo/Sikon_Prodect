<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">


<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">

<style>
body {
	background-color: #F7F7F7;
}

#logo a {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.padding {
	padding: 3rem !important;
	margin-left: 200px;
}

.card-img-top {
	height: 300px;
	width: 1140px;
}

.bi-bookmark-plus::before, .bi-bookmark-plus-fill::before {
	color: #d4af7a;
	display: inline-block;
	font-family: bootstrap-icons !important;
	font-style: normal;
	font-weight: normal !important;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	font-size: 33px;
	vertical-align: -0.125em;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.bi-bookmark-check-fill::before, .bi-bookmark-check-fill::before {
	color: #d4af7a;
	display: inline-block;
	font-family: bootstrap-icons !important;
	font-style: normal;
	font-weight: normal !important;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	font-size: 33px;
	vertical-align: -0.125em;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.card-no-border .card {
	border-color: #d7dfe3;
	border-radius: 4px;
	margin-bottom: 30px;
	-webkit-box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05);
	box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05)
}

.card-body {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.25rem
}

.pro-img {
	margin-top: -80px;
	margin-bottom: 20px
}

.little-profile .pro-img img {
	width: 128px;
	height: 128px;
	-webkit-box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	border-radius: 100%
}

html body .m-b-0 {
	margin-bottom: 0px
}

h3 {
	line-height: 30px;
	font-size: 21px
}

.btn-rounded.btn-md {
	padding: 12px 35px;
	font-size: 16px
}

html body .m-t-10 {
	margin-top: 10px
}

.btn-primary, .btn-primary.disabled {
	background: #7460ee;
	border: 1px solid #7460ee;
	-webkit-box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px
		rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
	box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px
		rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
	-webkit-transition: 0.2s ease-in;
	-o-transition: 0.2s ease-in;
	transition: 0.2s ease-in
}

.btn-rounded {
	border-radius: 60px;
	padding: 7px 18px
}

.m-t-20 {
	margin-top: 20px
}

.text-center {
	text-align: center !important
}

h1, h2, h3, h4, h5, h6 {
	color: #000;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	font-weight: 400
}

p {
	margin-top: 0;
	margin-bottom: 1rem
}

.padding {
	padding-top: 120px;
}

.col-md-8 {
	padding-top: 100px;
}
</style>
<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
.channel {
	padding-top: 200px;
}
</style>

<style>
body {
	padding-top: 50px;
}

.page-header.text-info {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	font-weight: bold;
	color: #75574B
}

.text-info {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
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
	font-family: 'Gowun Batang', serif;
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
	content: "/";
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
	color: #829DA2;
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
	padding: 30px 0 0;
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
	font-size: 1.3rem;
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

/* [cook LIST] 폰트 적용 */
.wrapper {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.orderlist {
	padding: 35px;
	font-family: 'Tiro Devanagari Sanskrit', serif;
	text-align: center;
}

/* 레시피 등록 버튼 css */
.submit {
	display: block;
	border: none;
	width: 80px;
	height: 30px;
	border-radius: 10px;
	color: #fff;
	font-size: 15px;
	cursor: pointer;
	margin-top: 20px;
	margin-bottom: 20px;
	background: #d4af7a;
	float: right;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

/* 레시피등록 버튼이랑 hr이랑 충돌=> margin-top:20px에서 60px로 변경해서 수정*/
hr {
	margin-top: 60px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #eee;
}

/* 전체 건수 표기시 레시피등록 버튼과 간격 조절 margin: 10px 0 0 에서 0 0 0으로 변경 */
p {
	margin: 0 0 0px;
}
</style>



<script type="text/javascript">
	function fncGetList(currentPage) {
		
		
		$("#currentPage").val(currentPage);
	
		$("form").attr("method" , "POST").attr("action" , "/cook/mentor").submit();
		
	}

		 
	 $( document ).ready(function() {
			
					$( ".imgover" ).on("click" , function() {
					console.log($(this).attr("value"));
					self.location ="/cook/getCook?cookNo="+$(this).attr("value")+"&menu=search"
							
							
							
							
							
							
							
});
					

					
	
  //=======================================즐겨찾기===========================================///					
					$(document).on("click" ,"#bookmarkBtn", function(){

						var userId = $("input[name='userId']").val();
						var mentorId = $("input[name='mentorId']").val();
						var mentorNickname = $("input[name='mentorNickname']").val();
						
						console.log(userId);
						console.log(mentorId);
						console.log(mentorNickname);
						

					     $.ajax({
					            type : "POST",  
					            url : "/love/json/updateLove",       
					            dataType : "json",   
					            data : {'userNickname' : mentorNickname, 'userId' : userId },
					            error : function(){
					               alert("통신 에러");
					            },
					            success : function(loveCheck) {
					                
					                    if(loveCheck == 0){
					                    	alert("즐겨찾기완료.");
					                    	                    	
					                    	
					                    	var userNickname = $("input[name='userNickname']").val();

					                    	console.log(userId);
					                
					                    	console.log(userNickname);
					                    	
					                    	
					                    	pushAlarm(userId, userNickname, mentorId);

								           
					                    location.reload();
					                    	
					                    	
					    					
					                    }
					                    else if (loveCheck == 1){
					                     alert("즐겨찾기취소");
					                     

								         
					                  
					                    	location.reload();
					                }
					                    
					                    
					            }
					        })
					 });
        //==================================================================================///	
		 
        
					//좋아요 push 알림
					 function pushAlarm(userId, userNickname, mentorId){
															
							$.ajax({
						        url : "/cook/json/addLove",
						        type : 'POST',
						        dataType : "json",   
					            data : {'userId' : userId, 'userNickname' : userNickname, 'mentorId' : mentorId }, 
					            async: false, 
					            error : function(){
						            alert("통신 에러");
						        },
						        success : function(data){
						        	
						        	alert("알람 전송 완료!!");
						        	
						        	if (data.userId != data.mentorId) {   	          
						           		if(socket){
						        			let socketMsg = "love,"+data.userId+","+data.userNickname+","+data.mentorId;
						        			console.log(socketMsg);
						        			socket.send(socketMsg);
						           		}
						        	}
						        }
						    
						    })
					 };

	 
	   });
	 		 
					
</script>
</head>

<body>



	<jsp:include page="/layout/toolbar.jsp" />


	<div class="container channel">

		<form class="form-inline" name="detailForm">

			<div class="card ">
				<img class="card-img-top" src="/resources/images/uploadFiles/index/KakaoTalk_20210116_134002939.jpg" alt="Card image cap" width="80%">
				<div class="card-body little-profile text-center">
					<div class="pro-img">
						<img src="/resources/images/uploadFiles/${mentor.userImage}" alt="user">
					</div>
					<h3 class="orderlist">| M E N T O R C H A N N E L|</h3>

				</div>
			</div>
			<input type="hidden" name="mentorNickname" id="mentorNickname" value="${mentor.userNickname}" />
			 <input type="hidden" name="mentorId" id="mentorId" value="${mentor.userId}" />
			  <input type="hidden" name="userId" id="userId" value="${user.userId}" />
			   <input type="hidden" name="userNickname" id="userNickname" value="${user.userNickname}" />
			<div class="wrapper row3">

				<section class="hoc container clear">
					<div class="center btmspace-50">

						<p align="right">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</p>
					</div>

					<input type="hidden" id="currentPage" name="currentPage" value="" />

					<c:choose>
						<c:when test="${mentor.loveCount == '0'}">
							<i id="bookmarkBtn" class="bi bi-bookmark-plus"></i>
						</c:when>
						<c:otherwise>
							<i id="bookmarkBtn" class="bi bi-bookmark-check-fill"></i>
						</c:otherwise>
					</c:choose>




					<c:if test="${seessionScope.user.role=='mentor' }">
						<button type="button" class="submit">삭제</button>
					</c:if>



					<br />
					<hr />
					<br />
				</section>
		</form>
	</div>

	<input type="hidden" id="currentPage" name="currentPage" value="" />

	<div class="row">
		<c:set var="i" value="0" />
		<c:forEach var="cook" items="${list}">
			<div class="col-sm-6 col-md-3">
				<br /> <br />

				<div id="latest" class="group">
					<article class="one_third first">
						<a class="imgover" value="${cook.cookNo }" href="#"> <img src="/resources/images/uploadFiles/${cook.cookFilename }" width="320" height="300"></a>
						<div class="excerpt">
							<h4 class="heading">${cook.cookName }</h4>
							<h6>${cook.cookBrief }</h6>
							<ul class="meta">

								<li><strong>모집인원 : ${cook.cookRecruit } 명</strong></li>
								<li><c:if test="${cook.cookTheme =='KO'}">
										<strong>테마 : 한식</strong>
									</c:if> <c:if test="${cook.cookTheme == 'JA'}">
										<strong>테마 : 일식</strong>
									</c:if> <c:if test="${cook.cookTheme == 'AM'}">
										<strong>테마 : 양식</strong>
									</c:if> <c:if test="${cook.cookTheme == 'CH'}">
										<strong>테마 : 중식</strong>
									</c:if> <c:if test="${cook.cookTheme == 'DE'}">
										<strong>테마 : 간식</strong>
									</c:if></li>

							</ul>
						</div>
					</article>

				</div>
			</div>
		</c:forEach>
		<c:if test="${empty list}">
			<br>
			<br>
			<div class="emptyProd">판매중인 쿠킹클래스가 없습니다.</div>
			<br>
		</c:if>

	</div>

	</div>

	<jsp:include page="../common/pageNavigator_new.jsp" />
</body>

</html>