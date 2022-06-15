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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  /////////////////////////font////////////////////////// -->

<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">
	

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/resources/css/animate.min.css" rel="stylesheet">
<link href="/resources/css/bootstrap-dropdownhover.min.css"
	rel="stylesheet">
<!-- Bootstrap Dropdown Hover JS -->
<script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>


<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
.container {
	padding-top: 200px
}

@import
	url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap')
	;

body {
	font-family: 'Gowun Batang', serif;
	}

.search {
	top: 6px;
	left: 10px;
}

.form-control {
	border: none;
	padding-left: 32px;
}

.form-control:focus {
	border: none;
	box-shadow: none;
}

.green {
	color: green;
}

.iEJcKGheader {
	font-family: 'Gowun Batang', serif;
		font-size: 18px;
	line-height: 28px;
	letter-spacing: 0px;
	padding-bottom: 8px;
	text-align: start;
	font-weight: bold;
	height: 5;
}

hr {
	display: block;
	border-color: rgb(147, 112, 98) !important;
	border: 1px solid rgb(147, 112, 98);
	border-width: 1px 0 0 0";
}

.bg-light th{
text-align: center
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	
</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<jsp:include page="/mypage/leftbar.jsp" />


	<div class="container mt-5 px-2">
		<br>

		<div class="center btmspace-50">
			<br />
			<h3 class="font-x2 nospace" align="center" style="font-family: 'Tiro Devanagari Sanskrit', serif;">
				<br> | P O I N T |<br><br><br><br>
			</h3>
		</div>

		<div class="iEJcKG">
			<h3 class="iEJcKGheader">
				보유포인트
				<p style="float: right">5500P</p>
			</h3>
			<hr/>
			
		</div>
		<br />
		<br /><br><br>

		<div class="table-responsive">
			<table class="table table-responsive table-borderless">

				<thead>
					<tr class="bg-light">
						<th scope="col" width="10%" >적용일자</th>
						<th scope="col" width="30%"  >사용/적립</th>
						<th scope="col" width="30%"  >포인트</th>
						<th scope="col" width="30%"  >주문번호</th>
					</tr>
				</thead>

				<tbody>

					
    
				</tbody>
			</table>

		</div>

	</div>

	<jsp:include page="../common/pageNavigator_new.jsp" />

</body>

</html>