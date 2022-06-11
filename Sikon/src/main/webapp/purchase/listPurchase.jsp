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
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">

<style>
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
}
th{
	font-weight: lighter;
	font-size: 15px;
}
.table>tbody>tr>td{
	vertical-align: middle;
}
.table>tbody>tr>th{

	border-top: 1px solid #333
}
div.container{
	padding-top : 200px;
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
.reivew{
	color: #937062;
}
</style>
	<script type="text/javascript">


		function fncGetList(currentPage) {
			console.log("currentPage: "+currentPage);
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/purchase/listPurchase").submit();
		}
		
		

		 $(function() {
				 
			
			$( "td.view" ).on("click" , function() {
				console.log('상세보기');
				var message = $(this).attr("value");
				console.log(message);
					self.location ="/purchase/getPurchase?tranNo="+message;
			});
			//*/
			$( "td.divy" ).on("click" , function() {
				console.log('물건도착');
				var message1 = $(this).attr("value1");
				console.log(message1);
				var message2 = $(this).attr("value2");
				console.log(message2);
				
				self.location ="/purchase/updatedivyStatus?tranNo="+message1+"&divyStatus="+message2;
			});
			
			$( ".cancel" ).on("click" , function() {
				console.log('구매취소');
				var message1 = $(this).attr("value1");
				console.log(message1);
				var message2 = $(this).attr("value2");
				console.log(message2);
				
				self.location ="/purchase/cancelOrder?tranNo="+message1+"&divyStatus="+message2;
			});
			
			
//			$( "td:nth-child(2)" ).css("color" , "#ffb6c1");
//			$( "td.divy" ).css("color" , "#f08080");
//			$( "td.end" ).css("color" , "#87cefa");
//			$( "td.complete" ).css("color" , "#708090");
			
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
	       <h3 style="color:#bc8f8f">주문배송조회</h3>
	    </div>
	    
	    
		<form>
			<input type="hidden" id="currentPage" name="currentPage" value=""/>
		</form>
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped">
      
      
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="purchase" items="${list}" varStatus="status">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			
			  <c:if test="${status.index eq 0 }">
			  	<tr>
			  		<th colspan="3">주문일자: <span style="font-weight: bold;">${purchase.orderDate }</span> &emsp;주문일련번호: <span style="font-weight: bold;">${purchase.serialNo }</span></th>
			  		
			  	</tr>
			  	<tr>
						
					<td align="left" class="center" value="${purchase.purchaseProd.prodNo }">	
						<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" class="image" width="80" height="80">
					</td>
					<td align="left">
						<p class="prodname">${ purchase.purchaseProd.prodName }</p>
						<p>${ purchase.purchaseProd.prodDisPrice }</p>
						<p>구매수량: ${ purchase.purchaseQuantity }</p>
					</td>
					<c:choose>
					  <c:when test="${purchase.divyStatus.equals('002')}">
							<td align="center" class="divy status"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">물건도착</td>
						</c:when>
						<c:when test="${purchase.divyStatus.equals('001')}">
							<td align="center"><p  class="status">결제완료</p> <p class="cancel"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">구매취소</p></td>
						</c:when>
						<c:when test="${purchase.divyStatus.equals('000')}">
							<td align="center" class="complete status">취소완료</td>
						</c:when>
						<c:otherwise>
							<td align="center" class="end status"><p>배송완료</p><p class="reivew">리뷰쓰기</p></td>
						</c:otherwise>
					 </c:choose>
				</tr>	 
					 
			  </c:if>
			  
			  <c:if test="${status.index ne 0 }">
			  	<c:set var="before" value="${list[status.index- 1].serialNo}" />
			  	<c:set var="after" value="${purchase.serialNo }" />
			  	
			  		<c:if test="${ before eq after }">
					  	<tr>
							
							<td align="left" class="toget" value="${purchase.purchaseProd.prodNo }">	
								<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" class="image" width="80" height="80">
							</td>
							
							<td align="left">
								<p class="prodname">${ purchase.purchaseProd.prodName }</p>
								<p>${ purchase.purchaseProd.prodDisPrice }</p>
								<p>구매수량: ${ purchase.purchaseQuantity }</p>
							</td>
							
							<c:choose>
							  <c:when test="${purchase.divyStatus.equals('002')}">
									<td align="center" class="divy status"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">물건도착</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('001')}">
									<td align="center"><p class="status">결제완료</p> <p class="cancel" value1="${purchase.tranNo }" value2="${purchase.divyStatus}">구매취소</p></td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('000')}">
									<td align="center" class="complete status">취소완료</td>
								</c:when>
								<c:otherwise>
									<td align="center" class="end status"><p>배송완료</p><p class="reivew">리뷰쓰기</p></td>
								</c:otherwise>
							 </c:choose>
			  	
						</tr>
			  		</c:if>
			  		
					<c:if test="${ before ne after }">
			  			<tr>
					  		<th colspan="3">주문일자: <span style="font-weight: bold;">${purchase.orderDate }</span> &emsp;주문일련번호: <span style="font-weight: bold;">${purchase.serialNo }</span></th>
			  		
					  	</tr>
					  	<tr>
							
							<td align="left" class="toget" value="${purchase.purchaseProd.prodNo }">	
								<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" class="image" width="80" height="80">
							</td>
							<td align="left">
								<p class="prodname">${ purchase.purchaseProd.prodName }</p>
								<p>${ purchase.purchaseProd.prodDisPrice }</p>
								<p>구매수량: ${ purchase.purchaseQuantity }</p>
							</td>
							<c:choose>
							  <c:when test="${purchase.divyStatus.equals('002')}">
									<td align="center" class="divy status"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">물건도착</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('001')}">
									<td align="center"><p class="status">결제완료</p> <p class="cancel"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">구매취소</p></td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('000')}">
									<td align="center" class="complete status">취소완료</td>
								</c:when>
								<c:otherwise>
									<td align="center" class="end status"><p>배송완료</p><p class="reivew">리뷰쓰기</p></td>
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
	  
 	</div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>
</html>