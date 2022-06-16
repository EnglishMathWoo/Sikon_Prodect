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

.shape1 {
  border-width: 1px;
  background-color: white;
  border-color:	#C0C0C0;
  border-style: solid;
  width: 35px;
  height: 25px;
  text-align: center;
  font-weight:bold;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}

.orderCondition{
    width: 90%;
    margin: 10px auto;
    float:right;
}

.order {
    border: 1px solid #937062;
    color: #8B4513;
    float: right;
    height:40px;
    width:8%;
    box-sizing: border-box;
    justify-content: center;
    display: flex;
    align-items: center;
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
.ref-sort li::after{position:absolute; top:0; right:0; content:"|";}
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


/* 폰트어썸 search */
.search{
font-family:FontAwesome;
border: none;
background-color: #f7f7f7;
}

.act{
	background-color: #937062;
	color: #f7f7f7;
}

</style>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
					
			$(document).on('click', '.imgover', function(){
				console.log($(this).attr("value"));
				self.location ="/recipe/getRecipe?recipeNo="+$(this).attr("value")
			});
			
			$(document).on('click', '#recipe', function(){
				 self.location = "/ranking/listRecipe";
			});
			
			$(document).on('click', '#daily', function(){
				 var orderCondition = $(this).attr('value');
				 self.location = "/ranking/listRecipe?orderCondition="+orderCondition;
			});
			
			$(document).on('click', '#weekly', function(){
				 var orderCondition = $(this).attr('value');
				 self.location = "/ranking/listRecipe?orderCondition="+orderCondition;
			});
			
			$(document).on('click', '#monthly', function(){
				 var orderCondition = $(this).attr('value');
				self.location = "/ranking/listRecipe?orderCondition="+orderCondition;
			});
		
			$(document).on('click', '#keyword', function(){
				 var cookNo =$(this).attr("value");
				 self.location = "/cook/updateCook?cookNo="+cookNo
			});
		 
			$(document).on('click', '#cook', function(){
				 self.location = "/ranking/listCook";
			});
			
			$(document).on('click', '.order', function(){
				 $(".order").removeClass('act');
				 $(this).addClass('act');
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
	
	<div class="wrapper row3">
		  <section class="hoc container clear"> 
		    <div class="center btmspace-50">
		    <br/>
		      <h3 class="font-x2 nospace" align="center" style="color:#937062"><br> RANKING </h3>
		      <div align="center" style="color:#937062; font-size:18px;"><br> TOP 20 </div>
		    </div>
		  
    		<form class="form-inline" name="detailForm">
		    
		    <br/><hr/><br/>
    
	      <nav class="ref-sort" >
	      <ul>
	        <li id="recipe"><div style="color:#DAA520;" >&nbsp;레시피&nbsp;</div></li>
	        <li id="keyword"><div>&nbsp;검색어&nbsp;</div></li>
	        <li id="cook"><div>&nbsp;쿠킹멘토&nbsp;</div></li>
	      </ul>  
	      
	      <br>
	      
			<div class="orderCondition" style="float:right">
		  	  <div class="order" id="monthly" value="2">월간</div>
		      <div class="order" id="weekly" value="1">주간</div>
		      <div class="order" id="daily" value="0">일간</div>
		    </div>
	  
	  		<input type="hidden" id="orderCon" value="${search.orderCondition}"/>
	  
	    </nav>
	    
	   
		
  	</form>
    	</section>
  	</div>
 <input type="hidden" id="currentPage" name="currentPage" value="1"/>
 
  
<div class="row">
	
	<c:if test="${!empty list}">
	<c:forEach var="recipe" items="${list}">
	<c:set var="i" value="${i+1}" />
  <div class="col-sm-6 col-md-3">
  <br/> <br/>
  
    <div id="latest" class="group">
      <article class="one_third first"><a class="imgover" value="${recipe.recipeNo }" href="#">
      <div class="shape1">${i}</div>
      <img src="/resources/images/uploadFiles/${recipe.recipeImg }" width="320" height="300"></a>
        <div class="excerpt">
          <h4 class="heading" ><b>${recipe.recipeName }</b></h4>
           <h6 >${recipe.recipeDetail }</h6>
          <ul class="meta">
            <li > ${recipe.recipeTheme }</li>
            <li>${recipe.recipeDifficulty }</li>
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
  </c:if>
  
  <c:if test="${empty list}">
  <br>
  <br>
  <br>
  <br>
  	<h2 id="noRanking" style="text-align:center; font-weight:bold;">랭킹 정보가 없습니다.</h2>
    <br>
  </c:if>
  
     
 <div  id="scrollList"></div>
</div>
	  </div>
	
</body>
</html>