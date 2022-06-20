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
  
    <title>아이디 찾기</title>
    <!--  
    <style>
        @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");
	
	html {
		height: 100%;
	}
	
	body {
	    width:100%;
	    height:100%;
	    margin: 0;
  		padding-top: 200px;
  		padding-bottom: 40px;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background-repeat: no-repeat;
	}
	
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
         background-color: #f1ebe6;
	}

    #findUser{
        background-color: #e4932b;
        border: none;
    }
	
	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}
 
    .card-title{
        margin-left: 30px;
    }


    a{ 
    	color: #f58b34; text-decoration: none; 
    }

    .links{
        text-align: center;
        margin-bottom: 10px;
    }
    
    .checks{
    	color : red;
    }
    </style>
    -->
    
    <style>
    #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal.modal-window {
            background: rgba( 0, 0, 0, 0.70 ); // 69, 139, 197
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 300px;
            position: relative;
            top: -100px;
            padding: 10px;
        }
        #modal.title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal.title h2 {
            display: inline;
        }
        #modal.close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal.content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
    </style>
    
    <script type="text/javascript">

	
	  	//아이디 정규식
	//	var idJ = /^[a-z0-9]{5,20}$/;
	/*	
		$("#userName").on("click",function(){
		     if($('#userName').val() == ""){
		   		$('#checks').text('이름을 입력해주세요.');
		   	  	$('#checks').css('color', 'red');
		 }
		 });
		
  		$("#phone").on("click",function(){
	     if($('#phone').val() == ""){
	   		$('#checks').text('전화번호를 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
  		
  		
  		$("#member_id").focusout(function(){
  			if(!idJ.test($(this).val())){
  			$('#checks').text('5~20자의 영문 소문자, 숫자만 사용가능합니다');
  			$('#checks').css('color', 'red');
  		}
  		 });
  		
  		
	     
  		$("#email").focusout(function(){
	     if($('#email').val() == ""){
	   		$('#checks').text('이메일을 입력해주세요');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
  	*/	
  		
  	
  	
  	
  	
  	
  		
		//ID 찾기 
	//	$("#findUser").on("click",function(){
		function findUser_click(){
			var name = $('#userName').val();
			console.log(userName);
			var phone = $('#phone').val();
			console.log(phone);
			
  		 $.ajax({
             type:'POST',
             url:'./json/findUser',
             data:{'userName':name, 'phone':phone},
             success:function(data){  console.log(data);
               if(data == 0){
            	   $('#id_value').text("회원 정보를 확인해주세요!");
				   $('#userName').val('');
				   $('#phone').val('');
               }else{
            	   $('#id_value').text(data);
            	   console.log(data);
			 	   $('#userName').val('');
			 	  console.log(userName);
				   $('#phone').val('');
               }
            },   
             error:function(){
                alert("에러입니다");
                } 
                   
                });
            };
            
         //    alert("아이디는 " + response.data + "입니다.");
  //  	window.onload=function(){
  		
  	
        
   //     };
  	 
  		       
 
         
  		$(function() {
  			  		
  			$( "a:contains('로그인')" ).on("click" , function() {
  			$(self.location).attr("href","/user/loginView.jsp");
  			});
 		});
  	</script>
  	
  </head>
   
   
  <body>
  <%@ include file="Modal.jsp" %>

	<div class="card align-middle" style="width:26rem;">
		<div class="card-title" style="margin-top:30px;">
            
			<h2 class="card-title" style="color:#f58b34;"><img src="/resources/images/logo/usik.png"/></h2>
		</div>
        
		<div class="card-body" style="color:#8f4e19;">
     
      	<input type="text" name="userName" id="userName" class="form-control" placeholder="이름" required><br>
        <input type="text" name="phone" id="phone" class="form-control" placeholder="전화번호" required><br>
        
    <!--  <input type="email" name="email" id="email" class="form-control" placeholder="이메일" required><br>
        <p class="checks" id="checks">${findpw_checkf}</p><br/>
    -->
        <button type="button" id="findUser" onclick="findUser_click()"  class="btn btn-lg btn-primary btn-block" >아이디 찾기</button>
     
      
		</div>
        <div class="links">
            <a href="memberId">비밀번호 찾기</a> | <a href="#">로그인</a> | <a href="memberRegist">회원가입</a>

        </div>
	</div>
  
  	
  	
  	
  </body>
   
  <script>
  const modal = document.getElementById("modal")
	 const btnModal = document.getElementById("findUser")
	const closeBtn = modal.querySelector(".close-area")
	
		btnModal.addEventListener("click", e => {
			console.log('aaaaa');
			modal.style.display = "flex"
			console.log('modal.style.display');
		});
		
		    
		
		closeBtn.addEventListener("click", e => {
			console.log('bbbbb');
		    modal.style.display = "none"
		});
		
		modal.addEventListener("click", e => {
			console.log('cccc');
		    const evTarget = e.target
		    if(evTarget.classList.contains("modal-overlay")) {
		        modal.style.display = "none"
		    }
		});
		
		
	/*	
		$(document).ready(function() {
			$('#findUser').click(function() {
				$('#modal-dialog').show();
				console.log("finduser");
			});
			
			
			
			
			
		});
	*/	
		
		
  </script> 
  

</html>