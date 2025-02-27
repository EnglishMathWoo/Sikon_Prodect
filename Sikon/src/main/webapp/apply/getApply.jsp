<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">


<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

<style>
div.container {
	padding-top: 220px;
	font-family: 'Nanum Myeongjo', serif;
	width: 652px;
	padding-bottom: 150px;
}

html input[type=text] {
	background-color: #f7f7f7;
}

.update {
	cursor: pointer;
	background-color: #937062;
	border: none;
	color: #fff;
	font-size: large;
	padding: 12px 0;
	width: 49.3%;
}

.golist {
	cursor: pointer;
	background-color: #937062;
	border: none;
	color: #fff;
	padding: 12px 0;
	width: 100px;
	font-size: small;
}

.update:hover {
	background-color: #937062d4;
}

.check {
	cursor: pointer;
	background-color: #f7f7f7;
	border: 1px solid #937062;
	color: #937062;
	font-size: large;
	padding: 11px 0;
	width: 49.3%;
}

.check:hover {
	background-color: #e7e2e2;
}

html input[type=button] {
	background-color: #937062;
	border: none;
	color: #fff;
}

html input[type=button]:hover {
	background-color: #937062d4;
}

.point {
	background-color: #f7f7f7;
	border: 1px solid #937062;
	color: #937062;
}

.point:hover {
	background-color: #e7e2e2;
}

.search {
	display: flex;
	padding: 5px;
}

.form-divy {
	width: 100%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgb(0 0 0/ 8%);
	box-shadow: inset 0 1px 1px rgb(0 0 0/ 8%);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.addr {
	padding-top: 5px;
}

.subtitle {
	border-top: 2px solid #937062;
	border-bottom: 1px solid #937062;
	width: 652px;
	margin-left: -15px;
	height: 50px;
	padding: 15px;
	font-weight: bold;
	font-size: 18px;
}

.imagetd {
	width: 20%;
}

.content {
	text-align: left;
	padding-left: 20px
}

h5, h6 {
	width: 15%;
	font-weight: bold;
}

label {
	width: 15%;
}

.sectd {
	display: flex;
}

.paycontent {
	border-top: 2px solid #937062;
	width: 652px;
	margin-left: -15px;
	padding-top: 20px;
}

.payment {
	width: 84%;
	text-align: right;
}

.totalpay {
	font-size: 20px;
}

.totals {
	color: #FF4800;
}
</style>


<script type="text/javascript">

	$(function() {
		
		$(".check").on("click" , function() {
			history.go(-1);
		});
		
		$(".golist").on("click" , function() {
			self.location = "/apply/listApply"
		});
		

		
	});	
	
	</script>
</head>

<body>

	
	<jsp:include page="/layout/toolbar.jsp" />
	

	
	<div class="container">

		<div class="layout">
			<br>
			<h1 class="bg-defualt text-center">신청내역</h1>
			<br>

			
			<div>

				<div class="subtitle">
					<p>신청정보</p>
				</div>
				<br>

				<div class="form-group">
					<label for="userName">신청자 아이디</label> <strong> : ${apply.applier.userId} </strong>
				</div>

				<br>
				<div class="subtitle">
					<p>신청상품</p>
				</div>
				<br>

				<div class="form-group">
					<table style="width: 100%">
						<tr>
							<td class="imagetd">
							<c:choose>
									<c:when test="${cook.cookFilename.contains('/')}">
										<c:choose>
											<c:when test="${cook.cookFilename.contains('mp4')}">
												<c:forEach var="name" items="${cook.cookFilename.split('/')}">
													<video width="120" height="120" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4" value="${name}"></video>
												</c:forEach>
											</c:when>

											<c:otherwise>
												<c:forEach var="name" items="${cook.cookFilename.split('/')}">
													<img src="/resources/images/uploadFiles/${name}" width="120" height="120" align="absmiddle" />
													<input type="hidden" name="image" value="${name }" />
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										<img src="/resources/images/uploadFiles/${cook.cookFilename}" width="120" height="120" align="absmiddle" class="image" value="${prodThumbnail}" />
									</c:otherwise>
								</c:choose>
							</td>
							<td class="content">
								<p style="font-weight: bold; font-size: 15px">${apply.classCook.cookName}</p>
								<p>${apply.classCook.cookPrice}원</p>

								<p>신청인원: ${apply.cookStatus} 명</p>
								<input type="hidden" min="0" class="form-control" id="cookStatus" name="cookStatus" />



							</td>
						</tr>
					</table>
				</div>
			</div>

			<br>

			<section class="paycontent">

				<div class="sectd">
					<h5>총 상품금액</h5>
					<div class="payment totals">
						<strong class="totalpay">${apply.classCook.cookPrice * apply.cookStatus}원</strong>
					</div>
				</div>

				<div class="sectd">
					<h5>수업 시간</h5>
					<div class="payment">
						<strong> ${cook.startTime} ~ ${cook.endTime} </strong>
					</div>
				</div>

				<div class="sectd">
					<h5>쿠킹 멘토</h5>
					<div class="payment"><strong>${cook.mentor.userNickname }</strong></div>
				</div>


				<hr>


				<div class="sectd">
					<h5>결제수단</h5>
					<div class="payment">
						<strong>카카오 간편결제 </strong>

					</div>
				</div>


			</section>

			<br>
			<br>
			<div class="text-center">


				<c:if test="${user.role == 'admin' }">
					<button type="button" class="check">확&emsp;인</button>
				</c:if>
				<c:if test="${user.role != 'admin' }">
					<button type="button" class="golist">확&emsp;인</button>
				</c:if>
			</div>

			<br>
		</div>
	</div>

</body>

</html>