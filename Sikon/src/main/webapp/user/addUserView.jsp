<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- datepicker -->
	<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">

	<script src="resources/js/plugin/datepicker/bootstrap-datepicker.js"></script>
	<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>

	<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">

	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<!-- jQuery UI toolTip 사용 CSS-->
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<!-- jQuery UI toolTip 사용 JS-->
 	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
            padding-top : 190px;
            
        }
       
      
    </style>
    
    <style>
		.id_ok{
		color:#008000;
		display: none;
		}

		.id_already{
		color:#6A82FB; 
		display: none;
		}
		
		.id_ok2{
		color:#008000;
		display: none;
		}

		.id_already2{
		color:#6A82FB; 
		display: none;
		}
	</style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "가입"  Event 연결 =============
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncAddUser();
			});
		});	
		
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#previous").on("click" , function() {
				history.go(-1);
			});
		});	
	
		
		function fncAddUser() {
			
			var id=$("input[name='userId']").val();
			var pw=$("input[name='password']").val();
			var pw_confirm=$("input[name='password2']").val();
			var name=$("input[name='userName']").val();
			var nickname=$("input[name='userNickname']").val();
			
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
			
			
			$("form").attr("method" , "POST").attr("action" , "/user/addUser").submit();
		}
		
		//이메일 인증        
		$(function() {       
		  
		   var code = "";
		     $("#emailChk").click(function(){
		    	
		     	var userId = $('#userId').val();
		     	console.log(userId);
		     	
		     	
		     	
		       	$.ajax({
		                type:"GET",
		                url:"./json/mailCheck?userId=" +userId,
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
		                		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
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
		     		//$("#userId").attr("disabled",true);
		     	}else{
		     		$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
		     		$(".successEmailChk").css("color","red");
		     		$("#emailDoubleChk").val("false");
		     		$("#sm_email2").attr("autofocus",true);
		     	}
		     });
		        
		});	
		
	
	
		// 아이디 중복체크
		function checkId(){
	        var userId = $('#userId').val(); //id값이 "id"인 입력란의 값을 저장
	        console.log(userId);
	        
	        $.ajax({
	            url:'./json/checkId', //Controller에서 요청 받을 주소
	            type:'post', //POST 방식으로 전달
	            data:{userId:userId},
	            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
	            	console.log(cnt);
	                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디  
	                    $('.id_ok').css("display","inline-block"); 
	                    $('.id_already').css("display", "none");
	                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
	                    $('.id_already').css("display","inline-block");
	                    $('.id_ok').css("display", "none");
	                 //   alert("아이디를 다시 입력해주세요");
	                 //   $('#userId').val('');
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
		        var userNickname = $('#userNickname').val(); //닉네임값이 "userNickname"인 입력란의 값을 저장
		        console.log(userNickname);
		        
		        $.ajax({
		            url:'./json/checkNickname', //Controller에서 요청 받을 주소
		            type:'post', //POST 방식으로 전달
		            data:{userNickname:userNickname},
		            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
		                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 닉네임
		                    $('.id_ok2').css("display","inline-block"); 
		                    $('.id_already2').css("display", "none");
		                } else { // cnt가 1일 경우 -> 이미 존재하는 닉네임
		                    $('.id_already2').css("display","inline-block");
		                    $('.id_ok2').css("display", "none");
		                    alert("닉네임을 다시 입력해주세요");
		                  //  $('#userNickname').val('');
		                }
		            },
		            error:function(){
		                alert("에러입니다");
		            }
		        });
		        };
		      
		        
		        
		// 생년월일
		 $(function() {
				$('#userBirth').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
		
		// 근무시작날짜
		 $(function() {
				$('#startDate').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
		
		// 근무시작날짜2
		 $(function() {
				$('#startDate2').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
		
		// 근무종료날짜
		 $(function() {
				$('#endDate').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
		
		// 근무종료날짜2
		 $(function() {
				$('#endDate2').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
		
		// 취득일자
		 $(function() {
				$('#licenseDate').datepicker({
					dateFormat: "yy-mm-dd"
				});
		});
	   
		// 취득일자2
		 $(function() {
				$('#licenseDate2').datepicker({
					dateFormat: "yy-mm-dd"
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
	
		 
		 
//		//==>"ID중복확인" Event 처리 및 연결
//		 $(function() {
//			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
//			 $("button.btn.btn-info").on("click" , function() {
//				popWin 
//				= window.open("/user/checkDuplication.jsp",
//											"popWin", 
//											"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
//											"scrollbars=no,scrolling=no,menubar=no,resizable=no");
//			});
//		});	

	</script>		
    
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-white text-center">회 원 가 입</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">
		 
		   <div class="form-group">
		   
		  
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">아 이 디(이메일)</label>
		 
		    <div class="col-sm-5">
		     <div class="col-sm-8" style="display: inline-block">
		      <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디" oninput = "checkId()" >
		     </div> 
		      <button type="button" id="emailChk" class="doubleChk" >인증번호 보내기</button><br/>
		     
		     <div style="display: inline-block"> 
		      <span id="helpBlock" class="id_ok">사용 가능한 아이디입니다.</span>
			  <span id="helpBlock" class="id_already">누군가 이 아이디를 사용하고 있어요.</span>
			 </div>
			  
		    <div class="col-sm-8" style="display: inline-block">  
		      <input type="text" class="form-control" id="sm_email2" name="sm_email2" placeholder="인증번호 입력" disabled required>
		    </div>
		      <button type="button" id="emailChk2" class="doubleChk" style="float: left;" >이메일인증</button>
		      
		    <div style="display: inline-block">
		      <span class="point successEmailChk"></span> 
		    </div> 		      
		      
			</div>
		
		    </div>
		 
		  <div class="form-group">
		    <label for="password" class="col-sm-offset-1 col-sm-3 control-label">비밀번호</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label">비밀번호 확인</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="비밀번호 확인">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">이름</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userName" name="userName" placeholder="회원이름">
		    </div>
		  </div>
		  
	  	  <div class="form-group">
		    <label for="userNickname" class="col-sm-offset-1 col-sm-3 control-label">닉네임</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="닉네임" oninput = "checkNickname()">
		      
		      <span id="helpBlock" class="id_ok2">사용 가능한 닉네임입니다.</span>
			  <span id="helpBlock" class="id_already2">누군가 이 닉네임을 사용하고 있어요.</span>
		    </div>
		  </div>
	
		  <div class="form-group">
    		<label for="userBirth" class="col-sm-offset-1 col-sm-3 control-label" >생년월일</label>
   			<div class="col-sm-4">
      	  <input type="text" class="form-control" id="userBirth" name="userBirth" placeholder="생년월일">
    		</div>
 	 	  </div>
  
		  	  	     
		  <div class="form-group">
		   <label for="addr" class="col-sm-offset-1 col-sm-3 control-label">주소</label>
		    <div class="col-sm-4">
		     <input id="member_post" class="form-control"  type="text" name="addr" placeholder="우편번호" readonly onclick="findAddr()">
  			 <input id="member_addr" class="form-control"  type="text" name="addr" placeholder="주소" readonly>
  			 <input type="text" class="form-control" name="addr" placeholder="상세주소">
		    </div>
		  </div>
		  
		  <div class="form-group">
    		<label for="phone" class="col-sm-offset-1 col-sm-3 control-label" >휴대폰</label>
   			<div class="col-sm-4">
      	  	<input type="text" class="form-control" id="phone" name="phone" placeholder="휴대폰">
      	  		<span id="helpBlock" class="help-block">
		      	 <strong class="text-danger">" -  " 제외 11자리입력하세요</strong>
		  		</span>
    		</div>
 	 	  </div>
 	 	  
 	 	  <div class="form-group">
    		<label class="col-sm-offset-1 col-sm-3 control-label" for="userImage">회원이미지</label>
   			<div class="col-sm-4">
       		<input multiple="multiple" class="form-control" type="file" id ="uploadFile"  name="uploadFile"  placeholder="회원이미지">
 			</div>
 		  </div>
 		  
		  <hr style="border: solid 1px #d7d7d7;" width="650px;">	
 	 	
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
	
		  <br>
		
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >가 &nbsp;입</button>
			  <a class="btn btn-primary btn" id="previous" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
</body>

</html>