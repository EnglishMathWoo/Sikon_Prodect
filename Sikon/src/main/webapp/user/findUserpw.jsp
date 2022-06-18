<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	.id_ok{
	color:#008000;
	display: none;
	}

	.id_already{
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
			fncFindUser();
		});
	});	
	
	
	//============= "취소"  Event 처리 및  연결 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("#previous").on("click" , function() {
			history.go(-1);
		});
	});	
	
	
	function fncFindUser() {
		
		var pw=$("input[name='password']").val();
		var pw_confirm=$("input[name='password2']").val();
		
		
		if(pw == null || pw.length <1){
			alert("패스워드는  반드시 입력하셔야 합니다.");
			return;
		}
		if(pw_confirm == null || pw_confirm.length <1){
			alert("패스워드 확인은  반드시 입력하셔야 합니다.");
			return;
		}
		
		$("form").attr("method" , "POST").attr("action" , "/user/findUserpw").submit();
	}
	
	
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
      
	
		//이메일 인증        
		$(function() {       
		  
		   var code = "";
		     $("#emailChk").click(function(){
		    	
		     	var userId = $('#userId').val();
		     	console.log(userId);
		     	
		     	
		     	
		       	$.ajax({
		                type:"GET",
		                url:"./json/mailCheckPw?userId=" +userId,
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
		     		$("#password").attr("disabled",false);
		     		$("#password2").attr("disabled",false);
		     		//$("#userId").attr("disabled",true);
		     	}else{
		     		$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
		     		$(".successEmailChk").css("color","red");
		     		$("#emailDoubleChk").val("false");
		     		$("#sm_email2").attr("autofocus",true);
		     	}
		     });
		        
		});	




	</script>
	
	
</head>
<body>

<div class="container">
    
        <h1 class="bg-white text-center">비밀번호 찾기</h1>
        
        <!-- <div class="col-2"></div> -->
       
              <form class="form-horizontal" >
              
                  <div class="form-group" style="padding:8px">
                    
                    
                    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">아 이 디(이메일)</label>
                       
                    <div class="col-sm-5">
                            
                    <div class="col-sm-8" style="display: inline-block">
				     <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디" oninput = "checkId()" >
				    </div> 
                       <button type="button" id="emailChk" class="doubleChk" >인증번호 보내기</button><br/> 	
                       
                        <div style="display: inline-block"> 
					      <span id="helpBlock" class="id_ok">저장되지 않은 아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
						  <span id="helpBlock" class="id_already">인증번호 보내기를 눌러주세요</span>
						</div> 
                        	
		            <div class="col-sm-8" style="display: inline-block">  
				      <input type="text" class="form-control" id="sm_email2" name="sm_email2" placeholder="인증번호 입력" disabled required>
				    </div>
				      <button type="button" id="emailChk2" class="doubleChk" style="float: left" >이메일인증</button>
		                  <br> 	
                      </div>
                      
                      
           <!--               
                       <div class="form-group">
					    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">이름</label>
					   	<div class="col-sm-4">
					      <input type="text" class="form-control" id="userName" name="userName" placeholder="회원이름">
					   	</div>
					  </div>
			-->			  
                        
                  </div>
                  
           
           
           
           		<div class="form-group">
		    <label for="password" class="col-sm-offset-1 col-sm-3 control-label">새 비밀번호</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password" name="password" placeholder="새 비밀번호" disabled required>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label">새 비밀번호 확인</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="새 비밀번호 확인" disabled required>
		    </div>
		  </div>
		  
		  
		   <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >비밀번호변경</button>
			  <a class="btn btn-primary btn" id="previous" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		  
		  
		  
		  
            </form>
       

        <div class="col-2"></div>
     <!-- END OF ROW -->
</div>



</body>
</html>