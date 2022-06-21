<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
	<head>
<meta charset="EUC-KR">

 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   	
   	
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
    <title>아이디 찾기</title>
    
    <style>
    
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

* {
	font-family: 'Gowun Batang', serif;

  margin: 0;
  padding: 0;
  box-sizing: border-box;
  border: 0px solid silver;
  outline: none;
}

img {
  width: 100px;
}

body {
	font-family: 'Gowun Batang', serif;

padding-top: 30px;
  font-size: 0.9rem;
  color: #999;
  line-height: 1rem;
  letter-spacing: 0.1px;
}

h1, h2, h3 {
	font-family: 'Gowun Batang', serif;
  color: #444;
}
body {
  overflow: auto !important;
  -webkit-overflow-scrolling: touch;
  height: 100vh;
  width: 100%;
  margin: 0 auto;
}

body::-webkit-scrollbar {
  width: 10px;
}

body::-webkit-scrollbar-thumb {
  background-color: #444;
  border-radius: 10px;
}

body::-webkit-scrollbar-track {
  background-color: #eee;
  border-radius: 10px;
}
h4, h5 {
	font-family: 'Gowun Batang', serif;
  color: #444;
}

h1 {
  font-size: 4rem;
  line-height: 4.5rem;
  text-transform: uppercase;
  color: white;
  text-align: center;
}

h2 {
    padding-top: 70px;
  font-size: 2.4rem;
  line-height: 2.4rem;
  text-transform: uppercase;
  margin-bottom: 1rem;
}

h3 {
  font-size: 1.4rem;
  line-height: 1.4rem;
  margin-bottom: 1rem;
}

h4 {
  font-size: 1.1rem;
  line-height: 1.4rem;
}

h5 {
  font-size: 0.9rem;
  line-height: 2.8rem;
}

ul {
  list-style: none;
}

button {
  font-size: 0.7rem;
  text-transform: uppercase;
  padding: 10px 0px;
  border: 1px solid #ccc;
  background: white;
  cursor: pointer;
}

button:hover {
  color: white;
  background: black;
}

/*start*/
.header{
  padding-bottom: 15rem;
}
.login {
  margin: 0 auto;
  text-align: center;
  width: 450px;
  padding: 0rem 3rem;
  padding-bottom: 2rem;
  border: 1px solid #ccc;
  margin-bottom: 10rem;
}
.login a:hover{
  text-decoration: none;
}
.login> :nth-child(1)> :nth-child(2) h4{
  display: flex;
  justify-content: space-between;
  width: 100%;
}
.login> :nth-child(1)> :nth-child(2) {
  padding: 1rem 0;
  display: flex;
  justify-content: space-between;
}

.login> :nth-child(1)> :nth-child(2) a {
  font-size: 1.6rem;
  width: 100%;
  padding: 2rem 0;
}

.login> :nth-child(1)> :nth-child(2) a:nth-child(2) {
    color: #937062;
    border-bottom: 3px solid #937062;
 
}

.login> :nth-child(1)> :nth-child(2) a:nth-child(1) {
color: #444;
  border-bottom: 3px solid #eee;

}

.login> :first-child>input {
  display: block;
  margin: 0 auto;
  padding: 10px;
  background: none;
  margin-bottom: 7px;
  width: 70%;
  float:left;
  height: 50px;
  border: 1px solid #ccc;

}
.login input:focus{
  border: 1px solid #000;
}
.login button {
 width: 100px;
  background: #937062;
  color: white;
  transition: 0.8s;
  height: 50px;
  font-size: medium;
  margin-bottom: 15px;
  margin-left: 5px;
}

.login button:hover {
  background: #000;
  transition: 0.8s;
}

.login> :nth-child(2) {
  display: flex;
  justify-content: space-around;
  width: 250px;
  margin: 0 auto;
  margin-bottom: 2rem;
}

.login> :nth-child(2) {
  width: 100%;
}

.login h3 {
  font-weight: lighter;
  margin-bottom: 15px;
  cursor: pointer;
}
.login a{
  color: #444;
}
.login a:hover{
  color: #444;

}
.login img {
  width: 40px;
  height: 40px;
  margin: 0 10px;
  transition: 0.8s;
  cursor: pointer;
  margin-left:80px;
}
.login>div> :nth-child(4){
  display: flex;
  width: 100px;
  margin-bottom: 2rem;
}.login>div> :nth-child(4) select{
  width:80px;
  border: 1px solid #666;

padding: .8em .5em;

font-family: inherit;
background: url('https://cdn2.iconfinder.com/data/icons/font-awesome/1792/angle-down-512.png') no-repeat;
border-radius: 0px;
background-position: 95% 50%;
background-size: 25px;
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
opacity: 0.6;
margin-right: 10px;
cursor: pointer;

}

.login>div> :nth-child(4) input{
  border: 1px solid #ccc;
  width: 99px;
  height: 50px;
  padding: 5px;
}
.login>div> :nth-child(4) input:last-child{
  margin-left: 10px;
}
.login>div> :nth-child(4) input:focus{
  border: 1px solid #000;
}
.btn-w {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:20%;
  font-size: large;
}
.btn-w:hover {
  background-color: #e7e2e2;
}

    </style>
  	
  </head>
   
   
<body onload='resizeWindow(this)'>

  <article class="login">
    <div>
      <h2>
        내 계정찾기
      </h2>
     
      <div>
        <h4>
          <a href="/user/findUserId.jsp">아이디찾기</a><a href="/user/findUserpw.jsp">비밀번호 찾기</a>
        </h4>
      </div>
      
      <input type="text" name="userId" id="userId"  placeholder="아이디" oninput = "checkId()">
  <button type="button" id="emailChk" class="doubleChk"  style="float: left" >인증번호 받기</button><br/> 	
      
      <input type="text" id="sm_email2" name="sm_email2" placeholder="인증번호 입력" disabled required>
      <button type="button" id="emailChk2" class="doubleChk" style="float: left" >이메일인증</button>
   <!--  <input type="email" name="email" id="email" class="form-control" placeholder="이메일" required><br>
        <p class="checks" id="checks">${findpw_checkf}</p><br/>
    -->
    </div>
  	 
					      <span class="point successEmailChk"></span> 


  </article>
  	
  </body>
    <script type="text/javascript">
	function resizeWindow(win){
		var wid=win.document.body.offsetWidth+30;
		var hei=win.document.body.offsetHeight+40;
			win.resizeTo(wid,hei);
		}
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
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 존재하지 않는 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
            		$("#emailChk").attr("disabled",true);

                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                 //   alert("아이디를 다시 입력해주세요");
                 //   $('#userId').val('');
            		$("#emailChk").attr("disabled",false);

                 
                 
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
		     
		   
		   //이메일 인증번호 대조 후 업데이트 이메일로 팝업
		     $("#emailChk2").click(function(){
		    	 var userId = $('#userId').val(); 
		    	 console.log( "user id + 콘솔 ^_^ " + userId) ;  
		    	 
		     	if($("#sm_email2").val() == code){
		     		$(".successEmailChk").text("인증번호가 일치합니다.");
		     		$(".successEmailChk").css("color","green");
		     		$("#emailDoubleChk").val("true");
		     		$("#sm_email2").attr("disabled",true);
		     		$("#userId").attr("disabled",true);
		     		
		     		window.location.href="/user/updateUserpw?userId="+userId;
		     		
		     	}else{
		     		$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
		     		$(".successEmailChk").css("color","red");
		     		$("#emailDoubleChk").val("false");
		     		$("#sm_email2").attr("autofocus",true);
		     	}
		     });
		        
		});	


		
	/*	
		$("#emailChk2").click(function(){
			
			var formData = $("#form").serialize() ;
			
			alert(formData) ;
			$.ajax({
					url: "./json/findPw" ,
					 type: 'POST',
					 data: formData , 
					dataType:"text",
					success: function(data){
						if(data == ("ddd") ){
							alert("결과="+data);
						}else{
							
							popWin = window.open("/user/updateUserpw?id="+id, "popWin",
									"top=200,left=200,width=780,height=650,marginwidth=0,marginheight=0,"+
									"scrollbars=no,scrolling=no,menubar=no,resizable=no" )
							
							
						}
						
					}
				
			})
			
			
		});
	*/	

  	</script>
 
  

</html>