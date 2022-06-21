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
width: 100%;
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
  height: 40px;
  font-size: medium;
  margin-bottom: 15px;
  margin-left: 5px;
}

.login button:hover {
  background: #000;
  transition: 0.8s;
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

.row{
margin-left: 56px;
    margin-top: 20px;
}

.form-control{
margin-bottom: 15px;
}
    </style>
  	
  </head>
   
   
<body onload='resizeWindow(this)'>
      <form class="form-horizontal" >

  <article class="login">
    <div>
      <h2>
        비밀번호 재설정
      </h2>
      <br/><br/>
      
      </div>
      
      <div>
		<input type="password" class="form-control" id="password" name="password" placeholder="새 비밀번호" >
        <input type="hidden" class="form-control" id="userId" name="userId" value="${userId}" >
      
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="새 비밀번호 확인" >
    </div>
    
    <div class="row" >
  <button type="button" class="btn-w">비밀번호변경</button><br/> 	
  <button type="button" class="btn-w">취&nbsp;소</button><br/> 	
</div>

  </article>
    </form>
  	
  </body>
   	<script type="text/javascript">
	
	//============= "가입"  Event 연결 =============
	 $(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$( ".btn-w" ).on("click" , function() {
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
		
		$("form").attr("method" , "POST").attr("action" , "/user/updateUserpw").submit();
		setTimeout(function() {   
			opener.parent.location.reload();
         }, 5);
		
		setTimeout(function() {   
			alert("수정완료");
            window.close();
         }, 3);
	}
	

	</script>
  

</html>