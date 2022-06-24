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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<style>
.colored-toast.swal2-icon-success {
  background-color: #a5dc86 !important;
}
.colored-toast .swal2-title {
  color: white;
}

.colored-toast .swal2-close {
  color: white;
}

.colored-toast .swal2-html-container {
width:50%;
  color: white;
}
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


.update {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 5px 0;
  width:10%;
  font-size: large;
}
.update:hover {
  background-color: #937062d4;
}

.submit {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 4px 0;
  width:10%;
  font-size: large;
}
.submit:hover {
  background-color: #e7e2e2;
}


.btn-b {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width:20%;
  font-size: large;
}
.btn-b:hover {
  background-color: #937062d4;
}

.btn-w {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:20%;
  font-size: large;
}
.btn-w:hover {
  background-color: #e7e2e2;
}

</style>

</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">


		<div class="col-xs-12 col-md-12  col-lg-12" style="text-align: center">
			<c:forEach var="name" items="${recipe.recipeImg.split('/')[0]}">
				<input type="hidden" name="image" value="${recipe.recipeImg}">
				<img id="thum" src="/resources/images/uploadFiles/${name}"
					width="400" height="400" style="text-align: center;" />
			</c:forEach>
		</div>

		<br/> 



		<div class="col-xs-12 col-md-12  col-lg-12">
			<br />
			<br />
			<div style="font-family: 'YeolrinMyeongjo-Medium'; font-size: 17px">${recipe.recipeDetail }</div>
			<div>
				<h4>
					<strong style="font-family: 'YeolrinMyeongjo-Medium';">${recipe.recipeName}</strong>
				</h4>
			</div>
			<br> <input type="hidden" name="detail"
				value="${recipe.recipeDetail }" /> <input type="hidden" name="name"
				value="${recipe.recipeName}" />


			<h5>
			   테마 : ${recipe.recipeTheme}
				
			
				/ 난이도 : 
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


				<span>/소요시간 ${recipe.cookingTime }분&ensp;</span>
			</h5>
			<hr />
			${recipe.detail }
			 <br />



			<div class="iEJcKG">
				<h3 class="iEJcKGheader">기본 재료</h3>
				<div class="table">
					<table class="type09" style="width: 740px">
						<c:set var="i" value="0" />
						<c:forEach var="ingredient" items="${ingredient}">
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
			
				</div>
				
				
		<div class="row">
			<div class="col-lg-12" style="text-align: center;padding-top: 50px; padding-bottom: 60px">
				<button type="button" class="btn-w check">확인</button>
				&emsp;
				<button type="button" class="btn-b addRecipe">추가등록</button>
			</div>
		</div>
		
		
	</div>

</body>
<script>
$("button:contains('추가등록')").on("click", function() {
	self.location ="/recipe/addRecipe.jsp"
});
$("button:contains('확인')").on("click", function() {
	self.location ="/recipe/listRecipe"
});
</script>

</html>