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
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/resources/css/animate.min.css" rel="stylesheet">
   <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body {
	padding-top: 50px;
}

div.thumbnail {
	height: 500px;
	width: 340px;
}
</style>


<style>
.page-header.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.row {
	font-family: 'Gowun Batang', serif;
}

.table.table-hover.table-striped {
	font-family: 'Gowun Batang', serif;
}



</style>
<style>
.ref-sort{display:block; margin-bottom:50px; text-align:center;}
.ref-sort ul{margin:0; padding:0; list-style:none; text-transform:uppercase;}
.ref-sort li{display:inline-block; position:relative; margin:0 10px 0 0; padding:0 20px 0 0;}
.ref-sort li::after{position:absolute; top:0; right:0; content:"/";}
.ref-sort li:last-child{margin:0; padding:0;}
.ref-sort li:last-child::after{display:none;}
.ref-sort li a{}

/* References */
.ref-sort li a{color:inherit;}
.ref-sort li a:hover, #references .ref-sort li.current a{color:#829DA2;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.sectiontitle{display:block; max-width:55%; margin:0 auto 80px; text-align:center;}
.sectiontitle .heading{margin:0; padding:0; line-height:1;}

.sectiontitle{max-width:none; margin-bottom:50px;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

</style>




<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/recipe/listProduct").submit();
		}
		
		 
		 $(function() {
			 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			
					$( "#name" ).on("click" , function() {
				console.log($(this).attr("value"));
				self.location ="/recipe/getRecipe?recipeNo="+$(this).attr("value")
		});
					$( "#name" ).css("color","red");
					
				$( "button.btn.btn-default:contains('정렬')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
				
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
				
			   	//====================================================================
			 <!--
			   	 $(window).scroll(function() {
		                if($(window).scrollTop() == $(document).height() - $(window).height()) { 
		                	
		                	var cpage = $("#currentPage").val();
		                	console.log(cpage);
		                	cpage = Number(cpage)+1;
		                	console.log(cpage);
		        	   		
		        	   		
					            $.ajax({
					                
					                  url : "/product/json/listProduct?&menu=${param.menu }" ,
					                  method : "POST" ,
					                  data : JSON.stringify({
					                	  currentPage : cpage
					                  }), 
					                  dataType : "json" ,
					                  headers : {
					                     "Accept" : "application/json",
					                     "Content-Type" : "application/json"
					                  },
					                success : function(JSONData , status) {
					                	 
					                	$("#currentPage").val(cpage)
					                	//console.log(cpage); 
					                	//alert(JSONData.list[0].prodName);
					                	//alert(JSONData.list.length);
					                	console.log(JSONData.list[0].prodName);
						                	 
					                	for(var i=0; i<JSONData.list.length-1; i++){
					                		///*
					                		var image;
					                		var message;
					                		var cancel;
					                		var button;
					                
					                		if(JSONData.list[i].cancel == '0'){
				                				
				                					image = "<img src='/images/uploadFiles/"+JSONData.list[i].fileName.split('/')[0]+"' id='image'>";
				                				
					                			
					                		}else if(JSONData.list[i].cancel == '1'){
					                			
				                					image = "<img src='/images/uploadFiles/"+JSONData.list[i].fileName.split('/')[0]+"' id='image_none'>";
				                				
					                		}
					                		
					                		
					                		if(${user.role.equals('admin') && param.menu.equals('manage')}){
					                			message="<p>남은 재고량 : "+JSONData.list[i].total+"</p>";
					                		}else{
					                			message="<p></p>";
					                		}
					                		
					                		
					                		if(JSONData.list[i].cancel == '1' && param.menu.equals('search')){
					                			cancel = "<p style='color:#DB4455'>판매중지</p>";
					                		}else if(JSONData.list[i].cancel == '1' && param.menu.equals('manage')){
					                			cancel = "<p style='color:#DB4455'>*판매중지된 상품입니다.</p>";
					                		}else if(JSONData.list[i].cancel == '0'){
					                			cancel = "<p></p>";
					                		}
					                		
					                		if(${param.menu=='manage' }){
					                			button = "<a class='btn btn-defualt btn update'  role='button' value='"+JSONData.list[i].prodNo+"'>수정하기</a>" ;
					                		}else{
					                			if(JSONData.list[i].total == "0"){
					                				button = "<a class='btn btn-defualt btn disabled' role='button' >재고없음</a>";
					                			}else{
					                				if(JSONData.list[i].cancel=='0'){
					                					button = "<a class='btn btn-default btn buy' role='button' value='"+JSONData.list[i].prodNo+"'>구매하기</a>";
					                				}else{
					                					button = "<a class='btn btn-default btn disabled' role='button' value='"+JSONData.list[i].prodNo+"'>구매하기</a>";
					                				}
					                			}
					                		}
					                		
						                     var displayValue = "<div class='col-sm-6 col-md-4'>"
						                     					+"<div class='thumbnail'>"
						                     					+image
					                     						+"<div class='caption'>"
					                     						+"<h3>"+JSONData.list[i].prodName+"</h3>"
					                     						+cancel
					                     						+"<p>"+JSONData.list[i].price+" 원</p>"
					                     						+"<p align='right'>"
					                     						+"<a class='btn btn-defualt btn'  role='button' value='"+JSONData.list[i].prodNo+"' style='color:#bc8f8f'>상세조회</a>"

					                     						+button
					                     						+"</p>"
					                     						+"</div></div></div>"
					                     						
					                     		//*/				
						               	$( '#scrollList' ).append(displayValue);	
					                     						
					                     						 		
					                    						
					                     						
					                	}//for 
					                 }
					            });//ajax
					           
		                }//if
		            });//function
		           
		            -->
		   });
		 
	</script>
	
</head>

<body>

	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
<div class="container">
		 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	        </ol>
	    
	    
	      <div class="carousel-inner" role="listbox">
	          
	          <div class="item active">
	            <img src="/resources/images/uploadFiles/unnamed (2).jpg"  width="100%" height="70%" alt="First slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/unnamed (3).jpg"  width="100%" height="70%"alt="Second slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/unnamed.jpg"  width="100%" height="70%"alt="Third slide">
	          </div>
	          
	       </div> 
	       <!-- carousel-inner end -->
	        
	       <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	          <span class="sr-only">Previous</span>
	        </a>
	        
	        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	          <span class="sr-only">Next</span>
	        </a>
	    </div>
<br/>	     
<!-- ################################################################################################ -->

	<div class="wrapper row3">
		  <section class="hoc container clear"> 
		    <div class="center btmspace-50">
		      <h3 class="font-x2 nospace" align="center">[ RECIPE LIST ]</h3>
		      <p align="right">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</p>
		    </div>
		    
		    <hr/>
		    <br/><br/>
    
	      <nav class="ref-sort" >
	      <ul>
	        <li class="current" ><a href="#">한식</a></li>
	        <li><a href="#">중식</a></li>
	        <li><a href="#">양식</a></li>
	        <li><a href="#">일식</a></li>
	        <li><a href="#">간식</a></li>
	      </ul>
	    </nav>
	    
	   
    
    	</section>
  	</div>
<!-- ################################################################################################ -->
		<!-- 
		<div class="row">


			
			<form class="form-inline" name="detailForm">
				<div class="col-md-6 text-right">
					<div class="form-group">
						<select class="form-control" name="searchCondition">
							<option value="0"
								${!empty search.searchCondition && search.searchCondition==0 ? "selected" : ""}>정렬조건</option>
							<option value="1"
								${!empty search.searchCondition && search.searchCondition==1 ? "selected" : ""}>레시피명</option>
						</select>

					</div>

					<div class="form-group">
						<label class="sr-only" for="searchKeyword">검색어</label> <input
							type="text" class="form-control" id="prodname"
							name="searchKeyword" placeholder="검색어"
							value="${! empty search.searchKeyword ? search.searchKeyword : '' }">
							
					<button type="button" class="btn btn-default">검색</button>
					</div>
					
				</div>
				<div class="col-md-6 text-left">
					<div class="form-group">
						<select class="form-control" name="orderCondition">
							<option value="0"
								${!empty search.orderCondition && search.orderCondition==0 ? "selected" : ""}>정렬조건</option>
							<option value="1"
								${!empty search.orderCondition && search.orderCondition==1 ? "selected" : ""}>인기순</option>
							<option value="2"
								${!empty search.orderCondition && search.orderCondition==2 ? "selected" : ""}>난이도순</option>
								<option value="2"
								${!empty search.orderCondition && search.orderCondition==2 ? "selected" : ""}>소요시간순</option>
								
						</select>
					</div>
					
					<button type="button"  class="btn btn-default">정렬</button>
				</div>
					
					
						<input type="hidden" id="currentPage" name="currentPage" value="1" />
				
		</form>
			
		



		</div>
	-->
<!--  
<div class="row">
	<c:set var="i" value="0" />

<c:forEach var="recipe" items="${list}">
 <div class="col-sm-6 col-md-4">
 <br/> <br/>
 <br/> <br/>
    <div class="thumbnail">
		<img class="imange" src="resources/images/uploadFiles/${recipe.recipeImg}" width="320" height="300"><br/>
		  
		
      <div class="caption">
        <h4 style="color:black;"  id="name" value="${recipe.recipeNo }" >${recipe.recipeName }</h4>
        <p>${recipe.recipeDetail }</p>
        <p><a href="/recipe/getRecipe?recipeNo=${recipe.recipeNo }" class="btn btn-default" role="button">레시피상세보기</a> 
        <c:if test="${user.userId==recipe.writer.userNickname}">
        <p><a href="/recipe/updateRecipe?recipeNo=${recipe.recipeNo }" class="btn btn-default" role="button">수정</a> 
        </c:if>
        </div>
    </div>
  </div>		
    </c:forEach>
    
  </div>
  -->
		
	  </div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	<!-- PageNavigation Start... -->
	<!-- PageNavigation End... -->
	
</body>

</html>