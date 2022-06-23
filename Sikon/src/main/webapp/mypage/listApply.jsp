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
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
}

div.row{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
}
 div.page-header{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
}  
table {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
	margin-top: 20px;
}
th{
	font-weight: lighter;
	font-size: 15px;
	cursor: pointer;
	
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

.get{
	font-size: 14px;
	text-decoration: underline;
}

.cancel{
	font-size: 14px;
	text-decoration: underline;
}
.status{
	font-size: 18px;
	font-weight: bold;
}

.cookName{
	font-size: 15px;
	font-weight: bold;
}

.cookcontent{
	text-align: left;
}

.image{
	width: 105px;
}
.cookcontent{
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
#cancel_modal {
    display: none;
    width: 330px;
    padding: 20px 60px;
    background-color: #fefefe;
    border: 1px solid #888;
    border-radius: 3px;
    text-align: center;
}

#cancel_modal .modal_close_btn {
    position: absolute;
    top: 5px;
    right: 5px;
}

modal_close_btn{
	text-decoration-line: none;
	width:20px;
	height: 20px;
}

div.message{
	text-align: center;
	font-size: 15px;
}

a.payback{
	border: 1px solid #d7d7d7;
	text-align: center;
	height: 40px;
	width : 160px;
	padding: 10px;
	text-decoration-line: none;
	color: #333;
}
a.payback:hover{
	color: #333;
}
.bi-x::before {
    font-size: xx-large;
    color: black;
}

.tran{
text-align: left;
font-size: 15px
}

</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	function fncGetList(currentPage) {
		console.log("currentPage: "+currentPage);
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
		
		/*
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
		*/
		$( ".cancel" ).on("click" , function() {
			
			var applyNo = $(this).attr("value1");
			var impNumber = $(this).attr("value2");
		
			
			modal('cancel_modal'); 
			
			$( ".payback" ).on("click" , function() {
				
				$.ajax({
					
					 "url": "/apply/json/cancleIamport?imp_uid="+impNumber,
				      "type": "POST",
				      "contentType": "application/json",
			   
			    }).done(function(data) {
		        	
		        	alert("구매취소 완료");
		        	self.location ="/apply/cancel?applyNo="+applyNo;
		        	
		        });
			});
			
			
		});		
	

	});
	
	//========== 결제취소 모달창 =================================================
	
	function modal(id) {
    var zIndex = 9999;
    var modal = $('#' + id);
    var cookStatus = $('#cookStatus').val();

    var bg = $('<div>')
        .css({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            backgroundColor: 'rgba(0,0,0,0.4)'
        })
        .appendTo('body');

    modal
        .css({
            position: 'fixed',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            zIndex: zIndex + 1,

            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
        })
        .show()
        .find('.modal_close_btn')
        .on('click', function() {
            bg.remove();
            modal.hide();
        });
	}
	
//===========================================================
 	
</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	
	

		
	<div class="container list">
	
		<h3 class="orderlist">
		| M Y A P P L Y |</h3>
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
  
  <br>
  
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped">
					









		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="apply" items="${list}" varStatus="status">
		  
			<c:set var="i" value="${ i+1 }" />
			<tr>
			
			  <c:if test="${status.index eq 0 }">
			  	<tr>
			  		<th colspan="4" value="${apply.applyNo }"class="tran">신청일자: <span style="font-weight: bold;">${apply.checkDate }</span> &emsp;신청번호: <span class="get" style="font-weight: bold;">${apply.applyNo }</span></th>
			  		
			  	</tr>
			  	<tr>
						
					<td align="left" class="image" value="${apply.classCook.cookNo }">	
									 	<c:choose>
		    	<c:when test="${apply.classCook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${apply.classCook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<video width="100" height="100" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${apply.classCook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="100" height="100" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${apply.classCook.cookFilename}" width="100" height="100" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose>	    
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
							<td align="left">
								<p  class="status">신청완료</p> 
								<p class="cancel"  value1="${apply.applyNo }" value2="${apply.impNumber }" >신청취소</p>
							</td>
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
								<p>신청인원 : ${ apply.cookStatus }명</p>
							</td>
	
							 
						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강중 
							</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
							<td align="left">
								<p  class="status">신청완료</p> 
								<p class="cancel"  value1="${apply.applyNo }" value2="${apply.impNumber }" >신청취소</p>
							</td>
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
					  		<th colspan="4" value="${apply.applyNo }"class="tran">신청일자: <span style="font-weight: bold;">${apply.checkDate }</span> &emsp;신청번호: <span class="get" style="font-weight: bold;">${apply.applyNo }</span></th>
			  		
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
								<p>신청인원 :  ${ apply.cookStatus }명</p>
							</td>
						<c:choose>
							<c:when test="${apply.applyStatus.equals('200')}">
								<td align="left" class="divy" value1="${apply.applyNo }"
									value2="${apply.applyStatus}">수강중 
							</td>
							</c:when>
							<c:when test="${apply.applyStatus.equals('100')}">
							<td align="left">
								<p  class="status">신청완료</p> 
								<p class="cancel"  value1="${apply.applyNo }" value2="${apply.impNumber }" >신청취소</p>
							</td>
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
							 		<td class="rev"><button class="review" value="${apply.classCook.cookNo}" value2="${apply.applyNo }">리뷰쓰기</button></td>
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
 	 	<div id="cancel_modal">
	 		<a class="modal_close_btn"><i class="bi bi-x"></i></a>
	 		<br>
	 		<div class="message">
		    	신청 취소하시겠습니까?
		    </div><br>
		    <div class="forcenter">
		   		<a href="#" class="payback" style="text-decoration-line: none;">
		   	 		&emsp;확 &nbsp;인&emsp;
		   		</a>
		    </div>
		    <br>
		</div>
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>
</html>