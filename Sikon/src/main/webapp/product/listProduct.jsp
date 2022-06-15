<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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


div.container {
	padding-top: 200px;
	
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
.ref-sort li::after{position:absolute; top:0; right:0; content:"|";}
.ref-sort li:last-child{margin:0; padding:0;}
.ref-sort li:last-child::after{display:none;}
.ref-sort li a{}

/* References */
.ref-sort li a{color:#333;font-weight: bold;}
.ref-sort li a:hover, #references .ref-sort li.current a{color:#937062;text-decoration-line: none;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.sectiontitle{display:block; max-width:55%; margin:0 auto 80px; text-align:center;}
.sectiontitle .heading{margin:0; padding:0; line-height:1;}

.sectiontitle{max-width:none; margin-bottom:50px;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}



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
.excerpt .heading{margin:0 0 10px 0; font-size:1.3rem;}`
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

/* [PRODUCT LIST] 폰트 적용 */
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


/* 등록 버튼이랑 hr이랑 충돌=> margin-top:20px에서 60px로 변경해서 수정*/
hr {
    margin-top: 60px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}

/* 전체 건수 표기시 등록 버튼과 간격 조절 margin: 10px 0 0 에서 0 0 0으로 변경 */
p {
    margin: 0 0 0px;
}

#image {
	width: 250px;
	height:250px;
} 


div.emptyProd{
	border: 1px solid #937062;
	padding : 90px;
	height: 200px;
	text-align: center;
	font-weight: bold;
	color: #333;
}

.btn_gotop {
	display:none;
	position:fixed;
	bottom:30px;
	right:30px;
	z-index:999;
	outline:none;
	background-color:#937062;
	color:#f7f7f7;
	padding:15px 20px;
}
.btn_gotop:hover{
	color: #f7f7f7;
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


<!--  ///////////////////////// JavaScript Start ////////////////////////// -->
<script type="text/javascript">
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/product/listProduct").submit();
		}
		
		 
			 $(function() {
	
				 
				 var themeCondition = $("#themeCondition").val();
				 console.log(themeCondition);
				 ///* 
				 if(themeCondition == 'mk'){
					 $(".theme").removeClass('act');
					 $(".themeMk").addClass('act');
				 }else if(themeCondition == 'tw'){
					 $(".theme").removeClass('act');
					 $(".themeTw").addClass('act');
				 }else if(themeCondition == 'cw'){
					 $(".theme").removeClass('act');
					 $(".themeCw").addClass('act');
				 }else{
					 $(".theme").removeClass('act');
					 $(".themeAll").addClass('act');
				 }
				//*/ 
				 
				
				//=========autoComplete=================================================
				 
				 var list = [];
			   		<c:forEach var="names" items="${prodNames }" >
			   		list.push("${names.prodName}");
			   		</c:forEach>
			   		
		   		    
			   		$( "#prodname" ).autocomplete({
			   		      source: list,
			   		      
			   		});
			   	//====================================================================
				
			   	
			
			   	 $(window).scroll(function() {
		                if($(window).scrollTop() == $(document).height() - $(window).height()) { 
		                	
		                	var cpage = $("#currentPage").val();
		                	cpage = Number(cpage)+1;
		                	console.log("cpage: "+cpage);
		        	   		
		        	   		var orderCon = $("#orderCondition").val();
		        	   		console.log("order: "+orderCon);
		                	
		                	var keyword = $("#prodname").val();
		        	   		console.log("keyword: "+keyword);
		        	   		
		        	   		var search = $("#searchCondition").val();
		        	   		console.log("search: "+search);
		        	   		
		        	   		var themeCon = $("#themeCondition").val();
		        	   		console.log("theme: "+themeCon);
		        	   		
		        	   		
				            $.ajax({
				                
				                  url : "/product/json/listProduct?&menu=${param.menu }" ,
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
				                	console.log(cpage); 
				                	console.log(JSONData.list[0].prodName);
				                	
				                	console.log(JSONData.list[0].prodThumbnail.split('&')[0]); 
					                	 
				                	
				                
				                	
				                	for(var i=0; i<JSONData.list.length; i++){
				                		
				                		var status="";
				                		var stock="";
				                		var rate = parseInt(Number(JSONData.list[i].prodDisRate)*100);
				                		
				                		if(JSONData.list[i].prodStatus == 'N'){
				                			status = "<p style='text-align:right;color:#d9534f'>*판매중지된 상품입니다.</p>";
				                		}
				                		
				                		
					                     var displayValue = "<div class='col-sm-6 col-md-3'><br/><br/>"
					                     					+"<div id='latest' class='group'>"
					                     					+"<article class='one_third first'>"
					                     					+"<img src='/resources/images/uploadFiles/"+JSONData.list[i].prodThumbnail.split('&')[0]+"' id='image' class='image' value='"+JSONData.list[i].prodNo+"'>"
				                     						+"<div class='excerpt'>"
				                     						+"<p>"+JSONData.list[i].prodDetail+"</p>"
				                     						+"<h4 class='heading prodName' style='font-weight: bold'>"+JSONData.list[i].prodName+"</h4>"
				                     						+"<p style='text-align:left;color:#aba6a6'><del>"+JSONData.list[i].prodPrice+"</del></p>"
				                     						+"<p style='text-align:left;font-size:17px;font-weight: bold'><span style='color:#d9534f'>"+rate+"%&nbsp;</span>"
				                     						+JSONData.list[i].prodDisPrice+"<span style='font-size:14px;font-weight:600'>원</span></p>"
				                     						+status
				                     						+"</div><br></article></div></div>"
				                     						
				                     		
				                     	
				                     		
				                     	$( '#scrollList' ).append(displayValue);	
				                     						
				                     						 		
				                    						
				                     						
				                	}//for 
				                 }
				            });//ajax
					           
		                }//if
		            });//function
		           
		           
		       //====================================================================  
		            
				 
				$( ".submit" ).on("click" , function() {
					self.location = "/product/addProductView.jsp"
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
				
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 });
				
				
				$("#orderCondition").on( "change", function() { 
			      	fncGetList(1);
				  });
				
	 });
			 
//=== 무한스크롤로 생성된 article 클릭 이벤트 ========================================================
	
	 $(document).on('click', '.image', function(){
		 var prodNo =$(this).attr("value");
		 console.log('prodNo: '+prodNo);
		 var menu = $("#menu").val();
		 console.log(menu);
		 self.location = "/product/getProduct?prodNo="+prodNo+"&menu="+menu
	});

	 
//==== 검색창 입력 후 enter시 검색 이벤트 ===========================================================
	
	function enterkey() { 
		if(window.event.keyCode == 13){
			fncGetList(1);
		}
	} 
	
//===================== 상단으로 이동 ====================================
	
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300){
			$('.btn_gotop').show();
		} else{
			$('.btn_gotop').hide();
		}
	});
	
	$('.btn_gotop').click(function(){
		$('html, body').animate({scrollTop:0},400);
		return false;
	});
		
	
</script>

<!--  ///////////////////////// JavaScript End ////////////////////////// -->
	
</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
<div class="container">
<div class="text-info text-left">
	    </div>
		 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="3"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="4"></li>
	        </ol>
	    
	    
	      <div class="carousel-inner" role="listbox">
	          
	          <div class="item active">
	            <img src="/resources/images/uploadFiles/mk002.jpg"  alt="First slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/mk004.jpg" alt="Second slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/mk003.jpg"  alt="Third slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/mk001.jpg"  alt="fourth slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/uploadFiles/mk005.jpg"  alt="fifth slide">
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

	<div class="wrapper row3">
		  <section class="hoc container clear"> 
		    <div class="center btmspace-50">
		    <br/>
		      <h3 class="font-x2 nospace" align="center"><br><span style="color:#937062">PRODUCT LIST</span></h3>
		    </div>
		  
		    
		    <br/><hr id="hr"/><br/>
    
    	<nav class="ref-sort" >
	      <button class="theme themeAll" id="themeAll" value="all">모두보기</button>
	      <button class="theme themeTw" value="tw">식기류</button>
	      <button class="theme themeCw" value="cw">조리도구</button>
	      <button class="theme themeMk" value="mk">밀키트</button>
	    </nav>
	    
          
      <div class="center btmspace-50">
	   			<form class="form-inline" name="detailForm">
	   			
	   			<input type="hidden" id=themeCondition name=themeCondition value="${search.themeCondition }">
	   			
	   			
	 <div class="row">
		<table width="100%">
			<tr>
	   			<td class="col-md-6 text-left"> 
					  <div class="form-group">
							<select name="orderCondition" id="orderCondition" class="form-control" style="width:125px">
							 	<option value="0"  ${ ! empty search.orderCondition && search.orderCondition==0 ? "selected" : "" }>--정렬하기--</option>
								<option value="1"  ${ ! empty search.orderCondition && search.orderCondition==1 ? "selected" : "" }>낮은가격순</option>
								<option value="2"  ${ ! empty search.orderCondition && search.orderCondition==2 ? "selected" : "" }>높은가격순</option>
							</select>
					  </div>
				</td>
				
				<td class="col-md-6 text-right">
					<input type="hidden" name="searchCondition" id="searchCondition" value="1">
					<div class="form-group">
					    <label class="sr-only" for="searchKeyword">검색</label>
					    <input type="text" style="display: none;">
					    <input type="text" class="form-control" id="prodname" name="searchKeyword"  placeholder="검색어를 입력하세요"
					    		onkeyup="enterkey()"  value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
					</div>
				  
					<button type="button" class="btn btn-default" id="search">검색</button>
				</td>
				
				
			</tr>
		</table>
	</div>		
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value="1"/>
				  <input type="hidden" id="menu" name = "menu" value="${param.menu }"/>
				  
				</form>
	     </div>
    	</section>
  	</div>
 
 <input type="hidden" id="currentPage" name="currentPage" value="1"/>
 
<div class="row" id="content">

	<c:if test="${empty list}">
		<br><br>
		<div class="emptyProd">
			판매중인 상품이 없습니다.
		</div>
		<br>
	</c:if>

	<c:forEach var="product" items="${list}">
	  <div class="col-sm-6 col-md-3">
	  <br/> <br/>
	  
	    <div id="latest" class="group">
	      <article class="one_third first">
			<img src="/resources/images/uploadFiles/${product.prodThumbnail.split('&')[0]}" id="image" class="image" value="${product.prodNo }">
	        <div class="excerpt">
	        	<p>${product.prodDetail}<p>
	          	<h4 class="heading prodName" style="font-weight: bold">${product.prodName}</h4>
	          	<p style="text-align:left;color:#aba6a6"><del>${product.prodPrice}</del></p>
				<p style="text-align:left;font-size:17px;font-weight: bold"><span style="color:#d9534f"><fmt:formatNumber value="${product.prodDisRate}" type="percent"/>&nbsp;</span>
				${product.prodDisPrice}<span style="font-size:14px;font-weight:600">원</span></p>
				
				<c:if test="${product.prodStatus == 'N'}">
					<p style="text-align:right;color:#d9534f">*판매중지된 상품입니다.</p>
				</c:if>
				
	        </div>
	         <br>
	      </article>
	    
	    </div>
	  </div>
	  </c:forEach>
  
     <div id="scrollList"></div>
     
</div>

</div>	

	<!-- 상단으로 이동하기 버튼 -->
	<a href="#" class="btn_gotop">
	  <span class="glyphicon glyphicon-chevron-up"></span>
	</a>
	
		
</body>

</html>