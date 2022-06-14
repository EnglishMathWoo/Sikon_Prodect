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

div.row{
	font-family: 'Nanum Myeongjo', serif;
}
 div.page-header{
	font-family: 'Nanum Myeongjo', serif;
}  
table {
	font-family: 'Nanum Myeongjo', serif;
}
.head{
 	background: #b19b92;
 
}

.head th{
 	text-align:center;
 	color : #f7f7f7;
 	font-weight: lighter;
}
.list{
	padding-top : 200px;
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
  font-family: 'Gowun Batang', serif;
  
}

.submit{
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
  font-family: 'Gowun Batang', serif;
  
}

div.emptyProd{
	padding : 20px;
	height: 100px;
	text-align: center;
	font-weight: bold;
	color: #333;
}

</style>
	<script type="text/javascript">


		function fncGetList(currentPage) {
			console.log("currentPage: "+currentPage);
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/cook/manageCook").submit();
		}
		
		 $(function() {
				 
			 $( ".submit" ).on("click" , function() {
				self.location = "/cook/addCook.jsp"
			 });
			 
			 $( ".toget" ).on("click" , function() {
				 
				 var cookNo = $(this).attr('value');
				 console.log(cookNo);
				 
				 self.location = "/cook/getCook?menu=search&cookNo="+cookNo
			 });
				 
			 $( "button.btn.btn-default:contains('검색')" ).on("click" , function() {
				fncGetList(1);
			 });
			
			

				
		});	
		 
		 
		 function enterkey() { 
			if(window.event.keyCode == 13){
				fncGetList(1);
			}
		} 
		 
		 
	</script>		

</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container list">
	
		<div class="page-header text-info text-center">
	       <h3 style="color:#333">[ 쿠킹클래스관리 ]</h3>
	    </div>
	    
	    
		
		<form class="form-inline" name="detailForm">
	   			
	   			<input type="hidden" id=themeCondition name=themeCondition value="${search.themeCondition }">
	   			
	<div class="row">
		<table width="100%">
			<tr>
			

				  
	   			<td class="col-md-6 text-right">
				  <div class="form-group">
						<select name="searchCondition" id="searchCondition" class="form-control" style="width:110px">
						 	<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>쿠킹클래스번호</option>
							<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>쿠킹클래스명</option>
							<option value="2"  ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>쿠킹클래스가격</option>
						</select>
				  </div>
				  
				  <div class="form-group">
				    <input type="text" style="display: none;">
				    <input type="text" class="form-control" id="cookName" name="searchKeyword"  placeholder="검색"
				    		onkeyup="enterkey()"  value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default" id="search">검색</button>
				  
				</td>
				
				
			</tr>
		</table>
	</div>				  
					<div class="row">
						<table width="100%">
						<tr>
							
							<td class="col-md-6 text-left">
						    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지
							</td>
							
							<td class="col-md-6 text-right"><button type="button" class="submit">쿠킹클래스등록</button></td>
							
						</tr>
						</table>
					</div>
				  
					
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				  
				  
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
			  	<td align="center">${ i }</td>
			  
			  
			  	<td align="center" class="toget" value="${cook.cookNo }">${cook.cookNo }</td>	
			  
				<td align="right" class="toget" value="${cook.cookNo }">
					<img src="/resources/images/uploadFiles/${cook.cookFilename.split('/')[0]}" class="image" width="80" height="80">
				</td>
			  
			  	<td align="left" class="toget" value="${cook.cookNo }">
			  	
			  		<p style="font-weight:bold">${cook.cookName }</p> <br>
			  		
	
			  </td>	
			  
			  
			  <td align="center" class="view">
			  	<c:if test="${cook.cookStock == 0 }">
			  		<span style="color:#ffb6c1">${cook.cookStock } 명</span>
			  	</c:if>
			  	<c:if test="${cook.cookStock != 0 }">
			  		${cook.cookStock } 명
			  	</c:if>
			  </td>	
			  
			  
			  <td align="center" class="view">
					${cook.cookLocation}		  	
			  </td>	
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
	  <!--  table End /////////////////////////////////////-->
	  <c:if test="${empty list}">
		<br><br>
		<div class="emptyProd">
			판매중인 쿠킹클래스가 없습니다.
		</div>
		<br>
	</c:if>
 	</div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
	
 	
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>
</html>