<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
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
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
      <style>

        .bi-heart{
            font-size: 30px;
            line-height: 30px;
            color:crimson;
        }

        .bi-heart-fill{
            font-size: 30px;
            line-height: 30px;
            color:crimson;
        }

    </style>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body {
	padding-top: 50px;
}
div.thumbnail {
	height:300px;
	border-radius: 5px;
	
}

#image {
	width: 250px;
	height:250px;
	border-radius: 5px;
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

<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/cook/listCook?menu=${param.menu}").submit();
			console.log('${param.menu}');
		}
		
		

		
		 $(document).on('click', 'a.update', function(){
			 var cookNo =$(this).attr("value");
			 console.log('수정하기');
			 self.location = "/cook/updateCook?cookNo="+cookNo
		});


		
	

		 
	
		
		 
		 $(function() {
			 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			
			
			 
			$( "p.like_btn" ).on("click" , function(){
				//var cookNo = $(this).attr("value");
				var userId = $("input[name='userId']").val();
				var cookNo = $(this).attr("value");
				
				console.log(cookNo);
				console.log(userId);
			     $.ajax({
			            type : "POST",  
			            url : "/heart/json/updateHeart",       
			            dataType : "json",   
			            data : {'cookNo' : cookNo, 'userId' : userId },
			            error : function(){
			               alert("통신 에러");
			            },
			            success : function(heartCheck) {
			                
			                    if(heartCheck == 0){
			                    	alert("추천완료.");
			                    	  
			                       
			                    	location.reload();
			                    }
			                    else if (heartCheck == 1){
			                     alert("추천취소");
			                   
			                  
			                    	location.reload();

			                    
			                }
			            }
			        })
			 });
				//=====================================================
				$( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
					fncGetList(1);
				 
			 });
				
				 $(document).on('click', 'a.btn-defualt', function(){
					 var cookNo =$(this).attr("value");
					 console.log('상세정보');
					 self.location = "/cook/getCook?menu=search&cookNo="+cookNo
				});
				 
				
				 $(document).on('click', 'a.update', function(){
					 var cookNo =$(this).attr("value");
					 console.log('수정하기');
					 self.location = "/cook/updateCook?cookNo="+cookNo
				});
				 
				 $(document).on('click', '.thumbnail', function(){
					 var cookNo =$(this).attr("value");
					 console.log('썸네일 클릭'+cookNo);
					 self.location = "/cook/getCook?menu=search&cookNo="+cookNo
				});
				 

				 //=========autoComplete=================================================
				 
				 var list = [];
			   		<c:forEach var="names" items="${autocook }" >
			   		list.push("${names.cookName}");
			   		</c:forEach>
			   		
		   		    
			   		$( "#cookName" ).autocomplete({
			   		      source: list,
			   		      
			   		});
			   		
			   	//====================================================================
			 
			   	 $(window).scroll(function() {
		                if($(window).scrollTop() == $(document).height() - $(window).height()) { 
		                	
		                	var cpage = $("#currentPage").val();
		                	console.log(cpage);
		                	cpage = Number(cpage)+1;
		                	console.log(cpage);
		        	   		
		        	   		
					            $.ajax({
					                
					                  url : "/cook/json/listCook?&menu=${param.menu }" ,
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
					                	//alert(JSONData.list[0].cookName);
					                	//alert(JSONData.list.length);
					                	console.log(JSONData.list[0].cookName);
						                	 
					                	for(var i=0; i<JSONData.list.length-1; i++){
					                		///*
					                		var image;
					                		var message;
					                		var cancel;
					                		var button;
					                
					                		if(JSONData.list[i].cookStock == '0'){
				                				
				                					image = "<img src='/resources/images/uploadFiles/"+JSONData.list[i].cookFilename.split('/')[0]+"' id='image'>";
				                				
					                			
					                		}else{
					                			
				                					image = "<img src='/resources/images/uploadFiles/"+JSONData.list[i].cookFilename.split('/')[0]+"' id='image'>";
				                				
					                		}
					                		
					                		
					                		if(${user.role.equals('admin') && param.menu.equals('manage')}){
					                			message="<p>남은 재고량 : "+JSONData.list[i].cookStock+"</p>";
					                		}else{
					                			message="<p></p>";
					                		}
					                		
					                		

					                		
					                		if(${param.menu=='manage' }){
					                			button = "<a class='btn btn-defualt btn update'  role='button' value='"+JSONData.list[i].cookNo+"'>수정하기</a>" ;
					                		}else{
					                			if(JSONData.list[i].cookStock == "0"){
					                				button = "<a class='btn btn-defualt btn disabled' role='button' >재고없음</a>";
					                			}else{
					                				if(JSONData.list[i].cookStock=='0'){
					                					
					                					button = "<a class='btn btn-default btn disabled' role='button' value='"+JSONData.list[i].cookNo+"'>구매하기</a>";
					                				}else{
					                					button = "<a class='btn btn-default btn buy' role='button' value='"+JSONData.list[i].cookNo+"'>구매하기</a>";
					                				}
					                			}
					                		}
					                		
						                     var displayValue = "<div class='col-sm-6 col-md-3'>"
						                     					+"<div class='thumbnail'>"
						                     					+image
					                     						+"<div class='caption'>"
					                     						+"<h3>"+JSONData.list[i].cookName+"</h3>"   
					                     						+"<p align='right'>"
					                     						+"<a class='btn btn-defualt btn'  role='button' value='"+JSONData.list[i].cookNo+"'>상세정보</a>"
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
		 
		   });
		 
	</script>

	
</head>

<body>

	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info" style="color:#75574B;">
	       <c:if test="${param.menu.contains('manage') }">
	       쿠킹클래스검색
	       </c:if>
	       <c:if test="${param.menu.contains('search') }">
	       쿠킹클래스검색
	       </c:if>
	       </h3>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
		<div class="row">

			<div class="col-md-6 text-left">
				<p class="text-primary" style="color:black;">전체 ${resultPage.totalCount } 건수, 현재
					${resultPage.currentPage} 페이지</p>
			</div>

			
			<form class="form-inline" name="detailForm">
				<div class="col-md-6 text-right">
					<div class="form-group">
						<select class="form-control" name="searchCondition">
							<option value="0"
								${!empty search.searchCondition && search.searchCondition==0 ? "selected" : ""}>쿠킹클래스번호</option>
							<option value="1"
								${!empty search.searchCondition && search.searchCondition==1 ? "selected" : ""}>쿠킹클래스명</option>
							
						</select>

					</div>

					<div class="form-group">
						<label class="sr-only" for="searchKeyword">검색어</label> <input
							type="text" class="form-control" id="cookName"
							name="searchKeyword" placeholder="검색어"
							value="${! empty search.searchKeyword ? search.searchKeyword : '' }">
							
					<button type="button" class="btn btn-default">검색</button>
					</div>
					
				</div>
	
					
				
					
						<input type="hidden" id="currentPage" name="currentPage" value="1" />
						<input type="hidden" id="menu" name = "menu" value="${param.menu }"/>
						  <input type="hidden" name="cookNo" value="${cook.cookNo}">
				
		</form>
			
		

					<!-- PageNavigation 선택 페이지 값을 보내는 부분 -->


		</div>
</div>
	
		
<div class="container">
	
<div class="row" id="target">
	<c:set var="i" value="0" />


<c:forEach var="cook" items="${list}">
 <input type="hidden" id="menu" name = "menu" value="${param.menu }"/>
  <input type="hidden" name="userId" value="${user.userId}">
  <input type="hidden" name="cookNo" value="${cook.cookNo}">
    <input type="hidden" name="cookNo" value="${cook.cookStock}">
   <input type="hidden" name="heartcheck" value="${heart.heartcheck}">

	<div class="row">
		
	
				<div class="col-xs-6 col-md-6 text-center image">				
						<c:forEach var="name" items="${cook.cookFilename.split('/')[0]}">
								<img src="/resources/images/uploadFiles/${name}" width="400" height="400"/>
						</c:forEach>
				</div>	
			

				<div class="col-xs-4 col-md-4">
			
				<div class="row">
					<input type="hidden" name="cookNo" id="cookNo" value="${cook.cookNo }"/>
					<input type="hidden" name="cookRegdate" id="cookRegdate" value="${cook.cookRegdate }"/>
				</div>
				
				<hr/>
				
				<div class="row">
				
				
					
					<div><h4><strong>${cook.cookName}</strong></h4></div><br>
					<div>${cook.cookBrief }</div>
					
					
					<input type="hidden" name="cookBrief" value="${cook.cookBrief }"/>
					<input type="hidden" name="cookName" value="${cook.cookName}"/>
					<input type="hidden" name="cookContent" value="${cook.cookContent}"/>
					
				</div>
				
				<br/><br/>
				
				
				
				
				<div class="row">
					<div><h6>${cook.cookPrice } 원</h6></div>
					<div><h5><strong>모집인원${cook.cookRecruit}명</strong></h5></div>
				</div>
				
				<br/>
				
				<div class="row">
			<c:if test = "${cook.cookTheme =='KO'}">
			 <h5><strong>테마 : 한식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'JA'}">
			 <h5><strong>테마 : 일식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'AM'}">
		 <h5><strong>테마 : 양식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'CH'}">
			 <h5><strong>테마 : 중식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'DE'}">
			 <h5><strong>테마 : 간식</strong></h5>
			</c:if>		
				</div>
				

				<div class="row">
			
					<div><h5><strong>장소 : ${cook.cookLocation}</strong></h5></div>
				</div>				
				
			
				
				<div class="row">
				<div><h5><strong>모집기간 : ${cook.aplstarTime}&emsp;~&emsp;${cook.aplendTime}</strong></h5></div>				
				</div>
				
				<div class="row">
				<div><h5><strong>수업시간 : ${cook.startTime}&emsp;~&emsp;${cook.endTime}</strong></h5></div>				
				</div>
		
				
		
				
				
	
		
				
		 	</div>
		 	
		 	<div class="col-xs-2 col-md-2">
		 	</div>
		 	
		 	</div>
		 	
		 	<hr/>
		 	

		 	
</div>
</c:forEach>
	  

</body>

</html>