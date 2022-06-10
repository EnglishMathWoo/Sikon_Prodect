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
   
	<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body {
  padding-top : 40px;
      }
div.container {
	padding-top : 170px;
}
.h3{
	height: 40px;
}
   </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "수정"  Event 연결 =============
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncUpdateUser();
			});
		});	
		
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
		
		
		
		///////////////////////////////////////////////////////////////////////
		function fncUpdateUser() {
			var name=$("input[name='userName']").val();
			
			if(name == null || name.length <1){
				alert("이름은  반드시 입력하셔야 합니다.");
				return;
			}
				
		
			//Debug...
			//alert("phone : "+value);
			//$("input:hidden[name='phone']").val( value );
				
			//console.log('fnc');
			
			$("form").attr("method" , "POST").attr("action" , "/user/updateUser").submit();
		}
	
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container" >
			
		<div class="text-center h3">
	       <h3 class=" text-info">회원정보수정</h3>
	     </div>
	    
	    <!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">아 이 디</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userId" name="userId" value="${user.userId }" placeholder="중복확인하세요"  readonly>
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">아이디는 수정불가</strong>
		      </span>
		    </div>
		  </div>
		
		  <div class="form-group">
		    <label for="password" class="col-sm-offset-1 col-sm-3 control-label">비밀번호</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password" name="password" value="${user.password}" placeholder="변경비밀번호">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label">비밀번호 확인</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="변경비밀번호 확인">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">이름</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}" placeholder="변경회원이름">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">닉네임</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userNickname" name="userNickname" value="${user.userNickname}" placeholder="변경닉네임">
		    </div>
		  </div>
		  
		   <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">생년월일</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userBirth" name="userBirth"  value="${user.userBirth}" placeholder="생년월일">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">주소</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="addr" name="addr"  value="${user.addr}" placeholder="변경주소">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">휴대전화번호</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="phone" name="phone" value="${user.phone}"   placeholder="변경번호">
		    </div>
		  </div>
		  
		  <div class="form-group">
    		<label class="col-sm-offset-1 col-sm-3 control-label" for="userImage">회원이미지</label>
   			<div class="col-sm-4">
       		<input multiple="multiple" class="form-control" type="file" id ="uploadFile"  name="uploadFile" value="${user.userImage}"  placeholder="회원이미지">
 			</div>
 		  </div>
 		  
 		  <hr style="border: solid 1px black;" width="650px;">	
 	 	
 	 	   <div class="form-group">
    		<label for="mentorApply" class="col-sm-offset-1 col-sm-3 control-label" >쿠킹멘토 신청 여부</label>
   			<div class="col-sm-4">
      	 	<input type="radio" name="mentorApply" value="N" checked="checked">미신청  &nbsp
			<input type="radio" name="mentorApply" value="Y" >신청
    		</div>
 	 	  </div>
		  
		   <hr style="border: solid 1px #d7d7d7;" width="650px;">	
 	 	  
 	 	  <p align="center"><label>경력사항</label> </p>
 	 	 
 	 	  
 	 	  <div class="form-group">
		    <label for="career" class="col-sm-offset-1 col-sm-3 control-label">소속</label>
		   	<div class="col-sm-4">
		      <input type="text" class="form-control" id="company" name="company" placeholder="소속1">
		      
		    </div>
		 </div>   
 	 	  
 	 	   <div class="form-group">
    		<label for="startDate" class="col-sm-offset-1 col-sm-3 control-label" >근무시작날짜</label>
   			<div class="col-sm-4">
      	  	  <input type="text" class="form-control" id="startDate" name="startDate" placeholder="근무시작날짜1">
      	  	  
    		</div>
 	 	  </div>
 	 	  
 	 	   <div class="form-group">
    		<label for="endDate" class="col-sm-offset-1 col-sm-3 control-label" >근무종료날짜</label>
   			<div class="col-sm-4">
      	 	  <input type="text" class="form-control" id="endDate" name="endDate" placeholder="근무종료날짜1">
      	 	  
    		</div>
 	 	  </div>
 	 	  
 	 	  <div class="form-group">
		    <label for="careerExperience" class="col-sm-offset-1 col-sm-3 control-label">업무내용</label>
		    <div class="col-sm-4">
		      <textarea type="text" class="form-control" id="careerExperience" name="careerExperience" placeholder="업무내용1"></textarea>
		     <hr>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="career" class="col-sm-offset-1 col-sm-3 control-label">소속</label>
		   	<div class="col-sm-4">
		      <input type="text" class="form-control" id="company" name="company" placeholder="소속2">
		    </div>
		 </div>   
 	 	  
 	 	   <div class="form-group">
    		<label for="startDate" class="col-sm-offset-1 col-sm-3 control-label" >근무시작날짜</label>
   			<div class="col-sm-4">
      	  	  <input type="text" class="form-control" id="startDate2" name="startDate" placeholder="근무시작날짜2">
    		</div>
 	 	  </div>
 	 	  
 	 	   <div class="form-group">
    		<label for="endDate" class="col-sm-offset-1 col-sm-3 control-label" >근무종료날짜</label>
   			<div class="col-sm-4">
      	 	  <input type="text" class="form-control" id="endDate2" name="endDate" placeholder="근무종료날짜2">
    		</div>
 	 	  </div>
 	 	  
 	 	  <div class="form-group">
		    <label for="careerExperience" class="col-sm-offset-1 col-sm-3 control-label">업무내용</label>
		    <div class="col-sm-4">
		      <textarea type="text" class="form-control" id="careerExperience" name="careerExperience" placeholder="업무내용2"></textarea>		    
		    </div>
		  </div>
 	 	  
 	 	  <hr style="border: solid 1px #d7d7d7;" width="650px;">	
 	 	  
 	 	  <p align="center"><label>자격증</label> </p>
 	 	  
 	 	  <div class="form-group">
		    <label for="licenseName" class="col-sm-offset-1 col-sm-3 control-label">자격증명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="licenseName" name="licenseName" placeholder="자격증명1">
		    </div>
		  </div>
 	 	  
 	 	  <div class="form-group">
		    <label for="licenseInstitution" class="col-sm-offset-1 col-sm-3 control-label">발급기관</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="licenseInstitution" name="licenseInstitution" placeholder="발급기관1">
		    </div>
		  </div>
 	 	  
 	 	  <div class="form-group">
    		<label for="licenseDate" class="col-sm-offset-1 col-sm-3 control-label" >취득일자</label>
   			<div class="col-sm-4">
      	  	  <input type="text" class="form-control" id="licenseDate" name="licenseDate" placeholder="취득일자1">
      	  	  <hr>
      	  	</div>
      	  </div>
 	 	  
 	 	  
 	 	   <div class="form-group">
		    <label for="licenseName" class="col-sm-offset-1 col-sm-3 control-label">자격증명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="licenseName" name="licenseName" placeholder="자격증명2">
		    </div>
		  </div>
 	 	  
 	 	  <div class="form-group">
		    <label for="licenseInstitution" class="col-sm-offset-1 col-sm-3 control-label">발급기관</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="licenseInstitution" name="licenseInstitution" placeholder="발급기관2">
		    </div>
		  </div>
 	 	  
 	 	  <div class="form-group">
    		<label for="licenseDate" class="col-sm-offset-1 col-sm-3 control-label" >취득일자</label>
   			<div class="col-sm-4">
      	  	  <input type="text" class="form-control" id="licenseDate2" name="licenseDate" placeholder="취득일자2">
    		</div>
 	 	  </div>
 	 	  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >수 &nbsp;정</button>
			  <a class="btn btn-primary btn" href="#" role="button">취 &nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
	   
 	</div>
	<!--  화면구성 div Start /////////////////////////////////////-->
 	
</body>

</html>