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
	<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500&display=swap" rel="stylesheet">
	
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/resources/css/animate.min.css" rel="stylesheet">
   <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->


<style>

body {
	padding-top: 50px;
	
}

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

.ref-sort{display:block; margin-bottom:50px; text-align:center;}
.ref-sort ul{margin:0; padding:0; list-style:none; text-transform:uppercase; 	font-family: 'Gowun Batang', serif;
}
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

.imgover:hover::before{background:rgba(130,157,162,.5);/* #829DA2 */}
.imgover, .imgover:hover::after{color:#333333;} 

/* Latest */
.excerpt time{border-color:#D7D7D7;}

#latest article{max-width:348px;}

#footer{padding-bottom:50px;}/* Not required, just looks a little better */
.latestimg > li{display:inline-block; float:none; width:auto; margin:0 5% 5% 0;}
.latestimg > li img{width:auto;}

* Latest
--------------------------------------------------------------------------------------------------------------- */
#latest{}

#latest > li:last-child{margin-bottom:0;}/* Used when elements stack in small viewports */
article{}
article img{width:100%;}/* Force the image to have the full width of parent at all times */
.excerpt{padding:30px 0 0;}
.excerpt time{display:block; margin:0 0 30px 0; padding:0 0 15px 0; font-style:normal; font-size:.8rem; line-height:1; border-bottom:1px solid;}
.excerpt time i{margin-right:5px;}
.excerpt .heading{margin:0 0 10px 0; font-size:1.3rem;}
.excerpt .meta{margin:0 0 30px 0; padding:0; list-style:none; text-align:left;}
.excerpt .meta li{display:inline-block; font-size:.8rem;}
.excerpt .meta li::after{margin-left:5px; content:"|";}
.excerpt .meta li:last-child::after{margin:0; content:"";}
.excerpt p{}
.excerpt footer{margin-top:30px;}

.latestimg{}
.latestimg > li{display:inline-block; float:left; width:30%; margin:0 0 5% 5%;}
.latestimg > li:nth-last-child(-n+3){margin-bottom:0;}/* Removes bottom margin from the last three items - margin is restored in the media queries when items stack */
.latestimg > li:nth-child(3n+1){margin-left:0; clear:left;}/* Removes the need to add class="first" */
.latestimg > li img{width:100%;}/* Force the image to resize to take the full space - may have to be changed for tablets, depends on personal preference */
.latestimg > li a.imgover{display:block;}

.carousel-inner > .item > img {
  top: 0;
  left: 0;
  min-width: 100%;
  max-height: 500px;
} 

/* [RECIPE LIST] 폰트 적용 */
.wrapper{
font-family: 'Tiro Devanagari Sanskrit', serif;
}

/* 검색, 정렬조건 css */
.condition{
font-family: 'Gowun Batang', serif;
width: 100px;
float:right;
border-color:#D7D7D7;
}


/* 레시피 등록 버튼 css */
.submit
 {
  display: block;
  border: none;
  width: 150px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
  margin-top: 20px;
  margin-bottom: 20px;
  background: #d4af7a;
  float: right;
  	font-family: 'Gowun Batang', serif;
  
}

/* 레시피등록 버튼이랑 hr이랑 충돌=> margin-top:20px에서 60px로 변경해서 수정*/
hr {
    margin-top: 60px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}

/* 전체 건수 표기시 레시피등록 버튼과 간격 조절 margin: 10px 0 0 에서 0 0 0으로 변경 */
p {
    margin: 0 0 0px;
}

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
			
					$( ".imgover" ).on("click" , function() {
					console.log($(this).attr("value"));
					self.location ="/recipe/getRecipe?recipeNo="+$(this).attr("value")
					});
					
				$(".theme").on("click" , function() {
					//fncGetList(1);
				});
				
				

				$( ".submit" ).on("click" , function() {
					self.location = "/recipe/addRecipe.jsp"

				 
			 });
				
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
				
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
			   	//====================================================================
			
			   	 $(window).scroll(function() {
		                if($(window).scrollTop() == $(document).height() - $(window).height()) { 
		                	
		                	var cpage = $("#currentPage").val();
		                	cpage = Number(cpage)+1;
		                	console.log(cpage);
		        	   		
		        	   		
					            $.ajax({
					                
					                  url : "/recipe/json/listRecipe" ,
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
					                	//alert(JSONData.list[0].recipeName);
					                	//alert(JSONData.list.length);
					                	console.log(JSONData.list[0].recipeName);
					                	console.log(JSONData.list[0].recipeImg);
						                	 
					                	for(var i=0; i<JSONData.list.length-1; i++){
					                		///*
					                		var image;
					                
				                				
				                					image = "<img src='/resources/images/uploadFiles/"+JSONData.list[i].recipeImg+"' id='image' width='320' height='300'>";
					                			
					                		
					                		
						                     var displayValue = "<div class='col-sm-6 col-md-3'><br/> <br/>"
						                     					+"<div id='latest' class='group'>"
						                     					+"<article class='one_third first'>"
						                     					+"<a class='imgover' value='"+JSONData.list[i].recipeNo+"' >"
						                     					+image
					                     						+"<div class='excerpt'>"
					                     						+"<h4 class='heading'>"+JSONData.list[i].recipeName+"</h4>"
					                     						+"<h6>"+JSONData.list[i].recipeDetail+"</h6>"
					                     						+"<ul class='meta'>"
					                     			            +"<li>"+ JSONData.list[i].recipeTheme +"</li>"
					                     			            +"<li>"+ JSONData.list[i].recipeDifficulty +"</li>"
					                     			            +"<li>"+ JSONData.list[i].cookingTime +"</li>"
					                     			            +"<li>"+ JSONData.list[i].writer.userNickname +"</li>"
					                     						+"</ul></div></article></div></div>"
					                     						
					                     						
					                     		//*/				
						               	$( '#scrollList' ).append(displayValue);	
					                     						
					                     						 		
					                    						
					                     						
					                	}//for 
					                 }
					            });//ajax
					           
		                }//if
		            });//function
		           
		           
		   });
		 
	</script>
	
</head>

<body>

	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
<div class="container">
<div class="page-header text-info text-left">
	    </div>
		 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	        </ol>
	    
	    
	      <div class="carousel-inner" role="listbox">
	          
	          <div class="item active">
	            <img src="/resources/images/uploadFiles/unnamed (2).jpg"  alt="First slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/unnamed (4).jpg" alt="Second slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/unnamed (15).jpg"  alt="Third slide">
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
		    <br/>
		      <h3 class="font-x2 nospace" align="center"><br> RECIPE LIST </h3>
		      <p align="right">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</p>
		    </div>
		    <button type="button" class="submit">레시피등록</button>
		  
		    
		    <br/><hr/><br/>
    
	      <nav class="ref-sort" >
	      <ul>
	        <li class="current" ><a href="#" class="theme">한식</a></li>
	        <li><a href="#" class="theme" >중식</a></li>
	        <li><a href="#" class="theme" >양식</a></li>
	        <li><a href="#" class="theme" >일식</a></li>
	        <li><a href="#" class="theme">간식</a></li>
	      </ul>
	    </nav>
	    
		            
      <div class="center btmspace-50">
	   <select class="condition" name="orderCondition">
							<option value="0"
								${!empty search.orderCondition && search.orderCondition==0 ? "selected" : ""}>정렬조건</option>
							<option value="1"
								${!empty search.orderCondition && search.orderCondition==1 ? "selected" : ""}>인기순</option>
							<option value="2"
								${!empty search.orderCondition && search.orderCondition==2 ? "selected" : ""}>난이도순</option>
								<option value="3"
								${!empty search.orderCondition && search.orderCondition==2 ? "selected" : ""}>소요시간순</option>
								
						</select>
	     </div>
    	</section>
  	</div>
 
 <input type="hidden" id="currentPage" name="currentPage" value="1"/>
 
<div class="row">
	<c:set var="i" value="0" />
	<c:forEach var="recipe" items="${list}">
  <div class="col-sm-6 col-md-3">
  <br/> <br/>
  
    <div id="latest" class="group">
      <article class="one_third first"><a class="imgover" value="${recipe.recipeNo }" href="#"><img src="/resources/images/uploadFiles/${recipe.recipeImg }" width="320" height="300"></a>
        <div class="excerpt">
          <h4 class="heading" >${recipe.recipeName }</h4>
           <h6 >${recipe.recipeDetail }</h6>
          <ul class="meta">
            <li > ${recipe.recipeTheme }</li>
            <li>${recipe.recipeDifficulty }</li>
            <li>${recipe.cookingTime }분</li>
            <li> ${recipe.writer.userNickname }</li>
          </ul>
        </div>
      </article>
     
    </div>
    <!-- ################################################################################################ -->
  </div>
  </c:forEach>
  
     <div  id="scrollList"></div>
     
</div>
	  </div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	<!-- PageNavigation Start... -->
	<!-- PageNavigation End... -->
	
</body>

</html>