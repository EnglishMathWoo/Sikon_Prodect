<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">

<!-- 주소록 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	
<style>


div.container {
	padding-top: 250px;
	font-family: 'Nanum Myeongjo', serif;
	width: 652px;
	padding-bottom: 200px;
}


.join {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  font-size: large;
  padding: 12px 0;
  width: 49.3%;
}
.join:hover {
  background-color: #937062d4;
}
html input[type=text]{
	background-color: #f7f7f7;
}
.cancel {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  font-size: large;
  padding: 11px 0;
  width: 49.3%;
}
.cancel:hover {
  background-color: #e7e2e2;
}

html input[type=button]{
	background-color: #937062;
	border: none;
	color: #fff;
}

html input[type=button]:hover{
	background-color: #937062d4;
}


.point{
	background-color: #f7f7f7;
	border: 1px solid #937062;
	color: #937062;
}

.point:hover{
	background-color: #e7e2e2;
}

.search{
	display: flex;
	padding: 5px;
}

.form-divy{
    width: 46%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

.addr{
	padding-top : 5px;
	text-align: left;
}


.subtitle{
	border-top: 2px solid #937062;
	border-bottom: 1px solid #937062;
	width: 652px;
	margin-left: -15px;
    height: 50px;
	padding: 15px;
	font-weight: bold;
	font-size: 18px;
}
.imagetd{
	width:20%;
}
.content{
	text-align: left;
	padding-left: 20px
}
.buttons{
	width:652px;
	margin-left: -20px;
}
.payProduct{
	border-top: 2px solid #937062;
	width: 652px;
	margin-left: -15px;
    padding-top:20px;
}

.sectd{
	display: flex;
}
.payment{
	width:84%;
	text-align: right;
}

.totalpay{
	font-size: 20px;
}
.totals{
	color: #FF4800;
}
.info{
	width: 15%;
	font-weight: bold;
}
.form-group{
	width: 48%;
	text-align: left;
}
.form-table{
	display: block;
    width: 200%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.form-area{
	display: block;
    width: 200%;
    height: 100px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.payul{
	display: grid;
    grid-template-columns: repeat(2, 1fr);
    margin-left: -25px;
}
.career{
	border-top: 1px solid #937062;
}
.semititle{
	border-bottom: 1px solid #937062;
	width: 652px;
	margin-left: -15px;
    height: 50px;
	padding: 15px;
	font-weight: bold;
	font-size: 18px;
	text-align: left;
}
#emailChk, #emailChk2{
	cursor: pointer;
	background-color: #937062;
	border: none;
	color: #fff;
	font-size: small;
	width: 100px;
    height: 34px;
    margin-left: 5px;
}
.id_ok{
	color:#008000;
	display: none;
}

.id_already{
	color:#d9534f; 
	display: none;
}

.id_ok2{
	color:#008000;
	display: none;
}

.id_already2{
	color:#d9534f; 
	display: none;
}





.avatar-upload {
  position: relative;
  max-width: 170px;
}
.avatar-upload .avatar-edit {
  position: absolute;
  right: 12px;
  z-index: 1;
  top: 10px;
}
.avatar-upload .avatar-edit input {
  display: none;
}
.avatar-upload .avatar-edit input + label {
  display: inline-block;
  width: 34px;
  height: 34px;
  margin-bottom: 0;
  border-radius: 100%;
  background: #FFFFFF;
  border: 1px solid transparent;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
  cursor: pointer;
  font-weight: normal;
  transition: all 0.2s ease-in-out;
}
.avatar-upload .avatar-edit input + label:hover {
  background: #f1f1f1;
  border-color: #d6d6d6;
}
.avatar-upload .avatar-edit input + label:after {
  content: "\f040";
  font-family: 'FontAwesome';
  color: #937062;
  position: absolute;
  top: 10px;
  left: 0;
  right: 0;
  text-align: center;
  margin: auto;
}
.avatar-upload .avatar-preview {
  width: 150px;
  height: 150px;
  position: relative;
  border-radius: 100%;
  border: 4px solid #937062;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
}
.avatar-upload .avatar-preview > div {
  width: 100%;
  height: 100%;
  border-radius: 100%;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}

</style>
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	
	
		$(function() {
			
			$( ".join" ).on("click" , function() {
			
			var id=$("input[name='userId']").val();
			var pw=$("input[name='password']").val();
			var pw_confirm=$("input[name='password2']").val();
			var name=$("input[name='userName']").val();
			var nickname=$("input[name='userNickname']").val();
			var sm_email2=$("input[name='sm_email2']").val();
			var addPossible = $("#addPossible").val();
			var emailChk2 = $("#emailChk2").val();
			var checked = $("#checked").val();
			var mentorApply = $("input[name='mentorApply']").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			
							  
			if(id == null || id.length <1){
				alert("아이디는 반드시 입력하셔야 합니다.");
				return;
			}
			if(pw == null || pw.length <1){
				alert("패스워드는  반드시 입력하셔야 합니다.");
				return;
			}
			if(pw_confirm == null || pw_confirm.length <1){
				alert("패스워드 확인은  반드시 입력하셔야 합니다.");
				return;
			}
			if(name == null || name.length <1){
				alert("이름은  반드시 입력하셔야 합니다.");
				return;
			}
			if(nickname == null || nickname.length <1){
				alert("닉네임은 반드시 입력하셔야 합니다.");
				return;
			}
			if( pw != pw_confirm ) {				
				alert("비밀번호 확인이 일치하지 않습니다.");
				$("input:text[name='password2']").focus();
				return;
			}
				
			if ($("#phone").val() == "" || $("#phone").val().length != 11 || isNaN($("#phone").val())) {
				alert("휴대폰번호를 정확히 입력해 주세요");
				return;
			}
			
			if(sm_email2 == null || sm_email2 <1){
				alert("인증번호를 입력해 주세요");
				return;
			}
								
			if(addPossible == 'impossible'){
				alert("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				return;
			}
						
			if(checked == 0){
				alert("인증하기를 눌러주세요");
				return;
			}
			
			if(pw.length < 6 || pw.length > 20){
				alert("비밀번호는 6자리 ~ 20자리 이내로 입력해주세요.");
				return false;
			}else if(pw.search(/\s/) != -1){
				alert("비밀번호는 공백 없이 입력해주세요.");
				return false;
			}else {
				 console.log("통과"); 
			}
					
			alert("회원가입이 완료되었습니다");
			
			$("form").attr("method" , "POST").attr("action" , "/user/addUser").attr("enctype","multipart/form-data").submit();
		
			});
		
		});	
	
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			$(".cancel").on("click" , function() {
				history.go(-1);
			});
		});	
	
		
	
		// 도로명 주소
		 function findAddr(){
				new daum.Postcode({
			        oncomplete: function(data) {
			        	
			        	console.log(data);
			        	
			            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			            var roadAddr = data.roadAddress; // 도로명 주소 변수
			            var jibunAddr = data.jibunAddress; // 지번 주소 변수
			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			            document.getElementById('member_post').value = data.zonecode;
			            if(roadAddr !== ''){
			                document.getElementById("member_addr").value = roadAddr;
			            } 
			            else if(jibunAddr !== ''){
			                document.getElementById("member_addr").value = jibunAddr;
			            }
			        }
			    }).open();
			}
		
			
		//이메일 인증        
		$(function() {       
		  
		   var code = "";
		     $("#emailChk").click(function(){
		    	
		     	var userId = $('#userId').val();
		     	console.log(userId);
		     	
		     	
		     	
		       	$.ajax({
		                type:"GET",
		                url:"./json/checkEmail?userId=" +userId,
		                cache : false,
		                success:function(data){ console.log(data);
		                	if(data == "error"){
		                		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
		        				$("#userId").attr("autofocus",true);
		        				$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
		        				$(".successEmailChk").css("color","red");
		                	}else{	        		
		        				alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
		                		$("#sm_email2").attr("disabled",false);
		                		$("#emailChk2").css("display","inline-block");
		                		$(".successEmailChk").text("인증번호를 입력한 뒤 인증하기를 눌러주십시오.");
		                		$(".successEmailChk").css("color","green");
		                		code = data;
		                	}
		                }
		            });
		     	
		     	
		     	
		        });
		     
		   
		   //이메일 인증번호 대조
		     $("#emailChk2").click(function(){
		    	 
		    	 
		    	 
		     	if($("#sm_email2").val() == code){
		     		$(".successEmailChk").text("인증번호가 일치합니다.");
		     		$(".successEmailChk").css("color","green");
		     		$("#emailDoubleChk").val("true");
		     		$("#sm_email2").attr("disabled",true);
		     		$("#addPossible").val("possible");
		     	}else{
		     		$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
		     		$(".successEmailChk").css("color","red");
		     		$("#emailDoubleChk").val("false");
		     		$("#sm_email2").attr("autofocus",true);
		     		$("#addPossible").val("impossible");
		     	}
		     	
		     	$("#checked").val(1);
		     });
		        
		});	
		
	
	
		// 아이디 중복체크
		function checkId(){
	        var userId = $('#userId').val(); 
	        console.log(userId);
	        
	        $.ajax({
	            url:'./json/checkId', 
	            type:'post', 
	            data:{userId:userId},
	            success:function(cnt){ 
	            	console.log(cnt);
	                if(cnt == 0){ 
	                    $('.id_ok').css("display","inline-block"); 
	                    $('.id_already').css("display", "none");
	                    $('#emailChk').attr('disabled', false);
	                    
	                } else { 
	                    $('.id_already').css("display","inline-block");
	                    $('.id_ok').css("display", "none");
	                    $('#emailChk').attr('disabled', true);
	                    
						
	                }
	            },
	            error:function(){
	                alert("에러입니다");
	            }
	        });
	        };
	        
		//==>"이메일형식 아이디" 유효성Check  Event 처리 및 연결
		 $(function() {
			 
			 $("input[name='userId']").on("change" , function() {
				
				 var email=$("input[name='userId']").val();
			    
				 if(email != "" && (email.indexOf('@') < 1 || email.indexOf('.') == -1) ){
			    	alert("이메일 형식이 아닙니다.");
			     }
			});
			 
		});
		
		// 닉네임 유효성체크 
		 function checkNickname(){
		        var userNickname = $('#userNickname').val(); 
		        console.log(userNickname);
		        
		        $.ajax({
		            url:'./json/checkNickname',
		            type:'post',
		            data:{userNickname:userNickname},
		            success:function(cnt){ 
		                if(cnt == 0){ 
		                    $('.id_ok2').css("display","inline-block"); 
		                    $('.id_already2').css("display", "none");
		                } else { 
		                    $('.id_already2').css("display","inline-block");
		                    $('.id_ok2').css("display", "none");		                  
		                }
		            },
		            error:function(){
		                alert("에러입니다");
		            }
		        });
	        };
        
	      		
			$(function() {	
				function readURL(input) {
				    if (input.files && input.files[0]) {
				        var reader = new FileReader();
				        reader.onload = function(e) {
				            $('#imagePreview').css('background-image', 'url('+e.target.result +')');
				            $('#imagePreview').hide();
				            $('#imagePreview').fadeIn(650);
				        }
				        reader.readAsDataURL(input.files[0]);
				    }
				}
				
				$("#imageUpload").change(function() {
				    readURL(this);
				});
			});
			
</script>

	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
        <jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->


<div class="container">
	<div class="layout">
			
				<h1 class="bg-defualt text-center"  style="color:#333;font-family: 'Tiro Devanagari Sanskrit', serif;">| A D D &nbsp; P R OF I L E |</h1><br>
				
				<!-- form Start /////////////////////////////////////-->
				<form class="form-horizontal">
			  
			<div>
				  
				  <div class="subtitle">
				  <p>프로필</p>
				  </div><br>
				  	<input type="hidden" id="addPossible" value="">  
				  	  

				  <div class="form-group">
				    <div class="avatar-upload">
				        <div class="avatar-edit">
				            <input type='file' id="imageUpload" multiple="multiple" name="uploadFile" accept=".png, .jpg, .jpeg" />
				            <label for="imageUpload"></label>
				        </div>
				        <div class="avatar-preview">
				            <div id="imagePreview" style="background-image: url(/resources/images/logo/default_profile02.png);">
				            </div>
				          
				        </div>
				    </div>
				  </div>
				  	  
				  	  <br>
				  <div class="form-group">
				    <label for="userid">아이디</label>
				      <table style="width: 652px;">
				    	<tr>
				    		<td style="width: 30%;">
				 				<input type="text" class="form-control" id="userId" name="userId"  oninput = "checkId()" >
				      		</td>
				     		 <td style="width: 15%;">
				     			 <button type="button" id="emailChk" class="doubleChk" >인증번호 발송</button>
				     		 </td>
				     		 <td  style="text-align: left;">&ensp;
				     		 	<div style="display: inline-block;"> 
							      <span id="helpBlock" class="id_ok">사용 가능한 아이디입니다.</span>
								  <span id="helpBlock" class="id_already">이미 사용중인 아이디입니다.</span>
								 </div>  
				     		 </td>
			    		  </tr>
				      </table>
				  </div>
				  
				  <div class="form-group">
				      <table style="width: 652px;">
				    	<tr>
				    		<td style="width: 30%;">
				 				<input type="text" class="form-control" id="sm_email2" name="sm_email2" placeholder="인증번호 입력"  disabled required>
				      		</td>
				     		<td style="width: 15%;">
				     			 <button type="button" id="emailChk2" class="doubleChk" >인증하기</button>
				     		 </td>
				     		 <td  style="text-align: left;">&ensp;
				     		 	<div style="display: inline-block">
							      <span class="successEmailChk"></span> 
							    </div> 	
		    				</td>
			    		  </tr>
				      </table>
				  </div>
				  	  
				  <div class="form-group">
					<label for="userNick">닉네임</label>
						<table style="width: 652px;">
							<tr>
								<td style="width: 46%;">
								<input type="text" class="form-control" id="userNickname" name="userNickname"  oninput="checkNickname()">
								</td>
								
								<td  style="text-align: left;">&ensp;
								<span id="helpBlock" class="id_ok2">사용 가능한 닉네임입니다.</span>
					 			<span id="helpBlock" class="id_already2">이미 사용중인 닉네임입니다.</span>
					 			</td>
				 			</tr>
			 			</table>
				  </div>
				  
				  				   
				  <div class="form-group">
				    <label for="password">비밀번호</label>
				      <input type="password" class="form-control" id="password" name="password" >
				  </div>
				  <div class="form-group">
				    <label for="passwordcheck">비밀번호 확인</label>
				      <input type="password" class="form-control" id="password2" name="password2" >
				  </div>
				  
			</div>
			<br>
			<div>
				<div class="subtitle">
				  <p>회원정보</p>
				  </div><br>	  
				  
				  
				  <div class="form-group">
				    <label for="userName">이름</label>
				      <input type="text" class="form-control" id="userName" name="userName" >
				  </div>
				  
				 <div class="form-group">
				    <label for="userPhone">연락처 &ensp;<span style="font-size: 12px;font-weight:bold;color:#a94442;">( " - " 제외 11자리를 입력해주세요. )</span></label>
				      <input type="text" class="form-control" id="phone" name="phone" >
				  </div>
				  
				  <div class="form-group">
				    <label for="userBirth">생년월일</label>
				      <input type="DATE" class="form-control" id="userBirth" name="userBirth" >
				  </div>
				  
				  <div class="form-group divyAddr">
				    <label for="divyAddr">주소</label>
				    <table style="width:652px">
				    							
						<tr>
							<td class="addr">
								<input type="text" class="form-divy" id="member_post" name="addr" placeholder="우편번호 (클릭해주세요.)" readonly onclick="findAddr()"><br>
							</td>
						</tr>
						<tr>
							<td class="addr">
								<input type="text" class="form-divy" id="member_addr" name="addr" placeholder="주소" readonly><br>
							</td>
						</tr>
						<tr>
							<td class="addr">
								<input type="text" class="form-divy" name="addr" placeholder="상세주소">
							</td>
						</tr>
						
					</table>
				  </div>
				  
			</div>
			<br>
			<div>
				<div class="subtitle">
				  <p>쿠킹멘토 <i class="bi bi-chevron-down"></i></p>
				  </div><br>		

				  <div class="form-group">
					 <ul class="payul">
					 	<li>
					 		<input type="radio" name="mentorApply" value="Y"/> <span style="font-size:16px; font-weight: bold;">멘토신청</span>
					    </li>
					    <li> 
					    	<input type="radio" name="mentorApply" value="N" checked="checked"/> <span style="font-size:16px; font-weight: bold;">신청안함</span>
					  	</li>
					  </ul>
				  </div>
				  <br>
				  
				  <h4 class="semititle">경력사항</h4>
				  
				<table style="width:652px">
					<tr>
						<td>
						  <div class="form-group">
						    <label for="">소속</label>
						      <input type="text" class="form-table" id="company" name="company" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">근무시작 날짜</label>
						      <input type="DATE" class="form-table" id="startDate" name="startDate" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">근무종료 날짜</label>
						      <input type="DATE" class="form-table" id="endDate" name="endDate" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">업무내용</label>
						      <input type="text" class="form-area" id="careerExperience" name="careerExperience" />
						  </div>
		 				</td>
		 				<td>
		 				<div class="form-group">
						    <label for="">소속</label>
						      <input type="text" class="form-table" id="company" name="company" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">근무시작 날짜</label>
						      <input type="DATE" class="form-table" id="startDate2" name="startDate" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">근무종료 날짜</label>
						      <input type="DATE" class="form-table" id="endDate2" name="endDate" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">업무내용</label>
						      <input type="text" class="form-area" id="careerExperience" name="careerExperience" />
						  </div>
		 				</td>
		 			</tr>
		 		</table>		
 			
 			
 			<h4 class="semititle">자격증</h4>
				  
				<table style="width:652px">
					<tr>
						<td>
						  <div class="form-group">
						    <label for="">자격증명</label>
						      <input type="text" class="form-table" id="licenseName" name="licenseName" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">발급기관</label>
						      <input type="text" class="form-table" id="licenseInstitution" name="licenseInstitution" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">취득일자</label>
						      <input type="DATE" class="form-table" id="licenseDate" name="licenseDate" >
						  </div>
		 				</td>
		 				<td>
		 				<div class="form-group">
						    <label for="">자격증명</label>
						      <input type="text" class="form-table" id="licenseName" name="licenseName" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">발급기관</label>
						      <input type="text" class="form-table" id="licenseInstitution" name="licenseInstitution" >
						  </div>
						  
						  <div class="form-group">
						    <label for="">취득일자</label>
						      <input type="DATE" class="form-table" id="licenseDate2" name="licenseDate" >
						  </div>
		 				</td>
		 			</tr>
		 		</table>		
 
			</div>	  
			
			</form>
			
			
			<input type="hidden" id="checked" value="0">
			
			<br><br>
			<div class="text-center  buttons">
				<button type="button" class="join">가입하기</button>	
				<button type="button" class="cancel" >취&emsp;소</button>
			</div>
				
			<br>
 	</div>
</div>	


</body>

</html>