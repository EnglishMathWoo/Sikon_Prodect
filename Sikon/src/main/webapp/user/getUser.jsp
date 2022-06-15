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
            padding-top : 50px;
        }
        .container{
        	padding-top : 150px;
        }
        label {
		   	display: inline-block;
		   	font-size: 15pt; 
		    max-width: 100%;
		    margin-bottom: 6px;
		    font-weight: 700;
		   
		}
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원정보수정 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "#editUserInfo" ).on("click" , function() {
					self.location = "/user/updateUser?userId=${user.userId}"
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
	       <h3 class=" text-info">회원정보조회</h3>
	 <!--  <h5 class="text-muted">내 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5> --> 
	    </div>
	
	<img id="thum" src="/resources/images/uploadFiles/${user.userImage}"
							width="500" height="400" style="text-align: center;"/>
	
		
		
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>아 이 디</strong></div>
			<div class="col-xs-8 col-md-4">${user.userId}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>이 름</strong></div>
			<div class="col-xs-8 col-md-4">${user.userName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>닉 네 임</strong></div>
			<div class="col-xs-8 col-md-4">${user.userNickname}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>휴대전화번호</strong></div>
			<div class="col-xs-8 col-md-4">${user.phone}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>생년월일</strong></div>
			<div class="col-xs-8 col-md-4">${user.userBirth}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>주소</strong></div>
			<div class="col-xs-8 col-md-4">${user.addr}</div>
		</div>
		
		<hr/>
			
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>쿠킹멘토 신청 여부</strong></div>
			<div class="col-xs-8 col-md-4">${user.mentorApply}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>가입일자</strong></div>
			<div class="col-xs-8 col-md-4">${user.regDate}</div>
		</div>
		
		<hr/>
		

		
		<!--  		
		<div class="form-group">
    		<label for="mentorApply" class="col-sm-offset-1 col-sm-3 control-label" >쿠킹멘토 신청 여부</label>
   			<div class="col-sm-4">
      	 	<input type="radio" name="mentorApply" value="N" checked="checked">미신청  &nbsp
			<input type="radio" name="mentorApply" value="Y" >신청
    		</div>
 	 	  </div>		
		-->
		
		<c:if test="${user.mentorApply == 'Y' }">
		
		 <p align="center"><label>경력사항</label> </p>
		 
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>소속</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="career" items="${career}" begin="0" end="1">
		  				
				<div class="col-xs-8 col-md-4">${career.COMPANY}</div>
			  </c:forEach>	
		
			 
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>근무시작일</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="career" items="${career}" begin="0" end="1">
		  				
				<div class="col-xs-8 col-md-4">${career.START_DATE}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>근무종료일</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="career" items="${career}" begin="0" end="1">
		  				
				<div class="col-xs-8 col-md-4">${career.END_DATE}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>업무내용</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="career" items="${career}">
		  				
				<div class="col-xs-8 col-md-4">${career.CAREER_EXPERIENCE}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
		
		 <p align="center"><label>자격증</label> </p>
		 
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>자격증명</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="license" items="${license}">
		  				
				<div class="col-xs-8 col-md-4">${license.LICENSE_NAME}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>발급기관</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="license" items="${license}">
		  				
				<div class="col-xs-8 col-md-4">${license.LICENSE_INSTITUTION}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>취득기간</strong></div>
	  		<c:set var="i" value="0" />
		 	 <c:forEach var="license" items="${license}">
		  				
				<div class="col-xs-8 col-md-4">${license.LICENSE_DATE}</div>
			</c:forEach>
		</div>
		
		
		<hr/>
			
		
		
		
		</c:if>
		
		<c:choose>
		<c:when test="${user.mentorApply == 'Y' && user.role == 'user' }">
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary" id="">승인</button>
	  			<button type="button" class="btn btn-primary" id="">거절</button>
	  		</div>
	  	</div>
	  	</c:when>
	  	<c:otherwise>
	  	<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary" id="editUserInfo">수정</button>
	  			<button type="button" class="btn btn-primary" id="">탈퇴</button>
	  		</div>
	  		</div>
	  	</c:otherwise>
	  	</c:choose>
	  		
		
		<br>
		
		
		
				
		<br/>
		
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>