<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  ///////////////////////// font ////////////////////////// -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<!-- include css/js -->
<link href="/resources/css/animate.min.css" rel="stylesheet">
<link href="/resources/css/bootstrap-dropdownhover.min.css"
	rel="stylesheet">
<script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>

<!-- 내정보 css -->
<style>
body {
    background-color: #F7F7F7;
}

#logo a{
	font-family: 'Gowun Batang', serif;

}

.padding {
    padding: 3rem !important;
    margin-left: 350px;
}

.card-img-top{
    height:300px;
}



.card-no-border .card {
    border-color: #d7dfe3;
    border-radius: 4px;
    margin-bottom: 30px;
    -webkit-box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05);
    box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05)
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem
}

.pro-img {
    margin-top: -80px;
    margin-bottom: 20px
}

.little-profile .pro-img img {
    width: 128px;
    height: 128px;
    -webkit-box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    border-radius: 100%
}

html body .m-b-0 {
    margin-bottom: 0px
}

h3 {
    line-height: 30px;
    font-size: 21px
}

.btn-rounded.btn-md {
    padding: 12px 35px;
    font-size: 16px
}

html body .m-t-10 {
    margin-top: 10px
}

.btn-primary,
.btn-primary.disabled {
    background: #7460ee;
    border: 1px solid #7460ee;
    -webkit-box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
    box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
    -webkit-transition: 0.2s ease-in;
    -o-transition: 0.2s ease-in;
    transition: 0.2s ease-in
}

.btn-rounded {
    border-radius: 60px;
    padding: 7px 18px
}

.m-t-20 {
    margin-top: 20px
}

.text-center {
    text-align: center !important
}

h1,
h2,
h3,
h4,
h5,
h6 {
    color: #455a64;
    font-family: "Poppins", sans-serif;
    font-weight: 400
}

p {
    margin-top: 0;
    margin-bottom: 1rem
}


</style>

<!-- left bar css -->
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	text-decoration: none;
	font-family: arial;
}

/* left bar 아래로 위치 이동 margin-top:0=>15*/
ol, ul {
    margin-top: 15px;
    margin-bottom: 10px;
}

body{
	background: #eee;
}
.wrapper{
	position: relative;
}
.sidebar{
	position: fixed;
	width: 250px;
	height: 100%;
	background:#F7F7F7;
	padding: 10px 0;

	    
}
.wrapper .sidebar ul li{
	padding: 15px;
    width: 400px;
    margin-left: 200px;	
}
.wrapper .sidebar ul li a{
	color: #bdb8d7;
	display: block;
}
.wrapper .sidebar ul li a .fas{
	width: 25px!important;
}
.wrapper .sidebar ul li a .far{
	width: 25px!important;
}
.wrapper .sidebar ul li:hover{
	background: none;
}
/* 메뉴바 마우스 갖다댈 때 css */
.wrapper .sidebar ul li a:hover{
	color: #4527A0;
	text-decoration: none;
}
.myproject{
	margin-top: 25px;
	color: #ffffffa8;
	font-size: 14px;
	margin-bottom: 0;
}
.userProfile{
	position: absolute;
	bottom: 0;
	left: 5%;
	display: flex;

}
.userProfile a{
	width: 20px;
	background: #4527A0;
	color: #bdb8d7;
	text-decoration: none;
	font-size: 15px;
}
.userProfile a:hover{
	color: #fff;
	background: #4527A0;
}
.userProfile p{
	color: #fff;
	padding: 0 15px 0 15px;
}
.userProfile 
.xyz,
.mnp{
	padding-top: 60%;
	line-height: 30px;
	font-size: 25px!important;
}
.notification1{
	display: flex;
}
.notification1 .number1{
	font-size: 15px;
	display: block;
    padding-left: 100px;
    color: #fff;
} 
 
.notification2{
	display: flex;
}
.notification2 .number2{
	font-size: 15px;
	display: block;
    padding-left: 85px;
    color: #fff;
   }
</style>



</head>

<body>

<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

<div class="wrapper d-flex">
		<div class="sidebar">
			
			<ul>
				<li><a href="#"><i class="fas fa-home"></i>내정보보기</a></li>
				<li><a href="#"><i class="fas fa-users"></i>마이레시피</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>마이리뷰</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>마이쿠킹클래스</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>주문배송조회</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>책갈피조회</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>즐겨찾는멘토</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>포인트조회</a></li>
				<li><a href="#"><i class="fas fa-signal"></i>쿠폰조회</a></li>
			</ul>
		<p class="myproject px-3">PROJECTS</p>

	</div>
</div>

<div class="padding">
    <div class="col-md-8">
        <!-- Column -->
        <div class="card"> <img class="card-img-top" src="/resources/images/homedeco/main06.jpg" alt="Card image cap" width="100%">
            <div class="card-body little-profile text-center">
                <div class="pro-img"><img src="https://i.imgur.com/8RKXAIV.jpg" alt="user"></div>
                <h3 class="m-b-0">${user.userNickname }</h3>
                <p>${user.role }</p> <a href="javascript:void(0)" class="m-t-10 waves-effect waves-dark btn btn-primary btn-md btn-rounded" data-abc="true">내정보수정</a>
                <div class="row text-center m-t-20">
                    <div class="col-lg-4 col-md-4 m-t-20">
                        <h3 class="m-b-0 font-light">10434</h3><small>Articles</small>
                    </div>
                    <div class="col-lg-4 col-md-4 m-t-20">
                        <h3 class="m-b-0 font-light">434K</h3><small>Followers</small>
                    </div>
                    <div class="col-lg-4 col-md-4 m-t-20">
                        <h3 class="m-b-0 font-light">5454</h3><small>Following</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>