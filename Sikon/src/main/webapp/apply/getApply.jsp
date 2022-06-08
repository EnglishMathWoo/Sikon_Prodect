<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
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
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 30px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	$(function() {	
	

	 
		 $( "td.ct_btn01:contains('확인')" ).on("click" , function() {

			 self.location = "/cook/listCook?menu=search"
			});
	 
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
	        <h3 class=" text-info" >내가신청한쿠킹클래스목록조회</h3>
	      
	    </div>
	
	

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스이미지</strong>
			</div>
			<div class="col-xs-8 col-md-4">		    	
			<c:choose>
		    	<c:when test="${cook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${cook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<video width="400" height="300" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="300" height="300" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${cook.cookFilename}" width="300" height="300" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose></div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스번호</strong>
			</div>
			<div class="col-xs-8 col-md-4">${apply.classCook.cookNo}</div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스가격</strong>
			</div>
			<div class="col-xs-8 col-md-4">${cook.cookPrice}</div>
		</div>

		<hr/>
		
			

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>수업시간</strong>
			</div>
			<div class="col-xs-4 col-md-2">
<input type="TIME" class="form-control" id="startTime"  name="startTime" value="${cook.startTime}" placeholder="수업시작시간">
</div>
	<div class="col-xs-4 col-md-2">
  <input type="TIME" class="form-control" id="endTime"  name="endTime"  value="${cook.endTime}" placeholder="수업종료시간">
</div>
		</div>

		<hr/>		
				<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>신청자아이디</strong>
			</div>
			<div class="col-xs-8 col-md-4">${apply.applier.userId}</div>
		</div>

		<hr/>
		

	
	
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자연락처</strong></div>
			<div class="col-xs-8 col-md-4">${user.phone}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자주소</strong></div>
			<div class="col-xs-8 col-md-4">${user.addr}</div>
		</div>
		
		<hr/>
			<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>신청자수</strong></div>
			<div class="col-xs-8 col-md-4">${apply.cookStatus }</div>
		</div>
		
		<hr/>
		
		
		
		
		<hr/>
	
		
		
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  	
	  		<button type="button" class="btn btn-default">확인</button>
	  		
		
	  		</div>
		</div>
		
		<br/>
		</form>	
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
</html>