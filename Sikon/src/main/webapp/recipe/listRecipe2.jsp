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
	color: #75574B;
	border-bottom: none;
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
.ref-sort ul{margin:0; padding:0; list-style:none; text-transform:uppercase; font-weight:bold; font-family: 'Gowun Batang', serif;
}
.ref-sort li{display:inline-block; position:relative; margin:0 10px 0 0; padding:0 20px 0 0;}
.ref-sort li::after{position:absolute; top:0; right:0; content:"/";}
.ref-sort li:last-child{margin:0; padding:0;}
.ref-sort li:last-child::after{display:none;}
.ref-sort li a{}
/* References */
.ref-sort li a{color:inherit;}
.ref-sort li a:hover, #references .ref-sort li.current a{color:#937062;text-decoration-line: none;}


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
  background: #937062;
  float: right;
  	font-family: 'Gowun Batang', serif;
  
}

.submit:hover{
	background: #f7f7f7;
	color: #937062;
	border: 1px solid #937062;
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
    font-family: 'Gowun Batang', serif;
    
}

.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    padding-top:120px;
}

.hoc{
padding-top:0px;
}


/* 검색창 css */

.form{

    position: relative;
}

.form .fa-search{

    top:20px;
    left: 20px;
    color: #9ca3af;

}

.form span{

    position: absolute;
    right: 17px;
    top: 13px;
    padding: 2px;
    border-left: 1px solid #d1d5db;

}

.left-pan{
    padding-left: 7px;
}

.left-pan i{
   
   padding-left: 10px;
}

.form-input{

    border-radius: 10px;
}

.form-input:focus{

    box-shadow: none;
    border:none;
}

.form-control{
border-radius: 10px;
display: inline-block;
vertical-align: middle;
height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
}

.col-md-6 {
    width: 100%;
}

/* 폰트어썸 search */
.search{
font-family:FontAwesome;
border: none;
background-color: #f7f7f7;
}

.theme:hover {
  border: none;
  width: 100px;
  height: 36px;
  color: #fff;
  font-size: 15px;
  background: #937062;
  font-family: 'Gowun Batang', serif;
  
}

.theme{
  width: 100px;
  height: 36px;
  color: #937062;
  border: 1px solid #937062;
  font-size: 15px;
  background: #f7f7f7;
  font-family: 'Gowun Batang', serif;
}

.act{
  border: none;
  width: 100px;
  height: 36px;
  color: #fff;
  font-size: 15px;
  background: #937062;
  font-family: 'Gowun Batang', serif;
}

</style>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		 
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/recipe/listRecipe").submit();
		}
		
		$(function() {
			
			
			var themeCondition = $("#themeCondition").val();
			 console.log(themeCondition);
			 ///* 
			 if(themeCondition == 'des'){
				 
				 $(".theme").removeClass('act');
				 $(".themedes").addClass('act');
				 
			 }else if(themeCondition == 'ko'){
				 
				 $(".theme").removeClass('act');
				 $(".themeko").addClass('act');
				 
			 }else if(themeCondition == 'ch'){
				 
				 $(".theme").removeClass('act');
				 $(".themech").addClass('act');
				 
			 }else if(themeCondition == 'fr'){
				 
				 $(".theme").removeClass('act');
				 $(".themefr").addClass('act');
				 
			 }else if(themeCondition == 'jp'){
				 
				 $(".theme").removeClass('act');
				 $(".themejp").addClass('act');
				 
			 }else{
				 
				 $(".theme").removeClass('act');
				 $(".themeAll").addClass('act');
				 
			 }
			 
			//*/ 
			
			
			
			
		  $("#orderCondition").on( "change", function() {
		  console.log($("#orderCondition").val());
	      fncGetList(1);
		  });
			  
		  $( "#themeAll" ).on("click" , function() {
	        	
	        	console.log('theme: '+$(".theme").attr('value'));
	        	
	        	//fncGetList(1);
			 });
			
			$( ".theme" ).on("click" , function() {
				var theme = $(this).attr('value');
				console.log(theme);
				$("#themeCondition").val(theme);
				fncGetList(1);
			 });
			
			$(".search").on("click", function() {
				fncGetList(1);

			});
		  
		});
			  
		
		 
		 $(function() {
			 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
				
					$( ".submit" ).on("click" , function() {
						self.location ="/recipe/addRecipe.jsp"
						});
		 });
					
			$(document).on('click', '.imgover', function(){
				console.log($(this).attr("value"));
				self.location ="/recipe/getRecipe?recipeNo="+$(this).attr("value")
				});
		 
			
			   	//====================================================================
			 $(function() {
			   	 $(window).scroll(function() {
		                if($(window).scrollTop() == $(document).height() - $(window).height()) { 
		                	
		                	var cpage = $("#currentPage").val();
		                	cpage = Number(cpage)+1;
		                	console.log(cpage);
		                	
		                	var orderCon = $("#orderCondition").val();
		        	   		console.log("order: "+orderCon);
		                	
		                	var keyword = $("#searchKeyword").val();
		        	   		console.log("keyword: "+keyword);
		        	   		
		        	   		var search = $("#searchCondition").val();
		        	   		console.log("search: "+search);
		        	   		
		        	   		var themeCon = $("#themeCondition").val();
		        	   		console.log("theme: "+themeCon);
		        	   		
		        	   		
		        	   		
					            $.ajax({
					                
					                  url : "/recipe/json/listRecipe" ,
					                  method : "POST" ,
					                  data : JSON.stringify({
					                	  currentPage : cpage,
					                	  orderCondition : orderCon,
					                	  searchKeyword : keyword,
					                	  searchCondition : search,
					                	  themeCondition : themeCon
					                  }), 
					                  dataType : "json" ,
					                  headers : {
					                     "Accept" : "application/json",
					                     "Content-Type" : "application/json"
					                  },
					                success : function(JSONData , status) {
					                	 
					                	$("#currentPage").val(cpage)
					                	console.log(JSONData.list[0].recipeName);
					                	console.log(JSONData.list[0].recipeImg);
						                	 
					                	for(var i=0; i<JSONData.list.length; i++){
					                
						                     var displayValue = "<div class='col-sm-6 col-md-3'><br/> <br/>"
						                     					+"<div id='latest' class='group'>"
						                     					+"<article class='one_third first'>"
						                     					+"<a class='imgover' value='"+JSONData.list[i].recipeNo+"' >"
						                     					+"<img src='/resources/images/uploadFiles/"+JSONData.list[i].recipeImg+"' id='image' width='320' height='300'></a>"
					                     						+"<div class='excerpt'>"
					                     						+"<h6>"+JSONData.list[i].recipeDetail+"</h6>"
					                     						+"<h4 class='heading'><b>"+JSONData.list[i].recipeName+"</b></h4>"
					                     						+"<ul class='meta'>"
					                     			            +"<li>"+ JSONData.list[i].recipeTheme +"</li>"
					                     			            +"<li>"+ JSONData.list[i].recipeDifficulty +"</li>"
					                     			            +"<li>"+ JSONData.list[i].cookingTime +"분</li>"
					                     			            +"<li>"+ JSONData.list[i].writer.userNickname +"</li>"
					                     						+"</ul></div></article></div></div>"
					                     						
					                     						
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
	            <img src="/resources/images/uploadFiles/pasta-1181189_960_720.jpg"  alt="Third slide">
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
		      <h3 class="font-x2 nospace" align="center" style="color:#937062"><br> RECIPE LIST </h3>
		      <p align="right">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</p>
		    </div>
		    <button type="button" class="submit">레시피 등록</button>
		  
    			    <form class="form-inline" name="detailForm">
		    
		    <br/><hr/><br/>
    
    	<nav class="ref-sort" >
	      <button class="theme themeAll" id="themeAll" value="all">모두보기</button>
	      <button class="theme themeko" value="ko">한식</button>
	      <button class="theme themech" value="ch">중식</button>
	      <button class="theme themefr" value="fr">양식</button>
	      <button class="theme themejp" value="jp">일식</button>
	      <button class="theme themedes" value="des">간식</button>
	    </nav>
    

	    
 <input type="hidden" id="themeCondition" name="themeCondition" value="${search.themeCondition }"/>
 
            
     <table style="width: 100%;">
        <tr>
        <td style="text-align: left;">  
		             
    		<div class="row height">
    		<div class="col-md-6">
	   					<select class="form-control" id="orderCondition" name="orderCondition">
							<option value="0"
								${!empty search.orderCondition && search.orderCondition==0 ? "selected" : ""}>정렬조건</option>
							<option value="1"
								${!empty search.orderCondition && search.orderCondition==1 ? "selected" : ""}>인기순</option>
							<option value="2"
								${!empty search.orderCondition && search.orderCondition==2 ? "selected" : ""}>난이도순</option>
								<option value="3"
								${!empty search.orderCondition && search.orderCondition==3 ? "selected" : ""}>소요시간순</option>
								
						</select>
			</div>
			</div>
			</td>
			
        	<td style="text-align: right;">
            
             <div class="row height">
              <div class="col-md-6">
					<div class="form-group">
					 
						<select class="form-control" name="searchCondition">
						<option value="0"
								${!empty search.searchCondition && search.searchCondition==0 ? "selected" : ""}>검색조건</option>
							<option value="1"
								${!empty search.searchCondition && search.searchCondition==1 ? "selected" : ""}>레시피명</option>
							<option value="2"
								${!empty search.searchCondition && search.searchCondition==2 ? "selected" : ""}>작성자명</option>
						</select>

					</div>

                  <input type="text" class="form-control form-input" id="searchKeyword" name="searchKeyword" placeholder="검색어를 입력하세요. ">&nbsp;
                  <input type="submit" class="search"  value="&#xf002">
                </div>
					</div>
            
            
            
          </td>
          
	     	</tr>
	     </table>
	     
  	</form>
    	</section>
  	</div>
  	
  	
  	
 <input type="hidden" id="currentPage" name="currentPage" value="1"/>

 
  
<div class="row">
	<c:set var="i" value="0" />
	<c:forEach var="recipe" items="${list}">
  <div class="col-sm-6 col-md-3">
  <br/> <br/>
  
    <div id="latest" class="group">
      <article class="one_third first"><a class="imgover" value="${recipe.recipeNo }" ><img src="/resources/images/uploadFiles/${recipe.recipeImg }" width="320" height="300"></a>
        <div class="excerpt">
          <h4 class="heading" ><b>${recipe.recipeName }</b></h4>
           <p style="float:right">리뷰수: ${recipe.reviewNum }</p>
           <h6 >${recipe.recipeDetail }</h6>
          <ul class="meta">
            <li >${recipe.recipeTheme} </li>
            <li>
            <c:choose>
           	<c:when test="${recipe.recipeDifficulty =='100'}"> 
           초급
           </c:when>
           <c:when test="${recipe.recipeDifficulty =='200'}"> 
           중급
           </c:when>
           <c:otherwise> 
           고급
           </c:otherwise>
           </c:choose>
           </li>
            <li>${recipe.cookingTime }분</li>
            <li> ${recipe.writer.userNickname}</li>
            <li style="float:right">조회수: ${recipe.recipeViews }</li>
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
	
</body>
</html>