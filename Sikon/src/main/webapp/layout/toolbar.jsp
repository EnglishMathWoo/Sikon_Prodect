<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  ///////////////////////// font ////////////////////////// -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/ef3e0db941.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

<style>
/* 배경색 */
body {
	background-color: #F7F7F7;
	
}

/* <hr/> 색상 */
hr, .borderedbox {
	border-color: #D7D7D7;
}

/* topbar '식탁의온도' 폰트 */
#logo {
	font-family: 'Gowun Batang', serif;
}

/* 우리의식탁 로고 이미지 비율 */
#usik {
float:left;
margin-top:10px;
	width: 150px;
	height: 37px;
}

/* toolbar css (from layout.css) */

/* Header
--------------------------------------------------------------------------------------------------------------- */
@media screen and (max-width:750px) {
	.imgl, .imgr {
		display: inline-block;
		float: none;
		margin: 0 0 10px 0;
	}
	.fl_left, .fl_right {
		display: block;
		float: none;
	}
	.one_half, .one_third, .two_third, .one_quarter, .two_quarter,
		.three_quarter {
		display: block;
		float: none;
		width: auto;
		margin: 0 0 30px 0;
		padding: 0;
	}
	#topbar {
		padding-top: 15px;
		text-align: center;
	}
	#header {
		text-align: center;
	}
	#header #logo {
		margin: 0 0 30px 0;
	}
	#mainav form {
		margin-top: 0;
	}
	#pageintro article .heading {
		margin-bottom: 30px;
		font-size: 38px;
	}
	#pageintro article p:first-of-type {
		margin-bottom: 20px;
		font-size: 18px;
	}
	#services .table, #services .table-row, #services .table-cell {
		display: block;
		width: 100%;
	}
	#services .table-cell {
		padding: 5%;
	}
}

/* Header */
#header #logo h1 a {
	color: inherit;
	background-color: inherit;
	text-decoration-line: none;
	float:left;
	padding-left: 375px;
}


/* Max Wrapper Width - Laptop, Desktop etc.
--------------------------------------------------------------------------------------------------------------- */
@media screen and (min-width:978px) {
	.hoc {
		max-width: 100%;
	}
}

/* Transition Fade
--------------------------------------------------------------------------------------------------------------- */
#mainav form * {
	transition: none !important;
}


/* Navigation
--------------------------------------------------------------------------------------------------------------- */
nav ul, nav ol {
	margin: 0;
	padding: 0;
	list-style: none;
}

#topbar ul {
	margin: 0 0 15px 0;
	line-height: normal;
}

#mainav, #breadcrumb, .sidebar nav {
	line-height: normal;
	padding-right: 375px;
}

.drop::after, #mainav li li .drop::after, #breadcrumb li a::after,
	.sidebar nav a::after {
	position: absolute;
	font-family: "FontAwesome";
	font-size: 10px;
	line-height: 10px;
}

/* Top Navigation */
#mainav {
	
}

#mainav ul.clear {
	margin-top: 3px;
}

#mainav ul {
	text-transform: uppercase;
}

#mainav ul ul {
	z-index: 9999;
	position: absolute;
	width: 180px;
	text-transform: none;
}

#mainav ul ul ul {
	left: 180px;
	top: 0;
}

#mainav li {
	display: inline-block;
	position: relative;
	margin: 0 15px 0 0;
	padding: 0;
}

#mainav li:last-child {
	margin-right: 0;
}

#mainav li li {
	width: 100%;
	margin: 0;
}

#mainav li a {
	display: block;
	padding: 10px 0;
}

#mainav li li a {
	border: solid;
	border-width: 0 0 1px 0;
}

#mainav .drop {
	padding-left: 15px;
}

#mainav li li a, #mainav li li .drop {
	display: block;
	margin: 0;
	padding: 10px 15px;
}

.drop::after, #mainav li li .drop::after {
	
}

.drop::after {
	top: 35px;
	left: 5px;
}

#mainav li li .drop::after {
	top: 15px;
	left: 5px;
}

#mainav ul ul {
	visibility: hidden;
	opacity: 0;
}

#mainav ul li:hover>ul {
	visibility: visible;
	opacity: 1;
}

#mainav form {
	display: none;
	margin: 0;
	padding: 0;
}

#mainav form select, #mainav form select option {
	display: block;
	cursor: pointer;
	outline: none;
}

#mainav form select {
	width: 100%;
	padding: 5px;
	border: none;
}

#mainav form select option {
	margin: 5px;
	padding: 0;
	border: none;
}

/* Navigation */
#mainav li a {
	color: inherit;
	text-decoration-line: none;
}

#mainav a:hover, #mainav li:hover>a {
	color: #B97D2D;
}

#mainav li li a, #mainav .active li a {
	color: #413E3D;
	background-color: #FFFFFF;
	border-color: #FFFFFF;
}

#mainav li li:hover>a, #mainav .active .active>a {
	color: #FFFFFF;
	color: #B97D2D;
}

#mainav form select {
	color: #FFFFFF;
	background-color: #413E3D;
}

.fl_left, .imgl {
	float: left;
}

.fl_right, .imgr {
	float: right;
}

html {
	overflow-y: scroll;
	overflow-x: hidden;
}

html, body {
	margin: 0;
	padding: 0;
	font-size: 14px;
	line-height: 1.6em;
}

.clear, .group {
	display: block;
}

.clear::before, .clear::after, .group::before, .group::after {
	display: table;
	content: "";
}

.clear, .clear::after, .group, .group::after {
	clear: both;
}

a {
	outline: none;
	text-decoration: none;
}

/* navigation 해도 툴바 고정 */
/* Generalise
--------------------------------------------------------------------------------------------------------------- */
h1, .heading {
	margin: 0 0 20px 0;
	font-size: 22px;
	line-height: normal;
	font-weight: normal;
	text-transform: uppercase;
}

address {
	font-style: normal;
	font-weight: normal;
}

.font-xs {
	font-size: .8rem;
}

.font-x1 {
	font-size: 1.2rem;
}

.font-x2 {
	font-size: 1.8rem;
}

.font-x3 {
	font-size: 2.8rem;
}

.wrapper {
	display: block;
	width: 100%;
	margin: 0;
	padding: 0;
	text-align: left;
	word-wrap: break-word;
}
.hoc {
	display: block;
	margin: 0 auto;
}

/* Top Bar
--------------------------------------------------------------------------------------------------------------- */
#topbar {
	padding: 15px 0;
	font-size: .8rem;
	text-transform: uppercase;
	padding-right: 375px;
	
}

#topbar * {
	margin: 0;
}

#topbar ul li {
	display: inline-block;
	margin-right: 10px;
	padding-right: 15px;
	border-right: 1px solid;
}

#topbar ul li:last-child {
	margin-right: 0;
	padding-right: 0;
	border-right: none;
}

#topbar i {
	margin: 0 5px 0 0;
	line-height: normal;
}

/* Top Bar */
#topbar ul li {
	border-color: rgba(255, 255, 255, .2);
}

#topbar>div:last-of-type li:first-child a {
	color: #B97D2D;
}

#topbar>div:last-of-type li:last-child a {
	color: #B97D2D;
}

.bi-bell {
	 font-size: 18px;
}

.bi-bell-fill {
	 font-size: 18px;
}

td{
	text-align: center;
}

div.addbar{
	height : 32px;
	text-align: center;
	background-color: #937062;
	color: #F7F7F7;
	padding: 5px;
	font-weight: bold;
    font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
    font-size: 12px;
    z-index: 20;
}

#addbar{
	text-decoration-line: none;
	color:#f7f7f7;
}

header{
background-color:#f7f7f7;
position:absolute;
width:100%;
z-index: 10;
border-bottom: 1px solid #dbd4d459;
height : 180px;
}

/*  주석 풀면 위에 있는 hr css랑 충돌
hr{display:block; width:100%; height:1px; border:solid; border-width:1px 0 0 0 ";}
*/

</style> 

<!-- /////////////////////// ToolBar Start ////////////////////////////-->

<head><link href="/resources/images/logo/sikon_icon.ico" rel="icon" >
<title>식탁의 온도</title>
</head>

<header id="header" class="hoc clear">

	<div class="addbar">
		<a href="/user/addUser" id="addbar">
			<img src="/resources/images/logo/logo.png" width="24px" height="24px" id="logo"> 
		 	&nbsp;회원가입 시 5000원 할인쿠폰 증정!
		 </a>
	</div> 

	<div id="topbar" class="hoc clear"> 
	    <div class="fl_right">
	      <ul class="nospace">
	        <c:if test="${empty sessionScope.user.role}">
	        <li><a href="#">Login</a></li>
	        </c:if>
	        
	        
	        
	        <c:if test="${!empty sessionScope.user.role}">
	        
	        <c:if test="${user.loginPath == 'K'}">
	        <li><a href="#" id="kakaoout">Logout</a></li>
	        </c:if>
	        <c:if test="${user.loginPath == 'S'}">
	        <li><a href="#" id="logout">Logout</a></li>
	        </c:if>
	        
	        <li><a href="#" style="color:#B97D2D">Mypage</a></li>
	        <c:if test="${sessionScope.alarm == 0}">
	        <li><i class="bi bi-bell" id="vacantAlarm"></i></li>
	        </c:if>
	        <c:if test="${sessionScope.alarm != 0}">
	        <li><i class="bi bi-bell-fill" id="filledAlarm"></i></li>
	        </c:if>
	        
	        </c:if>

	         
	        
	      </ul>
	    </div>
	</div>

    <!-- ################################################################################################ -->

    <div id="logo" class="fl_left">
	  
      <h1><a href="#"><img src="/resources/images/logo/usik.png" id="usik"></a></h1>
    </div>

    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="#">레시피</a></li>
        <li><a class="drop" href="#">스토어</a>
        			<c:if test="${! empty sessionScope.user.role}">
        			<ul>
		                <li><a href="#">구매목록</a></li>
		                <li><a href="#">장바구니</a></li>
              		</ul>
              		</c:if>
        </li>
        <li><a class="drop" href="#">쿠킹클래스</a>
        			<c:if test="${! empty sessionScope.user.role}">
        			<ul>
		                <li><a href="#">쿠킹클래스신청목록</a></li>
		                <li><a href="#">쿠킹클래스장바구니</a></li>		               
		                <li><a href="#">좋아요한쿠킹클래스</a></li>	               
		                
              		</ul>
              		</c:if>
        </li>
        <li><a class="drop" href="#">랭킹</a>      
        <li><a class="drop" href="#">공지사항</a>
                
        <c:if test="${sessionScope.user.role == 'admin'}">
        <li><a class="drop" href="#">관리</a>
      		<ul>
		        <li><a href="#">회원관리</a></li>
		        <li><a href="#">레시피관리</a></li>
		        <li><a class="drop" href="#">스토어관리</a>
		      		<ul>
		                <li><a href="#">상품목록</a></li>
		                <li><a href="#">판매목록</a></li>
              		</ul>
            	</li>
	            <li><a class="drop" href="#">쿠킹클래스관리</a>
		      		<ul>
		                <li><a href="#">쿠킹클래스등록</a></li>
		                <li><a href="#">쿠킹클래스목록</a></li>
		                <li><a href="#">쿠킹클래스판매목록</a></li>
		               
              		</ul>
            	</li>     
	            <li><a href="#">공지사항관리</a></li>
	            <li><a class="drop" href="#">쿠폰관리</a>
	            	<ul>
	            		<li><a href="#">쿠폰목록</a></li>
		                <li><a href="#">쿠폰발급목록</a></li>
	            	</ul>
	            </li>
          	</ul>
        </li>
        </c:if>
      <c:if test="${sessionScope.user.role == 'mentor'}">  
          <li><a class="drop" href="#">멘토</a>
      		<ul>

		      

	            <li><a class="drop" href="#">쿠킹클래스관리</a>
		      		<ul>
		                <li><a href="#">쿠킹클래스등록</a></li>
		                <li><a href="#">쿠킹클래스목록</a></li>
		                <li><a href="#">쿠킹클래스판매목록</a></li>
		                <li><a href="#">등록한쿠킹클래스</a></li>
		               
              		</ul>
            	</li>     


          	</ul>
        </li>    
       </c:if>
      </ul>
    </nav>

    
    <!-- ################################################################################################ -->
  
  </header>
	<!-- ////////////////////////////////// ToolBar End /////////////////////////////////////-->
	
	<script>

	var userId="${sessionScope.user.userId}";
	var userName="${sessionScope.user.userName}";
	var phone="";
	
	(function() {
	    var w = window;
	    if (w.ChannelIO) {
	      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
	    }
	    var ch = function() {
	      ch.c(arguments);
	    };
	    ch.q = [];
	    ch.c = function(args) {
	      ch.q.push(args);
	    };
	    w.ChannelIO = ch;
	    function l() {
	      if (w.ChannelIOInitialized) {
	        return;
	      }
	      w.ChannelIOInitialized = true;
	      var s = document.createElement('script');
	      s.type = 'text/javascript';
	      s.async = true;
	      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
	      s.charset = 'UTF-8';
	      var x = document.getElementsByTagName('script')[0];
	      x.parentNode.insertBefore(s, x);
	    }
	    if (document.readyState === 'complete') {
	      l();
	    } else if (window.attachEvent) {
	      window.attachEvent('onload', l);
	    } else {
	      window.addEventListener('DOMContentLoaded', l, false);
	      window.addEventListener('load', l, false);
	    }
	  })();
	 
	  ChannelIO('boot', {
		 
		"pluginKey": "1b48de3a-d8ff-433d-8e1b-2263c191a231", //please fill with your plugin key
	    "memberId": userId, //fill with user id
	    "profile": {
	      "name": userId, //fill with user name
	      "mobileNumber": phone //fill with user phone number
		}
	});
	</script>
 	
   	<script type="text/javascript">
	
		 $(function() {

			$( "#usik" ).on("click" , function() {
			$(self.location).attr("href","../index.jsp");
			});
			
			$( "a:contains('Login')" ).on("click" , function() {
			$(self.location).attr("href","/user/loginView.jsp");
			});
			
			/*
			$( "a:contains('Logout')" ).on("click" , function() {
			$(self.location).attr("href","https://kauth.kakao.com/oauth/logout?client_id=07cd433423b8401d52fda5136624e099&logout_redirect_uri=http://localhost:8080/user/logout");
			});

						
			$( "a:contains('Logout.')" ).on("click" , function() {
			$(self.location).attr("href","/user/logout");
			});
			*/
			
			$("#kakaoout").on("click" , function() {
				$(self.location).attr("href","https://kauth.kakao.com/oauth/logout?client_id=07cd433423b8401d52fda5136624e099&logout_redirect_uri=http://localhost:8080/user/logout");
			});
			
			$("#logout").on("click" , function() {
				$(self.location).attr("href","/user/logout");
			});
			
	 		$( "a:contains('Mypage')" ).on("click" , function() {
			$(self.location).attr("href","/mypage/mymain.jsp");
	 		});
	 		
	 		$( "a:contains('레시피')" ).on("click" , function() {
			$(self.location).attr("href","/recipe/listRecipe");
			});
	 		
	 		$( "a:contains('스토어')" ).on("click" , function() {
			$(self.location).attr("href","/product/listProduct?menu=search");
			});
	 		
	 		$( "a:contains('쿠킹클래스')" ).on("click" , function() {
			$(self.location).attr("href","/cook/listCook?menu=search");
			});
	 		
	 		$( "a:contains('랭킹')" ).on("click" , function() {
				$(self.location).attr("href","/ranking/listRecipe");
			});

	 		$( "a:contains('공지사항')" ).on("click" , function() {
			$(self.location).attr("href","/notice/listNotice?menu=search");
			});
	 		
	 		$( "a:contains('회원관리')" ).on("click" , function() {
			$(self.location).attr("href","/user/listUser");
			});
	 	
	 		$( "a:contains('레시피관리')" ).on("click" , function() {
			$(self.location).attr("href","/recipe/manageRecipe");
			});
	 		
	 		$( "a:contains('스토어관리')" ).on("click" , function() {
			$(self.location).attr("href","/product/listProduct?menu=manage");
			});
	 		
	 		$( "a:contains('쿠킹클래스관리')" ).on("click" , function() {
			$(self.location).attr("href","/cook/listCook?menu=manage");
			});

	 		$( "a:contains('공지사항관리')" ).on("click" , function() {
			$(self.location).attr("href","/notice/listNotice?menu=manage");
			});
	 		
	 		$( "a:contains('쿠폰관리')" ).on("click" , function() {
			$(self.location).attr("href","/coupon/listCoupon");
			});
	 		
	 		//====================================================
	 		
	 		$( "a:contains('쿠폰목록')" ).on("click" , function() {
			$(self.location).attr("href","/coupon/listCoupon");
			});
	 		
	 		$( "a:contains('쿠폰발급목록')" ).on("click" , function() {
			$(self.location).attr("href","/coupon/listIssuedCoupon");
			});
	 			
	 		//====================================================
	 			
	 		$( "a:contains('구매목록')" ).on("click" , function() {
			$(self.location).attr("href","/purchase/listPurchase");
			});
	 		
	 		/*
	 		$( "a:contains('상품등록')" ).on("click" , function() {
			$(self.location).attr("href","/product/addProductView.jsp");
			});
	 		*/
	 			
	 		$( "a:contains('상품목록')" ).on("click" , function() {
			$(self.location).attr("href","/product/manageProduct");
			});
	 		
	 		$( "a:contains('판매목록')" ).on("click" , function() {
			$(self.location).attr("href","/purchase/listSales");
			});
	 		
	 		$( "a:contains('장바구니')" ).on("click" , function() {
			$(self.location).attr("href","/cart/getCartList");
			});
	 			
	 		//====================================================
	 			 	
	 			
	 		$( "a:contains('쿠킹클래스신청목록')" ).on("click" , function() {
			$(self.location).attr("href","/apply/listApply?menu=search");
			});
	 		
	 		$( "a:contains('쿠킹클래스등록')" ).on("click" , function() {
			$(self.location).attr("href","/cook/addCook.jsp");
			});
	 		
	 		$( "a:contains('쿠킹클래스목록')" ).on("click" , function() {
				$(self.location).attr("href","/cook/manageCook");
				});
	 		
	 		$( "a:contains('쿠킹클래스판매목록')" ).on("click" , function() {
			$(self.location).attr("href","/apply/listSale?menu=manage");
			});
	 		
	 		$( "a:contains('쿠킹클래스장바구니')" ).on("click" , function() {
			$(self.location).attr("href","/wish/getWish?userId=${sessionScope.user.userId}");
			});
	 		
	 		$( "a:contains('등록한쿠킹클래스')" ).on("click" , function() {
				$(self.location).attr("href","/cook/listMyCook");
			}); 
	 		
	 		$( "a:contains('좋아요한쿠킹클래스')" ).on("click" , function() {
				$(self.location).attr("href","/heart/getHeart?userId=${sessionScope.user.userId}");
			});
	 		
	 		$( "a:contains('쿠킹멘토채널')" ).on("click" , function() {
				$(self.location).attr("href","/cook/mentor.jsp");
			}); 
	 		//====================================================
		 });

		 $(function() {
				
				$("#filledAlarm").on("click" , function() {
					
					$(self.location).attr("href","/alarm/listAlarm?userId=${sessionScope.user.userId}");
					
				});
			});	
		 
		 
		 $(function() {
				
				$("#vacantAlarm").on("click" , function() {
					
					$(self.location).attr("href","/alarm/listAlarm?userId=${sessionScope.user.userId}");
					
				});
			});	
		 
			 
		//web socket 시작
		var socket = null;
		
		$(document).ready(function(){
			//if(${login != null}){
				connectWs();
			//}
		})
			
		//소켓
			
		function connectWs(){
			
			console.log("tttttt")
			var ws = new SockJS("/alarm");
			socket = ws;
		
			ws.onopen = function() {
				console.log('open');
			};
		
			ws.onmessage = function(event) {
				alert(event.data);
				/*
				let $socketAlert = $('div#socketAlert');
				$socketAlert.html(event.data)
				$socketAlert.css('display', 'block');
				*/
				
				setTimeout(function(){
					$socketAlert.css('display','none');
					
				}, 5000);
			};
		
			ws.onclose = function() {
			    console.log('close');
			};
				
		};
		
		//web socket 끝
	 	
	</script>  