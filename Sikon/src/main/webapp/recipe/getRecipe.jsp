<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<style>
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
	padding-top: 70px;
	width: 652px;
 	font-family: 'NanumBarunGothic', sans-serif;
}

body {
 	font-family: 'NanumBarunGothic', sans-serif;
}

.image {
	padding-top: 30px;
}

div.row.thum {
	text-align: center;
}
</style>

<style>
#thum, hr {
	width: 652px;
}


.text-center {
	text-align: left;
}


.iEJcKG header{
font-family: 'YeolrinMyeongjo-Medium';
border-bottom: 2px solid rgb(147, 112, 98);
    font-size: 18px;
    line-height: 28px;
    letter-spacing: 0px;
    padding-bottom: 8px;
    border-bottom: 2px solid rgb(147, 112, 98);
    text-align: start;
    font-weight: bold;
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


</style>
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
	//*/	
	//=====================공유하기====================================

	$(document).ready(function() {

	});
</script>
</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

		<div class="row main">
			<div class="row thum">

				<div class="col-xs-6 col-md-6 text-center image">
					<c:forEach var="name" items="${recipe.recipeImg.split('/')[0]}">
					<input type="hidden" name="image" value="${recipe.recipeImg}">
						<img id="thum" src="/resources/images/uploadFiles/${name}"
							width="600" height="400" />
					</c:forEach>
				</div>

			</div>
<br/>

			<div class="row" id="cha">

				<input type="hidden" name="recipeNo" id="recipeNo"
					value="${recipe.recipeNo }" />

				<div class="col-xs-12 col-md-12  col-lg-12">



					<div style="font-family: 'YeolrinMyeongjo-Medium'; font-size:17px ">${recipe.recipeDetail }</div>
					<div>
						<h4>
							<strong style="font-family: 'YeolrinMyeongjo-Medium';">${recipe.recipeName}</strong>
						</h4>
					</div>
					<br> 
					<input type="hidden" name="detail" value="${recipe.recipeDetail }" />
					<input type="hidden" name="name" value="${recipe.recipeName}" />

					<div>
					<div class="text-right">
						<a id="kakao-link-btn" href="javascript:kakaoShare()">
					    	<img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" width="30" height="30"/>
					    </a>
					</div>
					
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
							
						</h5>

						<h5>
							소요시간 ${recipe.cookingTime }분 
						</h5>
					</div>

					<br />
				</div>
			</div>

			<hr />
			<div class="col-xs-12 col-md-12  col-lg-12 ">

				마치 오븐 스파게티처럼 보이는 라자냐는 이탈리아 파스타 요리 중 하나예요. 반죽을 얇게 밀어 넓적한 직사각형
					모양으로 자른 파스타를 라구 알라 볼로네제, 베샤멜 소스, 파르미지아노 레지아노 치즈 등의 속 재료와 함께 층층이 쌓은
					후 오븐에 구운 요리랍니다. 이처럼 오랜 시간과 정성이 들어가는 라자냐는 이탈리아에서 축제 또는 결혼식, 손님을 대접할
					때 등장하는 요리라고 해요. 오늘은 정성이 가득한 라자냐를 한 번 만들어 볼게요! 정성이 들어가는 만큼 깊은 맛과 풍미는
					인스턴트와 비교할 수 없어요. 라구소스를 끓여 놓으면 활용할 곳이 많으니 한 번에 많이 만들어 두고두고 먹어도 좋아요.
					고급스럽고 예쁜 라자냐로 식탁을 빛내보세요.
			</div>

		</div>

		<hr />
		
		<div class="col-xs-12 col-md-12  col-lg-12">
				<div class="iEJcKG">
						<header>기본 재료</header>
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
						

		</div>



		<div class="col-xs-12 col-md-12  col-lg-12 text-center image">
		<div class="iEJcKG">
			<header>레시피</header>
			<br/>
			${recipe.recipeOrder }
			</div>
		</div>
	</div>
	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
</html>