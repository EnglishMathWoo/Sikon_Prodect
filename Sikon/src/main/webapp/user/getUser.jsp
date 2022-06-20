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
	<link
	href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap"
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
	margin-top:12px
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

#thum{
margin-top: 20px;
}

th{
text-align: center;
padding-bottom: 20px;
}

td{
padding-top: 10px;
}
</style>

</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

<div class="center btmspace-50">
			<br />
			<h3 class="font-x2 nospace" align="center"
				style="font-family: 'Tiro Devanagari Sanskrit', serif;">
				<br> | P R O F I L E | <br>
			</h3>
		</div>

		<div class="row" style="text-align: center">
				<br/>
				&nbsp;
				<img id="thum" src="/resources/images/uploadFiles/${user.userImage}" style="border-radius: 100%" width= "200px"; height=" 200px">
				</div>


		<br/><br/>

			<div class="iEJcKG">
				<h3 class="iEJcKGheader">프로필</h3>
				
				
				<div class="row">
					<label for="userId"
					class="col-sm-3 control-label">아 이 디</label>
					<div class="col-sm-4">
					<p>${user.userId}</p>
					</div>
				</div>
				
				<div class="row">
					<label for="userNickname"
					class="col-sm-3 control-label">닉 네 임</label>
					<div class="col-sm-4">
					<p>${user.userNickname}</p>
					</div>
					</div>
					
				</div>
					
					
				<div class="iEJcKG">
				<h3 class="iEJcKGheader">회원정보</h3>	
				<div class="row">
					<label for="userName"
					class="col-sm-3 control-label">이 름</label>
					<div class="col-sm-4">
					<p>${user.userName}</p>
					</div>
				</div>
				
				
				<div class="row">
					<label for="recipeDetail"
					class="col-sm-3 control-label">휴대전화번호</label>
					<div class="col-sm-4">
					<p>${user.phone}</p>
					</div>
					</div>
				
				<div class="row">
					<label for="userBirth"
					class="col-sm-3 control-label">생년월일</label>
					<div class="col-sm-4">
					<p>${user.userBirth}</p>
					</div>
					</div>
					
					<div class="row">
					<label for="addr"
					class="col-sm-3 control-label">주소</label>
					<div class="col-sm-4">
					<p>${user.addr}</p>
					</div>
					</div>
					
					<div class="row">
					<label for="regDate"
					class="col-sm-3 control-label">가입일자</label>
					<div class="col-sm-4">
					<p>${user.regDate}</p>
					</div>
					</div>
					
					<div class="row">
					<label for="mentorApply"
					class="col-sm-3 control-label">쿠킹멘토 신청 여부</label>
					<div class="col-sm-4">
					<p>${user.mentorApply}</p>
					</div>
					</div>
					
					
			<c:if test="${user.mentorApply == 'Y' }">
					<div class="iEJcKG">
					<h3 class="iEJcKGheader">경력사항</h3>	
					<div class="table">
					<table class="type09" style="width: 740px">
					<th  width="30%">회사명</th>
					<th width="40%">경력기간</th>
					<th width="30%">업무내용</th>
						<c:set var="i" value="0" />
						<c:forEach var="career" items="${career}" begin="0" end="1">
							<tr>
								<td class="company">${career.COMPANY}</td>
								<td class="careerDate">
								<fmt:formatDate pattern="yyyy-MM-dd" value="${career.START_DATE}" />
								~ 
								<fmt:formatDate pattern="yyyy-MM-dd" value="${career.END_DATE}" />
								</td>
								<td class="experience">${career.CAREER_EXPERIENCE}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				</div>
				
					
					
					<div class="iEJcKG">
					<h3 class="iEJcKGheader">자격사항</h3>	
					<div class="table">
					<table class="type09" style="width: 740px">
					<th width="30%" >자격증명</th>
					<th width="40%">취득날짜</th>
					<th width="30%">발급기관</th>
					<c:set var="i" value="0" />
		 	 		<c:forEach var="license" items="${license}" >
		 	 		<tr>
								<td class="company">${license.LICENSE_NAME}</td>
								<td class="company"><fmt:formatDate pattern="yyyy-MM-dd" value="${license.LICENSE_DATE}" /></td>
								<td class="company">${license.LICENSE_INSTITUTION}</td>
					</tr>
						</c:forEach>
					</table>
				</div>
				</div>
					
					
				</c:if>
				
				
				
				<c:choose>
		<c:when test="${sessionScope.user.role == 'admin' && user.mentorApply == 'Y' && user.role == 'user' }">
		<div class="row" style="padding-top: 50px;padding-bottom:60px">
	  		<div class="col-lg-12 text-center ">
	  			<button type="button" class="btn-w addcart">승인</button>&emsp;
	  			<button type="button" class="btn-b addPurchase" >거절</button>
	  		</div>
	  	</div>
	  	</c:when>
	  	<c:otherwise>
		<div class="row" style="padding-top: 50px;padding-bottom:60px">
	  		<div class="col-lg-12 text-center ">
	  			<button type="button" class="btn-w addcart" id="editUserInfo">수정</button>&emsp;
	  			<button type="button" class="btn-b addPurchase" >탈퇴</button>
	  		</div>
	  		</div>
	  	</c:otherwise>
	  	</c:choose>
				
					
</div>
</div>

	<!--  화면구성 div Start /////////////////////////////////////-->
</body>

<script>history.scrollRestoration = "auto"</script>
<script type="text/javascript">


		 $(function() {
				//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
				 $( "#editUserInfo" ).on("click" , function() {
						self.location = "/user/updateUser?userId=${user.userId}"
				});
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
	
	
</script>




</html>