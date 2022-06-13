<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--  ///////////////////////// 작성날짜 포맷  ////////////////////////// -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/resources/css/animate.min.css" rel="stylesheet">
<link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<style>
.btn-sm{
background-color: red;
}
@font-face {
 font-family: 'NanumBarunGothic';
 font-style: normal;
 font-weight: 400;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
}

.nanumbarungothic * {
 font-family: 'NanumBarunGothic', sans-serif;
}

@font-face {
    font-family: 'YeolrinMyeongjo-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/YeolrinMyeongjo-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.container {
	padding-top: 200px;
	margin-left: 50%;
    width: 800px;
     	font-family: 'NanumBarunGothic', sans-serif;
}

body {
 	font-family: 'NanumBarunGothic', sans-serif;
 	    width: 750px;
}

.image {
	padding-top: 30px;
}


.row{
margin-right:0px;
margin-left: 0px;
}
</style>

<style>


.text-center {
	text-align: left;
}


.iEJcKGheader{
font-family: 'YeolrinMyeongjo-Medium';
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

.ingredientName{
width:420px;
text-align: left;
}

.ingredientAmount{
text-align:right;
}

.table{
margin-top: 20px;
}

.table td{
margin-bottom: 10px;
}

.kgiNry {
    display: grid;
    align-items: flex-start;
    grid-template-columns: 48px 30px;
    float: right;
}


</style>

<!--  댓글 -->
<style>
body{
    margin-top:20px;
    background:#ebeef0;
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

/* 폰트어썸  */
.deleteReview, .updateReview{
font-family:FontAwesome;
border: none;
background-color: #fff;
}
</style>

</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">
				
				<input type="hidden" name="userId" value="${user.userId}">
				<input type="hidden" name="userNickname" value="${user.userNickname}">

				<div class="col-xs-12 col-md-12  col-lg-12" style="text-align: center">
					<c:forEach var="name" items="${recipe.recipeImg.split('/')[0]}">
					<input type="hidden" name="image" value="${recipe.recipeImg}">
						<img id="thum" src="/resources/images/uploadFiles/${name}"
							width="600" height="400" style="text-align: center;"/>
					</c:forEach>
				</div>

<br/>

				<input type="hidden" name="recipeNo" id="recipeNo"
					value="${recipe.recipeNo }" />





				<div class="col-xs-12 col-md-12  col-lg-12">
				<br/><br/>
					<div style="font-family: 'YeolrinMyeongjo-Medium'; font-size:17px ">${recipe.recipeDetail }</div>
					<div>
					<div class="kgiNry" style="text-align: right;" align="right" >
						<a id="kakao-link-btn" href="javascript:kakaoShare()">
					    	<img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" width="30" height="30"/>
					    </a>
					<i class="fa-regular fa-bookmark fa-2x"></i>
					</div>
						<h4>
							<strong style="font-family: 'YeolrinMyeongjo-Medium';">${recipe.recipeName}</strong>
						</h4>
					</div>
					<br> 
					<input type="hidden" name="detail" value="${recipe.recipeDetail }" />
					<input type="hidden" name="name" value="${recipe.recipeName}" />

					
						<h5>
							난이도 <c:choose>
									<c:when test="${recipe.recipeDifficulty.equals('100') }">
					초급
					</c:when>
									<c:when test="${recipe.recipeDifficulty.equals('200') }">
					중급
					</c:when>
									<c:otherwise>
					고급
					</c:otherwise>
								</c:choose>
							

							&nbsp;소요시간 ${recipe.cookingTime }분 
						</h5>
					<hr/>

			

				마치 오븐 스파게티처럼 보이는 라자냐는 이탈리아 파스타 요리 중 하나예요. 반죽을 얇게 밀어 넓적한 직사각형
					모양으로 자른 파스타를 라구 알라 볼로네제, 베샤멜 소스, 파르미지아노 레지아노 치즈 등의 속 재료와 함께 층층이 쌓은
					후 오븐에 구운 요리랍니다. 이처럼 오랜 시간과 정성이 들어가는 라자냐는 이탈리아에서 축제 또는 결혼식, 손님을 대접할
					때 등장하는 요리라고 해요. 오늘은 정성이 가득한 라자냐를 한 번 만들어 볼게요! 정성이 들어가는 만큼 깊은 맛과 풍미는
					인스턴트와 비교할 수 없어요. 라구소스를 끓여 놓으면 활용할 곳이 많으니 한 번에 많이 만들어 두고두고 먹어도 좋아요.
					고급스럽고 예쁜 라자냐로 식탁을 빛내보세요.
					<br/>


		
				<div class="iEJcKG">
						<h3 class="iEJcKGheader">기본 재료</h3>
						<div class="table">
						<table class="type09" style="width: 592px">
						<c:set var="i" value="0" />
						<c:forEach var="ingredient" items="${list}">
						<tr>
						<td class="ingredientName">${ingredient.ingredientName}</td>
						<td class="ingredientAmount">${ingredient.ingredientAmount}</td>
						</tr>
						</c:forEach>
						</table>
						</div>
				</div>
						

<hr/>


		<div class="iEJcKG">
			<h3 class="iEJcKGheader">레시피</h3>
			<br/>
			${recipe.recipeOrder }
			</div>
		<hr/>
				<form>
				
				<h3 class="iEJcKGheader">리뷰</h3>
				
						<div class="panel">
							<div class="panel-body">
								<textarea class="form-control" name="reviewContent" rows="2"
									placeholder="레시피에 대한 후기를 작성해주세요!"></textarea>
								<div class="mar-top clearfix">
									<button class="btn btn-sm btn-primary pull-right" type="submit">
										<i class="fa fa-pencil fa-fw"></i>등록
									</button>
									<input type="file" name="reviewImg" id="imgUpload"
										style="display: none;"></input> <label for="imgUpload"><i
										class="fa-solid fa-camera"></i></label>

								</div>
							</div>
				
				<c:forEach var="review" items="${review}">
					
						<div class="panel">
							<div class="panel-body">
								<div class="media-block">
									<a class="media-left" href="#"><img
										class="img-circle img-sm" alt="Profile Picture"
										src="/resources/images/168939.jpg"></a>
									<div class="media-body">
										<div class="mar-btm">
											<a href="#"
												class="btn-link text-semibold media-heading box-inline">${review.writerNickname }</a>
											<p class="text-muted text-sm">
												<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${review.reviewRegdate}"/>
												
											</p>
										</div>
										<p>${review.reviewContent }</p>
										<c:if test="${review.writerNickname == user.userNickname }">
										<input type="button" class="deleteReview"  value="&#xf2ed" id="${review.reviewNo }" style="float: right;margin-right: 17px">
										<input type="button" class="updateReview"  value="&#xf304" style="float: right;margin-right: 5px">
										</c:if>
									</div>
								</div>
							</div>
							</div>
							</c:forEach>

							<!--===================================================-->

  

							<!-- End Newsfeed Content -->

						</div>
				</form>
					</div>
			</div>

	<!--  화면구성 div Start /////////////////////////////////////-->
</body>

<script type="text/javascript">
	$(function() {

		$("button:contains('등록')").on("click", function() {
			fncAddReview();

		});
		
		$(".deleteReview").on("click", function() {
		var array = new Array();
		var textNo = $("input:hidden[name='recipeNo']").val();
		array.push($(this).attr('id'));
		alert("해당 리뷰를 삭제하시겠습니까?")	
	//	self.location = "/review/deleteReview?textNo="+textNo+"checkList="+array;
		});
		
		$(".deleteReview").on("click", function() {
			
		});

	});

	function fncAddReview() {
		var textNo = $("input:hidden[name='recipeNo']").val();
		console.log(textNo);
		$("form").attr("method", "POST").attr("action","/review/addReview?category=REC&textNo=" + textNo).submit();
		
		var userId = $("input:hidden[name='userId']").val();
		console.log(userId);
		var userNickname = $("input:hidden[name='userNickname']").val();
		console.log(userNickname);
		var recipeNo = $("input:hidden[name='recipeNo']").val();
		console.log(recipeNo);
		
		pushAlarm(userId, userNickname, recipeNo);
	}
	
	//리뷰 push 알림
	 function pushAlarm(userId, userNickname, recipeNo){
				 	
											
			$.ajax({
		        url : "/recipe/json/pushAlarm",
		        type : 'POST',
		        dataType : "json",   
	            data : {'recipeNo' : recipeNo, 'userId' : userId, 'userNickname' : userNickname }, 
	            async: false, 
	            error : function(){
		            alert("통신 에러");
		        },
		        success : function(data){
		        	
		        	alert("알람 전송 완료!!");
		        	    
		        		if(data.userId != data.writerId) {
			           		if(socket){
			        			let socketMsg = "recipeReview,"+data.userId+","+data.userNickname+","+data.writerId+","+data.recipeName;
			        			console.log(socketMsg);
			        			socket.send(socketMsg);
		           			}
		        		}
		        	}
		    	})
	 		};
</script>


<!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	///*
	Kakao.init('92dfe0703b7ef1d171ddfba9cfe0e6e6');

	// SDK 초기화 여부를 판단합니다.
	console.log(Kakao.isInitialized());

	function kakaoShare() {

		var image = $("input:hidden[name='image']").val();
		console.log(image);
		var name = $("input:hidden[name='name']").val();
		console.log(name);
		var detail = $("input:hidden[name='detail']").val();
		console.log(detail);
		var recipeNo = $("input:hidden[name='recipeNo']").val();
		console.log(recipeNo);

		Kakao.Link
				.sendDefault({
					objectType : 'feed',
					content : {
						title : name,
						description : detail,
						imageUrl : 'http://192.168.0.31:8080/resources/images/uploadFiles/'
								+ image,
						link : {
							mobileWebUrl : 'http://192.168.0.31:8080/recipe/getRecipe?recipeNo='
									+ recipeNo,
							webUrl : 'http://192.168.0.31:8080/recipe/getRecipe?recipeNo='
									+ recipeNo,
						},
					},
					buttons : [
							{
								title : '웹으로 보기',
								link : {
									mobileWebUrl : 'http://192.168.0.31:8080/recipe/getRecipe?recipeNo='
											+ recipeNo,
									webUrl : 'http://192.168.0.31:8080/recipe/getRecipe?recipeNo='
											+ recipeNo,
								},
							}, ],
					// 카카오톡 미설치 시 카카오톡 설치 경로이동
					installTalk : true,
				})
	}
	//=====================공유하기====================================

	$(document).ready(function() {

	});
</script>
</html>