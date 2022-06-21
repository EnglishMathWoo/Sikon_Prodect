<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
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
<style>
	body {
    	padding-top : 50px;
    }
    
    .sey {
    	font-family: 'Nanum Myeongjo', serif;
    	padding-top : 180px;
    }
</style>
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	
	//검색 & page	
	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "/user/listUser").submit();
	}
			
	$(function() {
		$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1);
		});
	 });
			
	//유저 상세보기	
	$(function() {
		$( "td:nth-child(2)" ).on("click" , function() {
			 self.location ="/user/getUser?userId="+$(this).text().trim();
		});					
	});	
		
</script>
	
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />
  
	<div class="container sey">
	
	<c:if test="${ empty search.orderCondition}">
		<div class="page-header text">
	       <h3 style="color:#bc8f8f">회원관리</h3>
		</div>
	</c:if>
	
	<c:if test="${search.orderCondition == 0 }">
		<div class="page-header text">
	       <h3 style="color:#bc8f8f">회원관리</h3>
		</div>
	</c:if>
	
	<c:if test="${search.orderCondition == 1 }">
		<div class="page-header text">
	       <h3 style="color:#bc8f8f">회원목록</h3>
	    </div>
	</c:if> 
	    
	<c:if test="${search.orderCondition == 2 }">
	    <div class="page-header text">
	       <h3 style="color:#bc8f8f">쿠킹멘토신청자목록</h3>
	    </div>
	</c:if>
	
	 <c:if test="${search.orderCondition == 3 }">   
	     <div class="page-header text">
	       <h3 style="color:#bc8f8f">쿠킹멘토목록</h3>
	    </div>
	 </c:if>   
	 
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary" style="color:gray;">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm">
			    	
			    <br>
				  <div class="form-group">
				    <select class="form-control" name="orderCondition" id="orderCondition">
				    	<option value="0"  ${ ! empty search.orderCondition && search.orderCondition==0 ? "selected" : "" }>--정렬하기--</option>
						<option value="1"  ${ ! empty search.orderCondition && search.orderCondition==1 ? "selected" : "" }>회원목록</option>
						<option value="2"  ${ ! empty search.orderCondition && search.orderCondition==2 ? "selected" : "" }>쿠킹멘토신청자목록</option>
						<option value="3"  ${ ! empty search.orderCondition && search.orderCondition==3 ? "selected" : "" }>쿠킹멘토목록</option>
					</select>
				  </div>
			
				  <button type="button" class="btn btn-default">검색</button>
				
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    	
		</div>
	
      <table class="table table-hover table-striped" >
      
        <thead>
         <br><br>
          <tr>
            <th align="center">No</th>
            <th align="left" >회원 ID</th>
            <th align="left">회원명</th>
            <th align="left">닉네임</th>
           
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="user" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="left">${ i }</td>
			  <td align="left" value1="${user.role}"
			  				   value2="${user.mentorApply}"
			  		title="Click : 회원정보 확인">${user.userId}</td>
			  <td align="left">${user.userName}</td>
			  <td align="left">${user.userNickname}</td>
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
	  
	 </div>
 	
 	<br>
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	
</body>

</html>