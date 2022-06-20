<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">

<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

body{
	 padding-top : 50px;
	font-family: 'Nanum Myeongjo', serif;
}

div.row{
	font-family: 'Nanum Myeongjo', serif;
}
 div.page-header{
	font-family: 'Nanum Myeongjo', serif;
}  
table {
	font-family: 'Nanum Myeongjo', serif;
	margin-top: 20px;
}
th{
	font-weight: lighter;
	font-size: 15px;
}
.table>tbody>tr>td{
	vertical-align: middle;
	height: 120px;
}
.table>tbody>tr>th{

	border-top: 2px solid #957777;
}
div.list{
	padding-top : 240px;
}

.cancel{
	font-size: 14px;
	text-decoration: underline;
}
.status{
	font-size: 18px;
	font-weight: bold;
}

.prodname{
	font-size: 15px;
	font-weight: bold;
}

.prodcontent{
	text-align: left;
}

.image{
	width: 105px;
}
.prodcontent{
	width: 50%;
}
.rev{
	width: 10%;
}
.review:hover {
  display: block;
  border: none;
  width: 90px;
  height: 36px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
  margin-top: 20px;
  margin-bottom: 20px;
  background: #937062;
  float: right;
  font-family: 'Gowun Batang', serif;
  
}
.review {
  display: block;
  width: 90px;
  height: 36px;
  color: #937062;
  border: 1px solid #937062;
  font-size: 15px;
  cursor: pointer;
  margin-top: 20px;
  margin-bottom: 20px;
  background: #f7f7f7;
  float: right;
  font-family: 'Gowun Batang', serif;
  
}

div.emptyProd{
	padding : 20px;
	height: 100px;
	text-align: center;
	font-weight: bold;
	color: #333;
}

.orderlist{
	padding: 35px;
	font-family: 'Tiro Devanagari Sanskrit', serif;
	text-align: center;
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

		$("th.tran").on("click", function() {

			var applyNo = $(this).attr("value");

			self.location = "/apply/getApply?applyNo=" + applyNo;
		});

		$( ".review" ).on("click" , function() {
			var textNo=$(this).attr("value");
			var textNo2=$(this).attr("value2");
			var category='COOK';
			console.log('리뷰');
			window.open('/review/addReview.jsp?category='+category+'&textNo='+textNo+'&textNo2='+textNo2, 'review', 'width=430, height=525, location=no, status=no, scrollbars=yes');
			console.log('리뷰달렸니?');
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
	
	

		
	<div class="container list">
	
		<h3 class="orderlist">
		| M Y A P P L Y |</h3>
	    <br>
	    
		<form>
			<input type="hidden" id="currentPage" name="currentPage" value=""/>
		</form>
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped">
					









		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="apply" items="${list}" varStatus="status">
		  
			<c:set var="i" value="${ i+1 }" />
			<tr>
			
			  <c:if test="${status.index eq 0 }">
			  	<tr>
			  		<th colspan="4" value="${apply.applyNo }"class="tran">신청일자: <span style="font-weight: bold;">${apply.checkDate }</span> &emsp;신청번호: <span style="font-weight: bold;">${apply.applyNo }</span></th>
			  		
			  	</tr>
			  	<tr>
						
					<td align="left" class="image" value="${apply.classCook.cookNo }">	
						<img src="/resources/images/uploadFiles/${apply.classCook.cookFilename.split('/')[0]}" width="85" height="85" align="absmiddle"/>
					</td>
					<td align="left" class="cookcontent">
						<p class="cookName">${ apply.classCook.cookName }</p>
						<p>${ apply.classCook.cookPrice }원</p>
						<p>신청인원: ${ apply.cookStatus }명</p>
					</td>

					 
						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강중 
							</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
								<td align="left" class="cancel" value1="${apply.applyNo }"
									value2="${apply.applyStatus}"><p  class="status">신청완료</p><p class="cancel"  value1="${apply.applyNo }" value2="${apply.applyStatus}">신청취소</p></td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('000')}">
								<td align="left" class="complete">수강취소완료</td>
							</c:when>
						<c:otherwise>
							<td align="center"><p class="end status">수강완료</p></td>
						</c:otherwise>							
						</c:choose>

							 <c:choose>
							 	<c:when test="${apply.applyStatus.equals('300') && apply.reviewStatus.equals('001')}">
							 		<td class="rev"><button class="review" value="${apply.classCook.cookNo }"  value2="${apply.applyNo }">리뷰쓰기</button></td>
							 	</c:when>
							 	<c:otherwise>
							 		
							 	</c:otherwise>
							 </c:choose>
					 
				</tr>	 
					 
			  </c:if>
			  
			  <c:if test="${status.index ne 0 }">
			  	<c:set var="before" value="${list[status.index- 1].applyNo}" />
			  	<c:set var="after" value="${apply.applyNo }" />
			  	
			  		<c:if test="${ before eq after }">
					  	<tr>
							
							<td align="left" class="image" value="${apply.classCook.cookNo }">
							
							
					<c:choose>
		    	<c:when test="${apply.classCook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${apply.classCook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<video width="85" height="85" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="85" height="85" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${apply.classCook.cookFilename}" width="85" height="85" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose>
		    	
		    									

							</td>
							
							<td align="left"  class="cookcontent">
								<p class="cookName">${ cook.cookName }</p>
								<p>${ apply.classCook.cookPrice }원</p>
								<p>신청인원 ${ apply.cookStatus }명</p>
							</td>
	
							 
						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강중 
							</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
								<td align="left" class="cancel" value1="${apply.applyNo }"
									value2="${apply.applyStatus}"><p  class="status">신청완료</p><p class="cancel"  value1="${apply.applyNo }" value2="${apply.applyStatus}">신청취소</p></td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('000')}">
								<td align="left" class="complete">수강취소완료</td>
							</c:when>
						<c:otherwise>
							<td align="center"><p class="end status">수강완료</p></td>
						</c:otherwise>							
						</c:choose>
							 <c:choose>
							 	<c:when test="${apply.applyStatus.equals('300') && apply.reviewStatus.equals('001')}">
							 		<td class="rev"><button class="review" value="${apply.classCook.cookNo }" value2="${apply.applyNo }">리뷰쓰기</button></td>
							 	</c:when>
							 	<c:otherwise>
							 		
							 	</c:otherwise>
							 </c:choose>			  	
						</tr>
			  		</c:if>
			  		
					<c:if test="${ before ne after }">
			  			<tr>
					  		<th colspan="4" value="${apply.applyNo }"class="tran">신청일자: <span style="font-weight: bold;">${apply.checkDate }</span> &emsp;신청번호: <span style="font-weight: bold;">${apply.applyNo }</span></th>
			  		
					  	</tr>
					  	<tr>
							
							<td align="left" class="image" value="${apply.classCook.cookNo }">	
														<c:choose>
		    	<c:when test="${apply.classCook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${apply.classCook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<video width="85" height="85" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="85" height="85" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${apply.classCook.cookFilename}" width="85" height="85" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose>
							</td>
							<td align="left"  class="cookcontent">
								<p class="cookName">${ apply.classCook.cookName }</p>
								<p>${ apply.classCook.cookPrice }원</p>
								<p>구매수량 ${ apply.cookStatus }개</p>
							</td>
						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강중 
							</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
								<td align="left" class="cancel" value1="${apply.applyNo }"
									value2="${apply.applyStatus}"><p  class="status">신청완료</p><p class="cancel"  value1="${apply.applyNo }" value2="${apply.applyStatus}">신청취소</p></td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('000')}">
								<td align="left" class="complete">수강취소완료</td>
							</c:when>
						<c:otherwise>
							<td align="center"><p class="end status">수강완료</p></td>
						</c:otherwise>							
						</c:choose>
							 <c:choose>
							 	<c:when test="${apply.applyStatus.equals('300') && apply.reviewStatus.equals('001')}">
							 		<td class="rev"><button class="review" value="${apply.classCook.cookNo }">리뷰쓰기</button></td>
							 	</c:when>
							 	<c:otherwise>
							 		
							 	</c:otherwise>
							 </c:choose>						
						
						
						</tr>	
			  		</c:if>
				  	
			  </c:if>
			  	
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
	  <!--  table End /////////////////////////////////////-->
	  <c:if test="${empty list}">
		<br><br>
		<div class="emptyProd">
			신청한 상품이 없습니다.
		</div>
		<br>
	</c:if>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	</div>
 	</div>
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>
</html>