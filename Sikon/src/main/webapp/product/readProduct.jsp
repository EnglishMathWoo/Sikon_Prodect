<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

	
	<!--  ///////////////////////// CSS ////////////////////////// -->
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">

<style>
.checkprod{
	padding-top : 250px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
}
div.row{
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
}

.more {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  height: 35px;
  width:10%;
}
.more:hover {
  background-color: #937062d4;
}

.okay {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  width:10%;
  height: 35px;
}
.okay:hover {
  background-color: #e7e2e2;
}
</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

	
		$(function() {
			
			 $( ".okay" ).on("click" , function() {
				 console.log('확인');
				 self.location = "/product/listProduct?menu=manage"
			});
			
		});
		
		
		$(function() {
			
			$(".more").click(function(){
				console.log('추가등록');
				self.location = "/product/addProductView.jsp"
				
			});
			
		});

	</script>

</head>

<body>

	<!-- ToolBar Start -->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End -->
	

	<div class="container checkprod">
	
		<div style="text-align: center;">
	       <h3 class=" text-info" style="color:#333;font-family: 'Tiro Devanagari Sanskrit', serif;">| CHECK |</h3><br>
	    </div>
	    
	    <div class="row">
		    <div style="text-align: right;">
		      <button type="button" class="more"  >추가등록</button>
			  <button type="button" class="okay" >확&emsp;인</button>
		    </div>
		</div><br><br><br>
	
	
		<div class="row">
		<div class="col-xs-12 col-md-12" align="center">
		
		<c:choose>
		
		<c:when test="${product.prodThumbnail.contains('&')}">
		
			<td class="ct_write01">
				<c:choose>
				<c:when test="${product.prodThumbnail.contains('mp4')}">
					<c:forEach var="name" items="${product.prodThumbnail.split('&')}">
						<video width="400" height="300" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"></video>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach var="name" items="${product.prodThumbnail.split('&')}">
						<img src="/resources/images/uploadFiles/${name}" width="300" height="300" align="absmiddle"/>
					</c:forEach>
				</c:otherwise>
				</c:choose>		
		
			</td>
		
		</c:when>
		
		<c:otherwise>
			<img src="/resources/images/uploadFiles/${product.prodThumbnail}" width="300" height="300" align="absmiddle"/>
		</c:otherwise>
		</c:choose>

		</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodName}</div>
		</div>
		
		<hr/>
		
		
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>재고량</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodStock }</div>
		</div>
		
		<hr/>
			
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>상품간략정보</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodDetail }</div>
		</div>
		
		<hr/>
		
		
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>가격</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodPrice }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>할인율</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodDisRate }</div>
		</div>
		
		<hr/>
				
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>할인가</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodDisPrice }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>테마</strong></div>
			<div class="col-xs-8 col-md-8">
			<c:if test = "${product.prodTheme == 'CW'}">
			식기류 
			</c:if>
			<c:if test = "${product.prodTheme == 'TW'}">
			조리기구
			</c:if>
			<c:if test = "${product.prodTheme == 'MK'}">
			밀키트
			</c:if>
			</div>
			
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>쿠폰적용유무</strong></div>
			<div class="col-xs-8 col-md-8">
			<c:if test = "${product.couponApply == 'Y'}">
			적용가능 
			</c:if>
			<c:if test = "${product.couponApply == 'N'}">
			적용불가
			</c:if>
			</div>
			
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-4"><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-8">${product.prodContent }</div>
		</div>
		
		
		<br/>
		
 	</div>

</body>
</html>