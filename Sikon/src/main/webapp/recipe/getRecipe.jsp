<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--  ///////////////////////// 작성날짜 포맷  ////////////////////////// -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

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
<link href="/resources/css/bootstrap-dropdownhover.min.css"
	rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">


<style>
.btn-sm {
	color: #000;
}

@font-face {
	font-family: 'NanumBarunGothic';
	font-style: normal;
	font-weight: 400;
	src:
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
	src:
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix')
		format('embedded-opentype'),
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff')
		format('woff'),
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf')
		format('truetype');
}

.nanumbarungothic * {
	font-family: 'NanumBarunGothic', sans-serif;
}

@font-face {
	font-family: 'YeolrinMyeongjo-Medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/YeolrinMyeongjo-Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.container {
	padding-top: 200px;
	margin-left: 75%;
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

.row {
	margin-right: 0px;
	margin-left: 0px;
}

.updateButton{
text-align: right;
}
.updateButton button {
	background-color: #75574B;
	color: #fff;
	border: none;
	font-size: 12px
}


</style>

<style>
.text-center {
	text-align: left;
}

.iEJcKGheader {
	font-family: 'YeolrinMyeongjo-Medium';
	border-bottom: 2px solid rgb(147, 112, 98);
	font-size: 18px;
	line-height: 28px;
	letter-spacing: 0px;
	padding-bottom: 8px;
	border-bottom: 2px solid rgb(147, 112, 98);
	text-align: start;
	font-weight: bold;
	height: 5;
}

.ingredientName {
	width: 420px;
	text-align: left;
}

.ingredientAmount {
	text-align: right;
}

.table {
	margin-top: 20px;
}

.table td {
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
body {
	margin-top: 20px;
	background: #ebeef0;
}

.img-sm {
	width: 46px;
	height: 46px;
}

.panel {
	box-shadow: 0 2px 0 rgba(0, 0, 0, 0.075);
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

.middle .media-left, .middle .media-right, .middle .media-body {
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
.deleteReview, .updateReview {
	font-family: FontAwesome;
	border: none;
	background-color: #fff;
}

.btn_upload {
	cursor: pointer;
	display: inline-block;
	overflow: hidden;
	position: relative;
	padding: 5px 10px;
}

.yes {
	display: flex;
	align-items: flex-start;
	margin-top: 10px !important;
}

.btn_upload input {
	cursor: pointer;
	height: 100%;
	position: absolute;
	filter: alpha(opacity = 1);
	-moz-opacity: 0;
	opacity: 0;
}

.it {
	height: 100px;
	margin-left: 10px;
}

.btn-rmv1, .btn-rmv2, .btn-rmv3, .btn-rmv4, .btn-rmv5 {
	display: none;
}

.rmv {
	cursor: pointer;
	color: #fff;
	border-radius: 30px;
	border: 1px solid #fff;
	display: inline-block;
	background: rgba(255, 0, 0, 1);
	margin: -5px -10px;
}

.rmv:hover {
	background: rgba(255, 0, 0, 0.5);
}

.submit, .update
 {
  display: block;
  border: none;
  width: 40px;
  height: 30px;
  color: #000;
  font-size: 15px;
  cursor: pointer;
  margin-bottom: 10px;
  float: right;
  	font-family: 'Gowun Batang', serif;
  
}

.bi-bookmark-plus::before,.bi-bookmark-plus-fill::before  {
	color:#d4af7a;
    display: inline-block;
    font-family: bootstrap-icons !important;
    font-style: normal;
    font-weight: normal !important;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    font-size:33px;
    vertical-align: -0.125em;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

</style>

</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

		<input type="hidden" name="userId" value="${user.userId}"> 
		<input type="hidden" name="userNickname" value="${user.userNickname}">

		<div class="col-xs-12 col-md-12  col-lg-12"
			style="padding-right: 88px">
		  	<button type="button" class="update">수정</button>
		  	<button type="button" class="submit">삭제</button>

			<br/>
		</div>

		<div class="col-xs-12 col-md-12  col-lg-12" style="text-align: center">
			<c:forEach var="name" items="${recipe.recipeImg.split('/')[0]}">
				<input type="hidden" name="image" value="${recipe.recipeImg}">
				<img id="thum" src="/resources/images/uploadFiles/${name}"
					width="400" height="400" style="text-align: center;" />
			</c:forEach>
		</div>

		<br/> <input type="hidden" name="recipeNo" id="recipeNo"
			value="${recipe.recipeNo }" />





		<div class="col-xs-12 col-md-12  col-lg-12">
			<br />
			<br />
			<div style="font-family: 'YeolrinMyeongjo-Medium'; font-size: 17px">${recipe.recipeDetail }</div>
			<div>
				<div class="kgiNry" style="text-align: right;" align="right">
					<c:if test="${recipe.bookmarkStatus =='0'}">
					<i id="bookmarkBtn" class="bi bi-bookmark-plus"></i>
					</c:if>
					<c:if test="${recipe.bookmarkStatus =='1'}">
					<i id="bookmarkBtn" class="bi bi-bookmark-plus-fill"></i>
					</c:if>
					<a id="kakao-link-btn" href="javascript:kakaoShare()"> <img
						src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"
						width="30" height="30" />
					</a> 
				</div>
				<h4>
					<strong style="font-family: 'YeolrinMyeongjo-Medium';">${recipe.recipeName}</strong>
				</h4>
			</div>
			<br> <input type="hidden" name="detail"
				value="${recipe.recipeDetail }" /> <input type="hidden" name="name"
				value="${recipe.recipeName}" />


			<h5>
				난이도
				<c:choose>
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
				<div style="float: right">조회수: ${recipeViews}</div>
			</h5>
			<hr />
			${recipe.detail }
			 <br />



			<div class="iEJcKG">
				<h3 class="iEJcKGheader">기본 재료</h3>
				<div class="table">
					<table class="type09" style="width: 740px">
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


			<hr />


			<div class="iEJcKG">
				<h3 class="iEJcKGheader">레시피</h3>
				<br /> ${recipe.recipeOrder }
			</div>
			<hr />
		
				<h3 class="iEJcKGheader">리뷰</h3>
			<form id="comment" name="comment" method="post" enctype="multipart/form-data">

				<div class="panel">
					<div class="panel-body">
						<textarea class="form-control" name="reviewContent"
							id="reviewContent" rows="2" placeholder="레시피에 대한 후기를 작성해주세요!"></textarea>
						<div class="mar-top clearfix">
							<button class="btn btn-sm  pull-right" type="submit">
								등록
							</button>
							<input type="hidden" name="recipeNo" value="${recipe.recipeNo }">

							<div class="yes">
								<span class="btn_upload"> <input multiple="multiple"
									type="file" id="reviewImg" name="fileArray" class="input-img" />
									<i class="fa-solid fa-camera"></i>
								</span> <img id="ImgPreview" name="reviewImg" src="" class="preview1" />
								<input type="button" id="removeImage1" value="x"
									class="btn-rmv1" />
							</div>



						</div>
					</div>
				</div>
			</form>
			
			
			<c:forEach var="review" items="${review}">

						<div class="panel">
							<div class="panel-body">
								<div class="media-block">
									<a class="media-left" ><img
										class="img-circle img-sm" alt="Profile Picture"
										src="/resources/images/168939.jpg"></a>
									<div class="media-body">
										<div class="mar-btm">
											<a 
												class="btn-link text-semibold media-heading box-inline">${review.writerNickname }</a>
											<p class="text-muted text-sm">
												<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
													value="${review.reviewRegdate}" />

											</p>
										</div>
										<input type="hidden" name="reviewNo"
											value="${review.reviewNo }"> <br />
										<br />
										<c:if test="${review.reviewImg != null }">
											<img id="${review.reviewImg }" src="/resources/images/uploadFiles/${review.reviewImg }"
												width="200" height="200">
										</c:if>
										<p id="acontent">${review.reviewContent }</p>
										<div id="abt">
											<c:if test="${review.writerNickname == user.userNickname }">
												<input type="button" class="deleteReview" value="&#xf2ed"
													id="${review.reviewNo }"
													style="float: right; margin-right: 17px">
												<input type="button" class="updateReview"
													id="${review.reviewContent }" value="&#xf304"
													style="float: right; margin-right: 5px">
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

					<!--===================================================-->




				</div>
		</div>

	<!--  화면구성 div Start /////////////////////////////////////-->
</body>

<script>history.scrollRestoration = "auto"</script>
<script type="text/javascript">
	$(function() {

		$("button:contains('등록')").on("click", function() {
			fncAddReview();

		});
		
		$(document).on('click','.update',function() {
			var recipeNo = $("input:hidden[name='recipeNo']").val();
			self.location ="/recipe/updateRecipe?recipeNo="+recipeNo
			});
		
		$( "button:contains('삭제')" ).on("click" , function() {
			var recipeNo = $("input:hidden[name='recipeNo']").val();

		    var array = new Array();
			array.push(recipeNo);
			
			alert("레시피를 삭제하시겠습니까?");

			self.location = "/recipe/deleteRecipe?recipeList="+array;
			
		});

	

	});

	function fncAddReview() {
		event.preventDefault();
		 var form = $('#comment')[0];  	    
		    // Create an FormData object          
		    var data = new FormData(form);  	   
		    // disabled the submit button         
		
		var recipeNo = $("input:hidden[name='recipeNo']").val();
		var reviewContent=$('#reviewContent').val();
		var userId = $("input:hidden[name='userId']").val();
		var userNickname = $("input:hidden[name='userNickname']").val();
		console.log(userNickname);
		console.log(recipeNo);
		console.log(userId);

	     $.ajax({
	            type : "POST",  
	            url : "/review/json/addReview", 
	            contentType: "application/x-www-form-urlencoded; charset=euc-kr",
	            data : data,
	            processData: false,    
	            contentType: false,      
	            cache: false,  
	            error : function(request,status,error){
	            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            },
	            success : function(request) {
						alert("등록 성공");				           
	                    location.reload();
	    					
	                    }
	     
	     });


		pushAlarm(userId, userNickname, recipeNo);
	}

	$(".deleteReview").on("click", function() {
		var reviewNo = $(this).attr('id');
		var recipeNo = $("input:hidden[name='recipeNo']").val();
		alert("해당 리뷰를 삭제하시겠습니까?")

		$.ajax({
            type : "POST",  
            url : "/review/json/deleteReview",       
            data : {'reviewNo' : reviewNo, 'recipeNo':recipeNo },
            error : function(request,status,error){
            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            },
            success : function(request) {
                
					alert("삭제 성공~");				           
                    location.reload();
                    	
    					
                    }
		
	});
	});
	



	$(document).on('click','.updateReview',function() {
				//alert($(this).attr('id'))	
				var reviewContent = $(this).attr('id');
				var reviewNo = $("input:hidden[name='reviewNo']").val();
				var imgreview = $("#imgreview").attr('id');
				
				if(imgreview=='undefined'){
				
				
				$('#acontent').replaceWith(
								"<img id='yeda' src='/resources/images/uploadFiles/"+imgreview+"' width='100' height='100'>"+
								"<textarea id='updatecontent' class='form-control' name='reviewContent' rows='2'>"+ reviewContent+ "</textarea>");
				}
				else{
					$('#acontent').replaceWith(
							
							"<textarea id='updatecontent' class='form-control' name='reviewContent' rows='2'>"+ reviewContent+ "</textarea>");
					
				}
				
				$('#abt').replaceWith("<div class='updateButton'> <input type='button'  value='수정' id='"+reviewNo+"'>"
										+ "<input type='button' value='취소' ></div>");

			});
	
	function readURL(input, imgControlName) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(imgControlName).attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#reviewImg").change(function() {
		// add your logic to decide which image control you'll use
		var imgControlName = "#ImgPreview";
		readURL(this, imgControlName);
		$('.preview1').addClass('it');
		$('.btn-rmv1').addClass('rmv');
	});

	$("#removeImage1").click(function(e) {
		e.preventDefault();
		$("#imag").val("");
		$("#ImgPreview").attr("src", "");
		$('.preview1').removeClass('it');
		$('.btn-rmv1').removeClass('rmv');
	});
	
	

	//리뷰 push 알림
	function pushAlarm(userId, userNickname, recipeNo) {

		$.ajax({
			url : "/recipe/json/pushAlarm",
			type : 'POST',
			dataType : "json",
			data : {
				'recipeNo' : recipeNo,
				'userId' : userId,
				'userNickname' : userNickname
			},
			async : false,
			error : function() {
				alert("통신 에러");
			},
			success : function(data) {

				if (data.userId != data.writerId) {
					if (socket) {

						alert("알람 전송 완료!!");

						let socketMsg = "recipeReview," + data.userId + ","
								+ data.userNickname + "," + data.writerId + ","
								+ data.recipeName;
						console.log(socketMsg);
						socket.send(socketMsg);
					}
				}
			}
		})
	};
	
		

	
		$(document).on("click" ,"#bookmarkBtn", function(){
			var recipeNo = $("input:hidden[name='recipeNo']").val();
			var userId = $("input:hidden[name='userId']").val();
			console.log(recipeNo);
			console.log(userId);

		     $.ajax({
		            type : "POST",  
		            url : "/recipe/json/updateBookmark",       
		            dataType : "json",   
		            data : {'recipeNo' : recipeNo, 'userId' : userId },
		            error : function(){
		               alert("통신 에러");
		            },
		            success : function(bookmarkStatus) {
		                
		                    if(bookmarkStatus == 0){
		                    	alert("북마크 성공");
		                    	                    	
		                    							           
		                    $("#bookmarkBtn").removeClass('bi-bookmark');
					        $("#bookmarkBtn").addClass('bi-bookmark-plus');
					           
		                    location.reload();
		                    	
		    					
		                    }
		                    else if (bookmarkStatus == 1){
		                     alert("북마크 취소");
		                     
		                     	$("#bookmarkBtn").removeClass('bi-bookmark-plus');
					            $("#bookmarkBtn").addClass('bi-bookmark');
					         
		                  
		                    	location.reload();
		                }
		                    
		                    
		            }
		        })
		 });
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
</script>
</html>