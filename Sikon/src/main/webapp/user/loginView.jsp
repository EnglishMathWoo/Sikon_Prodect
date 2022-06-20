<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


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
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');	
		body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul, a {
			font-family: 'Nanum Gothic Coding', monospace;
		}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
		a {
			text-decoration: none;
			position: relative;
			/* width: 100%; */
			font-size: 13.5px;
			font-weight: 600;
			line-height: 0px;
			color: #828282;
			box-sizing: border-box;
			z-index: 4;
		}
		button, input, select, textarea {
			border-radius: 0;
			border: none;
			background: 0 0;
			-webkit-appearance: none;
			-moz-appearance: none;
			appearance: none;
			outline: 0;
			text-decoration: none;
			cursor: pointer;
			-webkit-text-size-adjust: none;
		}
		.login_box .input_comn .icon_cell .icon_id, .login_box .input_comn .icon_cell .icon_pw , .icon_delete{
		    background-image: url('https://zejbrah.github.io/web_test/logo.png');
			background-size: 240px 135px;
		}
		.input_comn .icon_cell .icon_id{
			position: absolute;
			top: 45%;
			left: 18px;
			margin-top: -10px;
			background-position: -216px -2.625px;
			background-repeat: no-repeat;
			width: 19.875px;
			height: 23.25px;
		}
		.input_comn.focus .icon_cell .icon_id{
			position: absolute;
			top: 45%;
			left: 18px;
			margin-top: -10px;
			background-position: -187.6px -2.625px;
			background-repeat: no-repeat;
			width: 19.875px;
			height: 23.25px;
		}
		.input_comn .icon_cell .icon_pw{
			position: absolute;
			top: 45%;
			left: 19px;
			margin-top: -10px;
			background-position: -216px -28.125px;
			background-repeat: no-repeat;
			width: 19.975px;
			height: 23.625px;
		}
		.input_comn.focus .icon_cell .icon_pw{
			position: absolute;
			top: 45%;
			left: 19px;
			margin-top: -10px;
			background-position: -187.5px -28.125px;
			background-repeat: no-repeat;
			width: 19.975px;
			height: 23.625px;
		}		
		.header {
			box-sizing: border-box;
		}
		.header .header_inner {
			display: flex;
      justify-content: center;
		}
		.logo{
		    display: inline-block;
			background-position: 0 0;
			background-repeat: no-repeat;
			width: 304px;
			height: 70px;
		}
		.logo{
			background-image: url('https://zejbrah.github.io/web_test/hackthistree.png');
			background-size: 304px 70px;
		}
		.login_wrap {
			display: flex;
			justify-content: center;
			align-items: center;
			padding-top: 10%;
		}
		.login_panel {
			/*border: 1px solid #c6c6c6;*/
			border-radius: 6px;
			background-color: #fff;
			box-shadow: 0 5px 30px -10px rgba(150,170,180,0.5);
		}
		input:focus {outline:none;}
		input{
			border: none;
			font-weight: 450;
		}
		.input_row {
			display: table;
			table-layout: fixed;
			width: 100%;
		}
		.input_comn {
			display: table;
			table-layout: fixed;
			width: 100%;
			position: relative;
			margin-top: 10px;
			padding: 17px 14px 17px 19px;
			height: 100%;
			border: 1px solid #dadada;
			box-sizing: border-box;
			box-shadow: 0 2px 6px 0 rgb(68 68 68 / 8%);
			border-radius: 6px;
		}
		.blind {
			position: absolute;
			clip: rect(0 0 0 0);
			width: 1px;
			height: 1px;
			margin: -1px;
			overflow: hidden;
		}
		.input_comn .icon_cell {
		    display: table-cell;
			width: 26px;
			vertical-align: middle;
		}
		.input_comn.focus {
			border: 1px solid #03c75a;
		}
		.input_text {
			position: relative;
			width: 100%;
			font-size: 15px;
			font-weight: 600;
			line-height: 0px;
			color: #222;
			box-sizing: border-box;
			z-index: 4;
		}
		.login_form {
			display: flex;
			justify-content: center;
			align-items: center;
		}
		.login_box {
			position: relative;
			padding: 24px;
			width: 450px
		}
    @media (max-width: 505px) {
         .login_box {
          width: 100%;
          padding: 24 40px;
          box-sizing: border-box;
        }
    }
		.login_error_common {
			position: relative;
			min-height: 40px;
			margin: 21px 0 -10px;
			padding-right: 50px;
		}
		.error_message {
			display: inline-block;
			font-size: 1rem;
			line-height: 19px;
			color: #ff003e;
			vertical-align: middle;
		}
		.login_btn {
			display: block;
			width: 100%;
			margin-top: 14px;
			padding: 17px 0 15px;
			border-radius: 6px;
			border: solid 1px rgba(0,0,0,.15);
			background-color: #424242;
		}
		.login_btn .btn_text {
			font-size: 22px;
			font-weight: 700;
			line-height: 26px;
			color: #fff;
		}
		.btn_delete {
			position: absolute;
			top: 8px;
			right: 8px;
			width: 35px;
			height: 35px;
			z-index: 5;
			background-color: #fff;
		}
		.icon_delete {
			display: inline-block;
			margin: 8px 0 0 8px;
			background-position: -216.75px -56.625px;
			background-repeat: no-repeat;
			width: 18px;
			height: 18px;
		}
		.user_wrap{
			padding-right: 40px;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		.user_wrap li{
			position: relative;
			display: inline-block;
		}
		ul.user_info {
			padding-right: 10px;
		}
		.user_info li:first-child:before{
			display: none;
		}
		.user_info li:before{
			content: '';
			float: left;
			width: 1px;
			height: 10px;
			margin: 4px 1px;
			margin-right: 10px;
			background-color: #dadada;
		}

    </style>
    
    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

		//============= "로그인"  Event 연결 =============
		$( function() {
			
			$("#userId").focus();
			
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(".login_btn").on("click" , function() {
				
				console.log('로그인');
				
				var id=$("input:text").val();
				var pw=$("input:password").val();
				
				if(id == null || id.length <1) {
					alert('ID 를 입력하지 않으셨습니다.');
					$("#userId").focus();
					return;
				}
				
				if(pw == null || pw.length <1) {
					alert('패스워드를 입력하지 않으셨습니다.');
					$("#password").focus();
					return;
				}
				
				$("form").attr("method","POST").attr("action","/user/login").attr("target","_parent").submit();
			});
			
			
			
		});	
		
		
		//============= 회원원가입화면이동 =============
		$( function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#!' ]").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		
		//============= 회원아이디찾기화면이동 =============
		$( function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#1' ]").on("click" , function() {
				window.open('/user/findUser', 'finduser', 'width=500px, height=590px, location=no, status=no, scrollbars=yes');

				//self.location = "/user/findUser"
			});
			
		});
		
		//============= 회원비밀번호찾기화면이동 =============
		$( function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				window.open('/user/findUserpw', 'findUserpw', 'width=500px, height=590px, location=no, status=no, scrollbars=yes');

				//self.location = "/user/findUserpw"
			});
		});
		
		
		
	</script>		
	
	
    
</head>

<body style="background-color:#f5f5f5">
	<div class="login_wrap">
		<li class="login_panel" style="display: block;">
			<div class="login_form">
				<div class="login_box">
          	<header class="header" role="banner">
		<div class="header_inner">
			<img src="/resources/images/logo/login1.PNG">
				<h1 class="blind">식탁의 온도</h1>
			
		</div>
	</header>
	<form>
					<div class="input_comn" id="id_line">
						<div class="icon_cell" id="id_cell">
							<span class="icon_id">
								<span class="blind">아이디</span>
							</span>
						</div>
						<div class="input_id">
							<input type="text" name="userId" id="userId" maxlength="30" placeholder="아이디" title="아이디" class="input_text" >
						</div>
						
					</div>
					<div class="input_comn" id="pw_line">
						<div class="icon_cell" id="pw_cell">
							<span class="icon_pw">
								<span class="blind">패스워드</span>
							</span>
						</div>
						<div class="input_pw">
							<input type="password"  name="password" id="password" maxlength="30" placeholder="비밀번호" title="비밀번호" class="input_text" >
						</div>
						
					</div>
	</form>				
					<div class="form-group">
					<button type="button" class="login_btn" id="loginbtn">
						<span class="btn_text">로그인</span>
					</button>
					</div>
				  	<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?
											client_id=07cd433423b8401d52fda5136624e099&
											redirect_uri=http://localhost:8080/user/kakaoLogin
											&response_type=code">
				
						<img src="/resources/images/logo/kakao_login_large_wide.png" height="60px" width="400" style="display: block; margin: 0 auto;">
					</a>
					
				
					<!-- ip 11번 카카오 로그인 -->
			<!--		
					<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?
											client_id=07cd433423b8401d52fda5136624e099&
											redirect_uri=http://192.168.0.11:8080/user/kakaoLogin
											&response_type=code">
				
						<img src="/resources/images/logo/kakao_login_large_wide.png" height="60px" width="400" style="display: block; margin: 0 auto;">
					</a> 
			-->	
				</div>
			</div>	
		</li>
	</div>
	<div class="user_wrap">
		<ul class="user_info">
			<li>
				<a class="text-muted" href="#1">아이디찾기</a>
			</li>
			
			<li>
				<a href="#!" role="button" class="link-info">회원가입</a>
			</li>
			
      		<li>
				<a class="text-muted" href="#">비밀번호찾기</a>
			</li>
		</ul>
	</div>
</body>

</html>