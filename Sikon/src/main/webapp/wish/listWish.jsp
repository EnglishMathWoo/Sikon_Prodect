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

<style>
.cartlayout{
	 padding-top : 170px;
	font-family: 'Nanum Myeongjo', serif;
	padding-bottom: 200px;
}

div{
	font-family: 'Nanum Myeongjo', serif;
}
.subtitle{
	font-weight: bold;
	font-size: 15px;
	border-top: 2px solid #937062d4;
	padding: 15px;
}
 input[type="checkbox"]:checked{
 	background: #bc8f8f;
 }

#totalprice{
	border:none;
	width:100px;
	text-align:right;
	background: #f7f7f7;
	font-weight: bold;
	font-size: x-large;
}

.boxselect, .cookStatus, .price{
	padding-top:35px;
}

.deletebtn{
 	cursor: pointer;
	 background-color: #f7f7f7;
	 border: 1px solid #c1c1c1;
	 color: #c1c1c1;
	 padding-top: -5px;
 }

.selectdelete {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #b39183;
  color: #b39183;
  padding: 11px 0;
  width: 35%;
}
.selectdelete:hover {
  border: 1px solid #937062;
  color: #937062;
}

.buybtn {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width: 18%;
}
.buybtn:hover {
  background-color: #937062d4;
}
.col-md-6 {
    width: 40%;
}

.calculation{
	 cursor: pointer;
	 background-color: #f7f7f7;
	 border: 1px solid #999595;
	 color: #999595;
	 height: 28.39px;
	 width: 28.39px;
	 font-weight: bold;
}

.carttitle{
	padding: 40px;
	text-align: center;
}
.price{
	font-size: 16px;
}
</style>
	<script type="text/javascript">
	$(document).ready(function() {
		 
		///* 
		<!-- ------------- 총 결제금액 초기값 --------------- -->
		 
		 var totalprice = 0;
		 var cookPrice = $("div.cookPrice").attr("value");
		 var cookStatus = $("div.cookStatus").attr("value");
		 console.log(cookPrice);
		 console.log(cookStatus);
	
		 
		 var list = [];
	   		<c:forEach var="wish" items="${wish}" >
	   		totalprice += (Number(${wish.wishCook.cookPrice})*Number(${wish.cookStatus}));
	   		</c:forEach>
	   		
		 console.log(totalprice);
		
		 $("#totalprice").val(totalprice);
		 
		 
		 <!-- ------------- 장바구니 삭제 --------------- -->
		 
		 $( "button.delete" ).on("click" , function() {
			 var wishNo = $(this).val();
				console.log('delete');
				console.log(wishNo);
				self.location = "/wish/deleteWish?wishNo="+wishNo;
				
				alert('삭제');
		  });
		 $( ".selectdelete" ).on("click" , function() {
				
				console.log('deleteSelect');
				
				$("form").attr("method" , "POST").attr("action" , "/wish/deleteSelect").submit();
				
		  });
	
		 <!-- ------------- 상품수량 수정 --------------- -->

		 //*
		 
		 $( "button.plus" ).on("click" , function() {
	         
			 var wishNo = $(this).val();
			 var cookStatus = $(this).parent().children().eq(1).val();
			 cookStatus = Number(cookStatus)+1;
			console.log('plus');
			console.log(wishNo);
			console.log(cookStatus);
			
	         $.ajax( 
	               {
	                  url : "/wish/json/updateWish?wishNo="+wishNo+"&cookStatus="+cookStatus ,
	                  method : "GET" ,
	                  dataType : "json" ,
	                  headers : {
	                     "Accept" : "application/json",
	                     "Content-Type" : "application/json"
	                  },
	                  success : function(JSONData , status) {

	                	 //$('input[name=quantity]').val(JSONData)
	                	 
	                  }
	            });
  			 });
		 $( "button.minus" ).on("click" , function() {
	         
			 var wishNo = $(this).val();
			 var cookStatus = $(this).parent().children().eq(1).val();
			 cookStatus = Number(cookStatus)-1;
				console.log('minus');
				console.log(wishNo);
				console.log(cookStatus);
			
	         $.ajax( 
	               {
	                  url : "/wish/json/updateWish?wishNo="+wishNo+"&cookStatus="+cookStatus ,
	                  method : "GET" ,
	                  dataType : "json" ,
	                  headers : {
	                     "Accept" : "application/json",
	                     "Content-Type" : "application/json"
	                  },
	                  success : function(JSONData , status) {
	                	  
	                	  //$('input[name=quantity]').val(JSONData)
	                	 
	                  }
	            });
  			 });
		 
	 
		 //*/		 
		 
		 
			 
			 $( ".buybtn" ).on("click" , function() {
				 console.log('구매');
				 var checking = $(".checkbuy").val();
				 
				 var delchk = []; 

				    $('.checkbuy:checked').each(function(){
				        delchk.push($(this).val());
				    });
				 
				    console.log('delchk: '+delchk.length);
				 if(delchk.length == 0){
					 alert('구매할 상품을 선택해주세요.');
					 return null;
				 }
				 
				 $("form").attr("method" , "GET").attr("action" , "/apply/addApplyByWish").submit();
				 
				});
		
					
			 <!-- ------------- 일괄선택 --------------- -->
			 
				$("#checkall").click(function(){
					
					if($("#checkall").prop("checked")){
						
						$("input[name=wishNo]").prop("checked",true);
						
					}else{
						
						$("input[name=wishNo]").prop("checked",false);
						
					}
					
				})
				 
				 
				$("input[name=wishNo]").click(function(){
					
					if($("#checkall").prop("checked")){
						
						$("#checkall").prop("checked",false);
						
					}
					
				})
							
				
				<!-- ------------------------------------ -->		
			 
				
		
			 
			 
		});	
	</script>		

</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container cartlayout">
	
		
		
	       <h3 class="carttitle">| W I S H L I S T |</h3>
		
		<br>
		
		
      
        <div class="row">
        	 <div class="col-md-1 text-center"><input type="checkbox" id="checkall" checked/></div>
        	<div class="col-md-6 text-center">쿠킹클래스정보</div>  
            <div class="col-md-2 text-center">추가신청</div>
            <div class="col-md-2 text-center">소 계</div>
            <div class="col-md-1 text-center"></div>
           
        </div>
       	<hr/>
		<form class="form-horizontal">
		<c:set var="i" value="0" />
		<c:forEach var="wish" items="${wish}">  
		  <div class="row">
			<c:set var="i" value="${ i+1 }" />  
		
			  
			  <div class="col-md-1 text-center boxselect">
			  	<input type="checkbox" class="checkbuy"  name="wishNo" value="${wish.wishNo}"/>	
			  	
			  </div>
			  
		  
			
			  
			  <div class="col-md-6 text-left">
			
			
			 	<c:choose>
		    	<c:when test="${wish.wishCook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${wish.wishCook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${wish.wishCook.cookFilename.split('/')}">
								<video width="100" height="100" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="100" height="100" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${wish.wishCook.cookFilename}" width="100" height="100" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose>	    

						co
				&emsp;&emsp;${wish.wishCook.cookName}&emsp;&emsp;
				
				<button class="delete deletebtn" value="${wish.wishNo}">X</button>
			  </div>
		
			 
			 	<div align="center" class="col-md-2 text-center cookStatus" value="${wish.cookStatus }">
			  	<c:choose>
			  		<c:when test="${wish.cookStatus == 1 }">
			  			<a href="#" class="btn btn-default btn-xs disabled" role="button" value="${wish.wishNo}">-</a>
			  		</c:when>
			  		<c:otherwise>
			  			<button class="btn btn-default btn-xs minus" value="${wish.wishNo}">-</button>
			  		</c:otherwise>
			  	</c:choose>
			  	<input type="text" name="cookStatus" value=" ${wish.cookStatus }" style="width:30px;" readonly/>
			  	<button class="btn btn-default btn-xs plus" value="${wish.wishNo}">+</button>
			  </div>
				
 <div align="center" class="col-md-2 text-center price" value="${wish.wishCook.cookPrice*wish.cookStatus }" >${wish.wishCook.cookPrice*wish.cookStatus} 원</div>
			  
			  

			  
			  
			
			  
			  
			  
           </div>
           <hr/>
          </c:forEach>
    </form>       
	      <div>
		      <table style="width:100%;">
			      <tr>
			      	  <td style="text-align: left"><button class="selectdelete">선택상품 삭제</button></td>
				      <td style="text-align: right">총 상품금액 : <input type="text" id="totalprice" value="" min="0" readonly/> 원</td>
			       </tr>
		       </table>
	      </div>    
     
      
	  <hr/>
	  
	  <div align="right">
	 	 
	  		<button type="button" class="buybtn" id="buy" >신청하기</button>
	  </div>
	  
 	</div>
 	

	
</body>
</html>