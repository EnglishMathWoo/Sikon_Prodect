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
	padding-top : 210px;
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
	text-align: center;
		font-family: 'Tiro Devanagari Sanskrit', serif;
	
}
.getpurchase{
	text-align: left;
	font-size: 15px;
}


#my_modal {
    display: none;
    width: 330px;
    padding: 20px 60px;
    background-color: #fefefe;
    border: 1px solid #888;
    border-radius: 3px;
    text-align: center;
}

#my_modal .modal_close_btn {
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

</style>
	<script type="text/javascript">


		function fncGetList(currentPage) {
			console.log("currentPage: "+currentPage);
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/purchase/listPurchase").submit();
		}
		
		

		 $(function() {
			 
			 $(".getpurchase").on("click" , function() {
				 
				var serialNo = $(this).attr('value');
				console.log('serialNo: '+serialNo);
				
				self.location ="/purchase/getPurchaseBySerial?serialNo="+serialNo;
				
			});
			 
				 
			$(".getprod").on("click" , function() {
			 
				var prodNo = $(this).attr('value');
				console.log('상품상세보기: '+prodNo);
				
				self.location ="/product/getProduct?menu=search&prodNo="+prodNo;
				
			});
			 
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
				
				var serialNo = $(this).attr("value1");
				var impNumber = $(this).attr("value2");
				var price = $(this).attr("value3");
				
				modal('my_modal'); 
				
				$( ".payback" ).on("click" , function() {
					
					$.ajax({
						
						 "url": "/purchase/json/cancleIamport?imp_uid="+impNumber,
					      "type": "POST",
					      "contentType": "application/json",
				   
				    }).done(function(data) {
			        	
			        	alert("구매취소 완료");
			        	self.location ="/purchase/cancelOrder?serialNo="+serialNo;
			        	
			        });
				});
				
				
			});
			
			
			
			
			$( ".review" ).on("click" , function() {
				var textNo=$(this).attr("value");
				var textNo2=$(this).attr("value2");
				var category='PRD';
				window.open('/review/addReview.jsp?category='+category+'&textNo='+textNo+'&textNo2='+textNo2, 'review', 'width=430, height=525, location=no, status=no, scrollbars=yes');
			});
			
			
		});	
		 
		 
		//========== 결제취소 모달창 =================================================
			
			function modal(id) {
		    var zIndex = 9999;
		    var modal = $('#' + id);
		    var quantity = $('#quantity').val();
		
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
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container list">
	
		<h3 class="orderlist">| O R D E R &nbsp; L I S T |</h3>
	    <br>
	    
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
			  		<th colspan="4" class="getpurchase" value="${purchase.serialNo }">
			  			<a href="#" class="deco" style="color: #333;text-decoration: none;">
			  			주문일자: <span style="font-weight: bold;">${purchase.orderDate }</span> &emsp;
			  			주문일련번호: <span style="font-weight: bold;">${purchase.serialNo }</span>&ensp;<i class="fa-solid fa-angle-right"></i>
			  			</a>
			  		</th>
			  		
			  	</tr>
			  	<tr>
						
					<td align="left" class="image getprod" value="${purchase.purchaseProd.prodNo }">	
						<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}"  width="85" height="85">
					</td>
					<td align="left" class="prodcontent getprod"  value="${purchase.purchaseProd.prodNo }">
						<p class="prodname">${ purchase.purchaseProd.prodName }</p>
						<p>${ purchase.purchaseProd.prodDisPrice }원</p>
						<p>구매수량 ${ purchase.purchaseQuantity }개</p>
					</td>
					<c:choose>
					  <c:when test="${purchase.divyStatus.equals('002')}">
							<td align="center" class="status">배송중</td>
						</c:when>
						<c:when test="${purchase.divyStatus.equals('001')}">
							<td align="center">
								<p  class="status">결제완료</p> 
								<p class="cancel"  value1="${purchase.serialNo }" value2="${purchase.impNumber }" value3="${purchase.purchaseProd.prodDisPrice }">구매취소</p>
							</td>
						</c:when>
						<c:when test="${purchase.divyStatus.equals('000')}">
							<td align="center" class="complete status">취소완료</td>
						</c:when>
						<c:otherwise>
							<td align="center"><p class="end status">배송완료</p><p>CJ대한통운 <a href="#">${purchase.invoiceNum }</a></p></td>
						</c:otherwise>
					 </c:choose>
					 
					 <c:choose>
					 	<c:when test="${purchase.divyStatus.equals('003') && purchase.reviewStatus.equals('001')}">
					 		<td class="rev"><button type="button" class="review" value="${purchase.purchaseProd.prodNo }" value2="${purchase.tranNo }">리뷰쓰기</button></td>
					 	</c:when>
					 	<c:otherwise>
					 		<td class="rev"></td>
					 	</c:otherwise>
					 </c:choose>
					 
				</tr>	 
					 
			  </c:if>
			  
			  <c:if test="${status.index ne 0 }">
			  	<c:set var="before" value="${list[status.index- 1].serialNo}" />
			  	<c:set var="after" value="${purchase.serialNo }" />
			  	
			  		<c:if test="${ before eq after }">
					  	<tr>
							
							<td align="left" class="image getprod" value="${purchase.purchaseProd.prodNo }">	
								<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" width="85" height="85">
							</td>
							
							<td align="left"  class="prodcontent getprod" value="${purchase.purchaseProd.prodNo }">
								<p class="prodname">${ purchase.purchaseProd.prodName }</p>
								<p>${ purchase.purchaseProd.prodDisPrice }원</p>
								<p>구매수량 ${ purchase.purchaseQuantity }개</p>
							</td>
							
							<c:choose>
							  <c:when test="${purchase.divyStatus.equals('002')}">
									<td align="center" class="status">배송중</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('001')}">
									<td align="center">
										<p  class="status">결제완료</p> 
										<p class="cancel"  value1="${purchase.serialNo }" value2="${purchase.impNumber }" value3="${purchase.purchaseProd.prodDisPrice }">구매취소</p>
									</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('000')}">
									<td align="center" class="complete status">취소완료</td>
								</c:when>
								<c:otherwise>
									<td align="center"><p class="end status">배송완료</p><p>CJ대한통운 <a href="#">${purchase.invoiceNum }</a></p></td>
								</c:otherwise>
							 </c:choose>
							 
							 <c:choose>
							 	<c:when test="${purchase.divyStatus.equals('003') && purchase.reviewStatus.equals('001')}">
							 		<td class="rev"><button class="review" value="${purchase.purchaseProd.prodNo }" value2="${purchase.tranNo }">리뷰쓰기</button></td>
							 	</c:when>
							 	<c:otherwise>
							 		<td class="rev"></td>
							 	</c:otherwise>
							 </c:choose>
			  	
						</tr>
			  		</c:if>
			  		
					<c:if test="${ before ne after }">
			  			<tr>
					  		<th colspan="4" class="getpurchase" value="${purchase.serialNo }">
					  			<a href="#" class="deco" style="color: #333;text-decoration: none;">
					  			주문일자: <span style="font-weight: bold;">${purchase.orderDate }</span> &emsp;
					  			주문일련번호: <span style="font-weight: bold;">${purchase.serialNo }</span>&ensp;<i class="fa-solid fa-angle-right"></i>
					  			</a>
					  		</th>
			  		
					  	</tr>
					  	<tr>
							
							<td align="left" class="image getprod" value="${purchase.purchaseProd.prodNo }">	
								<img src="/resources/images/uploadFiles/${purchase.purchaseProd.prodThumbnail.split('&')[0]}" width="85" height="85">
							</td>
							<td align="left"  class="prodcontent getprod" value="${purchase.purchaseProd.prodNo }">
								<p class="prodname">${ purchase.purchaseProd.prodName }</p>
								<p>${ purchase.purchaseProd.prodDisPrice }원</p>
								<p>구매수량 ${ purchase.purchaseQuantity }개</p>
							</td>
							<c:choose>
							  <c:when test="${purchase.divyStatus.equals('002')}">
									<td align="center" class="status">배송중</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('001')}">
									<td align="center">
										<p  class="status">결제완료</p> 
										<p class="cancel"  value1="${purchase.serialNo }" value2="${purchase.impNumber }" value3="${purchase.purchaseProd.prodDisPrice }">구매취소</p>
									</td>
								</c:when>
								<c:when test="${purchase.divyStatus.equals('000')}">
									<td align="center" class="complete status">취소완료</td>
								</c:when>
								<c:otherwise>
									<td align="center"><p class="end status">배송완료</p><p>CJ대한통운 <a href="#">${purchase.invoiceNum }</a></p></td>
								</c:otherwise>
							 </c:choose>
							 
							 <c:choose>
							 	<c:when test="${purchase.divyStatus.equals('003') && purchase.reviewStatus.equals('001')}">
							 		<td class="rev"><button class="review" value="${purchase.purchaseProd.prodNo }" value2="${purchase.tranNo }">리뷰쓰기</button></td>
							 	</c:when>
							 	<c:otherwise>
							 		<td class="rev"></td>
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
			구매한 상품이 없습니다.
		</div>
		<br>
	</c:if>
 	</div>
 	

	<!--  모달창 띄우기 /////////////////////////////////////-->
	 	<div id="my_modal">
	 		<a class="modal_close_btn"><i class="bi bi-x"></i></a>
	 		<br>
	 		<div class="message">
		    	결제를 취소하시겠습니까?
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