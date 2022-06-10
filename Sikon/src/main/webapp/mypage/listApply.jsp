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


<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>


<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>


.container {
	padding-top: 150px;
} 
</style>
<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body {
	padding-top: 50px;
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	function fncGetList(currentPage) {
		//document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage);

		console.log(currentPage);

		$("form").attr("method", "POST").attr("action", "/apply/listApply")
				.submit();
	}

	$(function() {
		
		
		 $( "#sorting" ).on("click" , function() {
				console.log('조회');
					fncGetList(1);
			});

		$("td.tran").on("click", function() {

			var applyNo = $(this).attr("value");

			self.location = "/apply/getApply?applyNo=" + applyNo;
		});

		$("td.userid").on("click", function() {

			var userId = $(this).attr("value");

			self.location = "/user/getUser?userId=" + userId;
		});

		$("td.divy")
				.on(
						"click",
						function() {
							console.log('물건도착');
							var applyNo = $(this).attr("value1");
							console.log(applyNo);
							var applyStatus = $(this).attr("value2");
							console.log(applyStatus);

							self.location = "/apply/updateApplyStatus?menu=search&applyNo="
									+ applyNo + "&applyStatus=" + applyStatus;
						});
		$("td.cancel").on(
				"click",
				function() {
					console.log('구매취소');
					var applyNo = $(this).attr("value1");
					console.log(applyNo);
					var applyStatus = $(this).attr("value2");
					console.log(applyStatus);

					self.location = "/apply/cancel?applyNo=" + applyNo
							+ "&applyStatus=" + applyStatus;
				});

	});
</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	       <h3 style="color:#bc8f8f">구매이력</h3>
	    </div>
	    
	    
	    
	    
	    
		
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">배송</a></li>
		    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">환불</a></li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="home">

			    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
			    <br>
			    <div class="row">
			    
				    <div class="col-md-6 text-left">
				    	<p class="text-primary" style="color:gray">
				    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
				    	</p>
				    </div>
				  </div>  
				     <div class="row">
					    <form class="form-inline " id="form"> 
						 <div class="col-md-6 text-left"> 
						  <div class="form-group" align="left">
								<select name="applyCondition" class="form-control" style="width:125px">
								 	<option value="0"  ${ ! empty search.applyCondition && search.applyCondition==0 ? "selected" : "" }>--정렬하기--</option>
									<option value="5"  ${ ! empty search.applyCondition && search.applyCondition==5 ? "selected" : "" }>신청완료</option>
									<option value="6"  ${ ! empty search.applyCondition && search.applyCondition==6 ? "selected" : "" }>수강완료</option>									
								</select>
						  </div>
						  <button type="button" class="btn btn-default" id="sorting">조회</button>
						  </div>
					<input type="hidden" id="currentPage" name="currentPage" value="" />
					
						</form>
					
  </div>




					<!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
					

			
			</div>
			 <br/>

	
		<!-- table 위쪽 검색 Start /////////////////////////////////////-->


		<!--  table Start /////////////////////////////////////-->

		<table class="table table-hover table-striped">

			<thead>
				<tr>
					<th align="center">No</th>
					<th align="center">신청번호</th>
					<th align="center">수강현황</th>
					<th align="center">정보수정</th>


				</tr>
			</thead>

			<tbody>




				<c:set var="i" value="0" />
				<c:forEach var="apply" items="${list}">
					<c:set var="i" value="${ i+1 }" />


					<tr class="ct_list_pop">

						<td align="left" class="tran" value="${apply.applyNo}">${ i }</td>

						<td align="left" class="tran" value="${apply.applyNo}">${apply.applyNo}</td>





						<c:choose>
							<c:when test="${apply.applyStatus.equals('000')}">
								<td align="left">현재 구매 취소된 상품입니다.</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
								<td align="left">현재 신청완료 상태 입니다.</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left">수강완료입니다.</td>
							</c:when>

						</c:choose>


						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강완료 
									<c:if test="${apply.reviewStatus=='001' }">
					<a onclick="window.open('/review/addReview.jsp?category=COOK&textNo=${apply.applyNo}', 'review', 'width=430, height=525, location=no, status=no, scrollbars=yes');">리뷰쓰기</a>					
									</c:if></td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
								<td align="left" class="cancel" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">신청취소</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="complete">구매취소되었습니다</td>
							</c:when>
						</c:choose>

					</tr>
					<tr>

						<td id="${apply.applyNo}" colspan="11" bgcolor="#ffffff"
							height="1"><input type="hidden" value="${apply.applyNo}">
						</td>

					</tr>
				</c:forEach>

			</tbody>

		</table>
			<jsp:include page="../common/pageNavigator_new.jsp" />
		</div>
		</div>
			

	<!--  화면구성 div End /////////////////////////////////////-->


	<!-- PageNavigation Start... -->

	<!-- PageNavigation End... -->

</body>
</html>