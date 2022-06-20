<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@500&display=swap"
	rel="stylesheet">


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



<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->


<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
	padding-top: 200px;
}

.page-header.text-info {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	font-weight: bold;
	color: #75574B;
	border-bottom: none;
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
		margin-top: 100px;
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
	padding: 30px 0 0;
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
/* [RECIPE LIST] 폰트 적용 */
.wrapper {
	font-family: 'Tiro Devanagari Sanskrit', serif;
}
/* 검색, 정렬조건 css */
.condition {
	width: 100px;
	float: right;
	border-color: #D7D7D7;
}
/* 레시피 등록 버튼 css */
.submit {
	display: block;
	border: none;
	width: 120px;
	height: 40px;
	border-radius: 10px;
	color: #fff;
	font-size: 15px;
	cursor: pointer;
	margin-top: 0px;
	margin-bottom: 20px;
	background: #d4af7a;
	float: right;
	font-family: 'Gowun Batang', serif;
}
.submit:hover {
	background: #f7f7f7;
	color: #937062;
	border: 1px solid #937062;
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
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	margin: 0 0 0px;
	font-size: 13px;
}

.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	padding-top: 200px;
}

.hoc {
	padding-top: 0px;
}

/* 검색창 css */
.form {
	position: relative;
}

.form .fa-search {
	top: 20px;
	left: 20px;
	color: #9ca3af;
}

.form span {
	position: absolute;
	right: 17px;
	top: 13px;
	padding: 2px;
	border-left: 1px solid #d1d5db;
}

.left-pan {
	padding-left: 7px;
}

.left-pan i {
	padding-left: 10px;
}

.form-input {
	border-radius: 10px;
}

.form-input:focus {
	box-shadow: none;
	border: none;
}

.form-control {
	border-radius: 10px;
	display: inline-block;
	vertical-align: middle;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #999;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
}

.col-md-6 {
	width: 100%;
}

.namehead, .detailhead {
	font-size: 13px;
	line-height: normal;
	text-transform: uppercase;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}


/*체크박스*/
*, *:before, *:after {
  box-sizing: border-box;
}

.form-container {
  padding: 1rem;
  margin: 2rem auto;
  background-color: $grey-5;
  border: 1px solid $grey-25;
  width: 50%;
}

/* HTML5 Boilerplate accessible hidden styles */
.promoted-input-checkbox {
  border: 0; 
  clip: rect(0 0 0 0); 
  height: 1px; margin: -1px; 
  overflow: hidden; 
  padding: 0; 
  position: absolute; 
  width: 1px;
}

.promoted-checkbox {
  input:checked + label > svg {
    // Firefox doesn't render svg's that is loading with the use tag if its been set to display: none and then toggled to display: block, so you have to use tricks like this to get it to render again:
    height: 24px;
    animation: draw-checkbox ease-in-out 0.2s forwards;
  }
  
  label:active::after {
    background-color: $grey-25;
  }
  
  label {
    color: $brand;
    line-height: 40px;
    cursor: pointer;
    position: relative;
    &:after {
      content: "";
      height: 40px;
      width: 40px;
      margin-right: 1rem;
      float: left;
      border: 2px solid $brand;
      border-radius: 3px;
      transition: 0.15s all ease-out;      
    }
  }
  svg {
    stroke: $brand;
    stroke-width: 2px;
    height: 0; //Firefox fix
    width: 24px;
    position: absolute;
    left: -48px;
    top: -4px;
    stroke-dasharray: 33; //Firefox fix
  }
}

@keyframes draw-checkbox {
  0% {
    stroke-dashoffset: 33;
  }
  100% {
    stroke-dashoffset: 0;
  }
}
</style>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	$(function() {

		$(".imgover").on(
				"click",
				function() {
					console.log($(this).attr("value"));
					self.location = "/recipe/getRecipe?recipeNo="
							+ $(this).attr("value")
				});

		$(".submit").on("click", function() {

			var checkCount = $("input[name='ckBookmark']:checked").length;

			var array = new Array();

			$("input[name='ckBookmark']:checked").each(function() {
				array.push($(this).attr('id'));
			});

			if (checkCount != 0) {
				if (window.confirm(checkCount + '개의 책갈피를 삭제하시겠습니까?'))
        		{	
				self.location = "/bookmark/deleteBookmark?recipeList=" + array;
				}
			}

		});
	});
</script>

</head>

<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->

	<!-- ################################################################################################ -->

	<div class="container mt-5 px-2 lg-3">
		<br>

		<div class="center btmspace-50">
			<br />
			<h3 class="font-x2 nospace" align="center"
				style="font-family: 'Tiro Devanagari Sanskrit', serif;">
				<br> | B O O K M A R K | <br>
			</h3>
		</div>
		<button type="button" class="submit">북마크삭제</button>

		<input type="hidden" id="currentPage" name="currentPage" value="1" />


		<div class="row">
			<c:set var="i" value="0" />
			<c:forEach var="list" items="${list}">
				<div class="col-sm-6 col-md-3 col-lg-3">
					<br /> <br />

					<div id="latest" class="group">
						<input type="checkbox" name="ckBookmark" 
							id="${list.recipe.recipeNo }">
						<article class="one_third first">
							<a class="imgover" value="${list.recipe.recipeNo }" href="#"><img
								src="/resources/images/uploadFiles/${list.recipe.recipeImg }"
								width="320" height="300"></a>
							<div class="excerpt">
								<p class="namehead">${list.recipe.recipeDetail }</p>
								<p class="detailhead">
									<b>${list.recipe.recipeName }</b>
								</p>
								<ul class="meta">
									<li><c:choose>
											<c:when test="${list.recipe.recipeTheme=='KO'} ">
								            한식
								            </c:when>
											<c:when test="${list.recipe.recipeTheme=='CH'}">
								            중식
								            </c:when>
											<c:when test="${list.recipe.recipeTheme=='FR'}">
								            양식
								            </c:when>
											<c:when test="${list.recipe.recipeTheme=='JP'}">
								            일식
								            </c:when>
											<c:otherwise>
								            간식
								            </c:otherwise>
										</c:choose></li>
									<li><c:choose>
											<c:when test="${list.recipe.recipeDifficulty =='100'}"> 
									           초급
									          </c:when>
											<c:when test="${list.recipe.recipeDifficulty =='200'}"> 
									           중급
									           </c:when>
											<c:otherwise> 
									           고급
									           </c:otherwise>
										</c:choose></li>
									<li>${list.recipe.cookingTime}분</li>
									<li>${list.recipe.writer.userNickname }</li>
								</ul>
							</div>
						</article>
					</div>
					<!-- ################################################################################################ -->
				</div>
			</c:forEach>
		</div>

		<c:if test="${empty list}">
			<h3 align="center">책갈피 내역이 없습니다.</h3>
			<br>
		</c:if>
	</div>

</body>
</html>