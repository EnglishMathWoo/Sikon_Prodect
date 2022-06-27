<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>등록</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">


<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">


<script src="resources/js/plugin/datepicker/bootstrap-datepicker.js"></script>
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>

<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">



<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<script src="/javascript/bootstrap-dropdownhover.min.js"></script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
div.container {
	padding-top: 200px;
}

.btn-w {
	cursor: pointer;
	background-color: #f7f7f7;
	border: 1px solid #937062;
	color: #937062;
	padding: 11px 0;
	width: 100px;
	font-size: small;
}

.btn-b {
	cursor: pointer;
	background-color: #937062;
	border: none;
	color: #fff;
	padding: 12px 0;
	width: 100px;
	font-size: small;
}
</style>
<script type="text/javascript">


$(function() {

	 $( "button:contains('확인')" ).on("click" , function() {
		 
		 
		 self.location = "/cook/listCook"
	});
	
	 $( "button:contains('추가등록')" ).on("click" , function() {

		 self.location = "/cook/addCook.jsp"
		 
		});
});

</script>
</head>

<body>


	<jsp:include page="/layout/toolbar.jsp" />



	<div class="container">

		<div class="page-header">
			<h1 class="bg-default text-center">쿠킹클래스 등록확인</h1>
		</div>

		<div class="row">
			<div class="text-right">
				<button type="button" class="btn-b">확인</button>
				<button type="button" class="btn-w">추가등록</button>
			</div>
		</div>


		<form class="form-horizontal" enctype="multipart/form-data">

			<input type="hidden" name="cookNo" value="${cook.cookNo}" />
			 <input type="hidden" name="menu" value="${param.menu}">
			<div class="row">
				<div class="col-xs-12 col-md-12" align="center">
					<c:choose>

						<c:when test="${cook.cookFilename.contains('/')}">

							<td class="ct_write01"><c:forEach var="name" items="${cook.cookFilename.split('/')}">
									<img src="/resources/images/uploadFiles/${name}" width="300" height="300" align="absmiddle" />
								</c:forEach></td>

						</c:when>


					</c:choose>

				</div>
			</div>

			<hr />
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스명</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookName}</div>

			</div>
			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>모집인원가능인원</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookStock }명</div>
			</div>
			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스모집인원</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookRecruit }명</div>
			</div>
			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스간략설명</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookBrief }</div>
			</div>
			<hr />




			<div class="row">
				<div class="col-xs-2 col-md-4">
					<strong>모집기간</strong>
				</div>
				<div class="col-sm-2 col-md-2">${cook.aplstarTime}~ ${cook.aplendTime}</div>

			</div>
			<hr />
			<div class="row">
				<div class="col-xs-2 col-md-4">
					<strong>수업시간</strong>
				</div>
				<div class="col-sm-2 col-md-2">${cook.startTime}~ ${cook.endTime}</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스가격</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookPrice }</div>
			</div>


			<hr />
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스테마</strong>
				</div>
				<div class="col-xs-8 col-md-8">
					<c:if test="${cook.cookTheme =='KO'}">
			한식 
			</c:if>
					<c:if test="${cook.cookTheme == 'JA'}">
			일식
			</c:if>
					<c:if test="${cook.cookTheme == 'AM'}">
			양식
			</c:if>
					<c:if test="${cook.cookTheme == 'CH'}">
			중식
			</c:if>
					<c:if test="${cook.cookTheme == 'DE'}">
			간식
			</c:if>

				</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스난이도</strong>
				</div>
				<div class="col-xs-8 col-md-8">
					<c:if test="${cook.cookDifficuty =='1'}">
			초급
			</c:if>
					<c:if test="${cook.cookDifficuty == '2'}">
			중급
			</c:if>
					<c:if test="${cook.cookDifficuty == '3'}">
			고급
			</c:if>
				</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<strong>쿠킹클래스장소</strong>
				</div>
				<div class="col-xs-8 col-md-8">${cook.cookLocation }</div>
			</div>

			<hr />

			<br />
			<br /> <br />
			<br />


			<div class="col-xs-12 col-md-12" align="center">${cook.cookContent }</div>





		</form>
	</div>


</body>

</html>