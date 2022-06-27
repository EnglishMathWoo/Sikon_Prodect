<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">


<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">




<style>
div.row {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.page-header.text-info {
	
}

table {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.head {
	background: #b19b92;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.head th {
	text-align: center;
	color: #f7f7f7;
	font-weight: lighter;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.listsale {
	padding-top: 170px;
	padding-bottom: 200px;
}

.submit:hover {
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
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.submit {
	display: block;
	width: 150px;
	height: 36px;
	border-radius: 30px;
	color: #937062;
	border: 1px solid #937062;
	font-size: 15px;
	cursor: pointer;
	margin-top: 20px;
	margin-bottom: 20px;
	background: #f7f7f7;
	float: right;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.delete {
	display: block;
	width: 150px;
	height: 36px;
	border-radius: 30px;
	color: #937062;
	border: 1px solid #937062;
	font-size: 15px;
	cursor: pointer;
	margin-top: 20px;
	margin-bottom: 20px;
	background: #f7f7f7;
	float: right;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

div.emptyProd {
	padding: 20px;
	height: 100px;
	text-align: center;
	font-weight: bold;
	color: #333;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}

.pltitle {
	padding-top: 35PX;
	text-align: center;
}

.view {
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
}
</style>



<script type="text/javascript">
	
	function fncGetList(currentPage) {
		
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "/cook/listMyCook").submit();
	}	
	
		 
		 $(function() {
			 
			 $( ".submit" ).on("click" , function() {
					self.location = "/cook/addCook.jsp"
				 });									 
			
			 $( ".toget" ).on("click" , function() {
				 
				 var cookNo = $(this).attr('value');
				
				 
				 self.location = "/cook/getCook?menu=search&cookNo="+cookNo
			 });
			 
			 
			 
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
				
				
				
			 
				$(".delete").on("click" , function() {
					
					
					var checkCount = $("input[name='cookCheck']:checked").length;

				    var array = new Array();
				    
					$("input[name='cookCheck']:checked").each(function() {
						array.push($(this).attr('id'));
				    });
					
					if(checkCount != 0) {
						alert(checkCount+"개의 쿠킹클래스를 삭제하시겠습니까?")

						self.location = "/cook/deleteCook?checkCount="+checkCount+"&checkList="+array;
					}			
			

				
		});					
					
					
		 });
		 
		 function enterkey() { 
				if(window.event.keyCode == 13){
					fncGetList(1);
				}
			} 			 
		 
		 $( document ).ready(function() {
				
		

 //==================================================================================///	

 
				 $(document).on('click', '#image', function(){
					 var cookNo =$(this).attr("value");
					 
					 self.location = "/cook/getCook?menu=search&cookNo="+cookNo
				}); 

	   	 $(window).scroll(function() {
             if($(window).scrollTop() == $(document).height() - $(window).height()) { 
             	
             	var cpage = $("#currentPage").val();
             	console.log("cpage1: "+cpage);
             	cpage = Number(cpage)+1;
             	console.log("cpage2: "+cpage);

     	   		
     	   		
			            $.ajax({
			                
			                  url : "/cook/json/listMyCook",
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
							
				               
			                	for(var i=0; i<JSONData.list.length; i++){
			                		
			                		
			                		
	
			                
				                     var displayValue = "<div class='col-sm-6 col-md-3'><br/> <br/>"
				                     					+"<div id='latest' class='group'>"
				                     					+"<article class='one_third first'>"				                     									                     				
				                     					+"<a class='imgover' value='"+JSONData.list[i].cookNo+"' ><img src='/resources/images/uploadFiles/"+JSONData.list[i].cookFilename.split('/')[0]+"' id='image' value='"+JSONData.list[i].cookNo+"' width='320' height='300'></a>"
			                     						+"<div class='excerpt'>"
			                     						+"<h4 class='heading' >"+JSONData.list[i].cookName+"</h4>"
			                     						+"<h6>"+JSONData.list[i].cookBrief+"</h6>"				                     						
			                     						+"<ul class='meta'>"
			                     			            +"<li>"+ JSONData.list[i].cookBrief +"</li>"
			                     			            +"<li>&nbsp;"+ JSONData.list[i].cookRecruit +"</li>"
			                     			            +"<li>&nbsp;"+ JSONData.list[i].cookTheme +"</li>"				                     			           				                     			          	
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
	<div class="container listsale">


		<h3 class="pltitle" style="color: #333; font-family: 'Tiro Devanagari Sanskrit', serif;">| M Y C O O K |</h3>




		<form class="form-inline" name="detailForm">

			<input type="hidden" id=themeCondition name=themeCondition value="all">

			<div class="row">
				<table width="100%">
					<tr>
						<td class="col-md-6 text-right">

							<div class="form-group">
								<label class="sr-only" for="searchKeyword">검색</label> <input type="text" style="display: none;"> <input type="text" class="form-control" id="cookname" name="searchKeyword" placeholder="검색어를 입력하세요" onkeyup="enterkey()" value="${! empty search.searchKeyword ? search.searchKeyword : '' }">
							</div>

							<button type="button" class="btn btn-default" id="search">검색</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="row">
				<table width="100%">
					<tr>

						<td class="col-md-6 text-left">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</td>

						<td class="col-md-6 text-right"><button type="button" class="submit">쿠킹클래스등록</button>
							<button type="button" class="delete">삭제</button></td>

					</tr>
				</table>
			</div>


			<!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
			<input type="hidden" id="currentPage" name="currentPage" value="" />




		</form>

		<!--  table Start /////////////////////////////////////-->
		<table class="table table-hover table-striped">

			<thead>
				<tr class="head">
					<th align="center">No</th>
					<th align="center">쿠킹클래스번호</th>
					<th align="center" width="80"></th>
					<th align="left">클래스정보</th>
					<th align="center">남은신청인원수</th>
					<th align="center">쿠킹클래스장소</th>
				</tr>
			</thead>

			<tbody>


				<c:set var="i" value="0" />
				<c:forEach var="cook" items="${list}">
					<c:set var="i" value="${ i+1 }" />
					<tr>
						<td align="center"><input type="checkbox" name="cookCheck" id="${cook.cookNo}" /></td>


						<td align="center" class="toget" value="${cook.cookNo }">${cook.cookNo }</td>

						<td align="right" class="toget" value="${cook.cookNo }"><c:choose>
								<c:when test="${cook.cookFilename.contains('/')}">
									<c:choose>
										<c:when test="${cook.cookFilename.contains('mp4')}">
											<c:forEach var="name" items="${cook.cookFilename.split('/')}">
												<video width="85" height="85" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4" value="${name}"></video>
											</c:forEach>
										</c:when>

										<c:otherwise>
											<c:forEach var="name" items="${cook.cookFilename.split('/')}">
												<img src="/resources/images/uploadFiles/${name}" width="85" height="85" align="absmiddle" />
												<input type="hidden" name="image" value="${name }" />
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<img src="/resources/images/uploadFiles/${cook.cookFilename}" width="85" height="85" align="absmiddle" class="image" value="${prodThumbnail}" />
								</c:otherwise>
							</c:choose></td>

						<td align="left" class="toget" value="${cook.cookNo }">

							<p style="font-weight: bold; cursor: pointer;">${cook.cookName }</p> <br>


						</td>


						<td align="center" class="view"><c:if test="${cook.cookStock == 0 }">
								<span style="color: #e90f30">${cook.cookStock } 명</span>
							</c:if> <c:if test="${cook.cookStock != 0 }">
			  		${cook.cookStock } 명
			  	</c:if></td>


						<td align="center" class="view">${cook.cookLocation}</td>
					</tr>
				</c:forEach>

			</tbody>

		</table>
		<!--  table End /////////////////////////////////////-->
		<c:if test="${empty list}">
			<br>
			<br>
			<div class="emptyProd">판매중인 쿠킹클래스가 없습니다.</div>
			<br>
		</c:if>
	</div>
	



	
	<jsp:include page="../common/pageNavigator_new.jsp" />
	
</body>
</html>