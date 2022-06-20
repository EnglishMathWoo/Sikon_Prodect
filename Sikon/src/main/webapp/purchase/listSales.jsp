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
	font-family: 'Nanum Myeongjo', serif;
}
.listsale{
	padding-top : 170px;
	padding-bottom: 200px;
}
.subtitles th{
	text-align:center;
}

.subtitles{
	border-bottom: 1px solid #937062;
	border-top: 2px solid #937062;
}

 div.row{
	font-family: 'Nanum Myeongjo', serif;
}
 
table {
	font-family: 'Nanum Myeongjo', serif;
}    
th{
	height: 50px;
	font-size: 15px
}
.pur{
	height: 50px;
	border-bottom:  1px solid #D7D7D7;
}
.status{
	font-weight: bold;
}
.cancel{
	color: #898989;
}
h3{
	font-family: 'Nanum Myeongjo', serif;
	color: #5a443b;
}
.pltitle{
	padding-top: 35PX;
	text-align: center;
}
</style>
	<script type="text/javascript">


		function fncGetList(currentPage) {
			console.log(currentPage);
			$("#currentPage").val(currentPage)
			$("#form").attr("method" , "POST").attr("action" , "/purchase/listSales").submit();
		}
		
		
		

		 $(function() {
			 
			 
			 $( "#sorting" ).on("click" , function() {
					console.log('조회');
						fncGetList(1);
				});
				 
			
			$( "td.divy" ).on("click" , function() {
				console.log('배송하기');
				var message1 = $(this).attr("value1");
				console.log(message1);
				var message2 = $(this).attr("value2");
				console.log(message2);
				
				self.location ="/purchase/updatedivyStatus?tranNo="+message1+"&divyStatus="+message2;
			});
			
			$( "td.arrival" ).on("click" , function() {
				console.log('배송도착');
				var message1 = $(this).attr("value1");
				console.log(message1);
				var message2 = $(this).attr("value2");
				console.log(message2);
				
				self.location ="/purchase/updatedivyStatus?tranNo="+message1+"&divyStatus="+message2;
			});
			
			
			$( ".user" ).on("click" , function() {
				console.log('유저정보');
				var message = $(this).attr("value");
				console.log(message);
				
				self.location ="/user/getUser?userId="+message;
			});

			$( ".tran" ).on("click" , function() {
				var tranNo = $(this).attr("value");
				console.log(tranNo);
				
				self.location ="/purchase/getPurchase?tranNo="+tranNo;
			});
			
			$(".getpurchase").on("click" , function() {
				 
				var serialNo = $(this).attr('value');
				console.log('serialNo: '+serialNo);
				
				self.location ="/purchase/getPurchaseBySerial?serialNo="+serialNo;
				
			});
			
			
			$( "td.divy" ).css("color" , "#f0445c");
			
		});	
	</script>		

</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container listsale">
	<br>
		<h3 class="pltitle" style="color:#333">| SALES LIST |</h3>
	    
	    <div>

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
								<select name="orderCondition" class="form-control" style="width:125px">
								 	<option value="0"  ${ ! empty search.orderCondition && search.orderCondition==0 ? "selected" : "" }>--정렬하기--</option>
									<option value="5"  ${ ! empty search.orderCondition && search.orderCondition==5 ? "selected" : "" }>배송하기</option>
									<option value="6"  ${ ! empty search.orderCondition && search.orderCondition==6 ? "selected" : "" }>배송중</option>
									<option value="7"  ${ ! empty search.orderCondition && search.orderCondition==7 ? "selected" : "" }>배송완료</option>
								</select>
						  </div>
						  <button type="button" class="btn btn-default" id="sorting">조회</button>
						  </div>
						  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
						  <input type="hidden" id="currentPage" name="currentPage" value=""/>
						 
						</form>
			    </div>
			    	
				<!-- table 위쪽 검색 Start /////////////////////////////////////-->
				 <br/>
				
		      <!--  table1 Start /////////////////////////////////////-->
		      <table style="width: 100%">
		      
		        <thead>
		          <tr class="subtitles">
		            <th align="center">No</th>
		            <th align="center">주문일자</th>
		            <th align="center">주문일련번호</th>
		            <th align="center">주문번호</th>
		            <th align="center">배송현황</th>
		            <th align="center">구매회원</th>
		          </tr>
		        </thead>
		       
				<tbody>
				
				  <c:set var="i" value="0" />
				  <c:forEach var="purchase" items="${list}">
					<c:set var="i" value="${ i+1 }" />
					
					<tr class="pur">
					  <td align="center">${ i }</td>
					  
					  <td align="center">${purchase.orderDate}</td>
					  <td align="center" class="getpurchase" value="${purchase.serialNo}">${purchase.serialNo}</td>
					  <td align="center" class="tran" value="${purchase.tranNo}">${purchase.tranNo}</td>
					 	 
					  <c:choose>
					  		<c:when test="${purchase.divyStatus.equals('000') }">
								<td align="center" class="status cancel"> 구매취소</td>	
							</c:when>
							<c:when test="${purchase.divyStatus.equals('001') }">
								<td align="center" class="divy status" value1="${purchase.tranNo }" value2="${purchase.divyStatus}">배송하기</td>			
							</c:when>
							<c:when test="${purchase.divyStatus.equals('002') }">
								
								<td align="center" style="color:#2990e9" class="arrival status"  value1="${purchase.tranNo }" value2="${purchase.divyStatus}">배 송 중</td>
							</c:when>
							<c:when test="${purchase.divyStatus.equals('003') }">
								
								<td align="center" class="status"> 배송완료</td>
							</c:when>
							<c:otherwise>
								<td></td>
							</c:otherwise>
					
						</c:choose>
					  	<td align="center"><a href="#" class="user" style="text-decoration: none;color:#708090;" value="${purchase.buyer.userId}">${purchase.buyer.userId}</a></td>
						
						</tr>
		          </c:forEach>
		        
		        </tbody>
		      
		      </table>
			 
			
	</div>
	<br>
	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	  
</div>
 	
 	

	
</body>
</html>