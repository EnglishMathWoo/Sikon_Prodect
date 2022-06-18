<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
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
            padding-top : 30px;
        }
        
        div.container {
	padding-top: 200px;
	
}
.btn-b {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width:100px;
  font-size: small;
}
body {
	padding-top: 50px;
	
}

.page-header.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.row {
	font-family: 'Gowun Batang', serif;
}

.table.table-hover.table-striped {
	font-family: 'Gowun Batang', serif;
}

.ref-sort{display:block; margin-bottom:50px; text-align:center;}
.ref-sort ul{margin:0; padding:0; list-style:none; text-transform:uppercase; 	font-family: 'Gowun Batang', serif;
}
.ref-sort li{display:inline-block; position:relative; margin:0 10px 0 0; padding:0 20px 0 0;}
.ref-sort li::after{position:absolute; top:0; right:0; content:"/";}
.ref-sort li:last-child{margin:0; padding:0;}
.ref-sort li:last-child::after{display:none;}
.ref-sort li a{}

/* References */
.ref-sort li a{color:inherit;}
.ref-sort li a:hover, #references .ref-sort li.current a{color:#829DA2;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.sectiontitle{display:block; max-width:55%; margin:0 auto 80px; text-align:center;}
.sectiontitle .heading{margin:0; padding:0; line-height:1;}

.sectiontitle{max-width:none; margin-bottom:50px;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.imgover:hover::before{background:rgba(130,157,162,.5);/* #829DA2 */}
.imgover, .imgover:hover::after{color:#333333;} 

/* Latest */
.excerpt time{border-color:#D7D7D7;}

#latest article{max-width:348px;}

#footer{padding-bottom:50px;}/* Not required, just looks a little better */
.latestimg > li{display:inline-block; float:none; width:auto; margin:0 5% 5% 0;}
.latestimg > li img{width:auto;}

* Latest
--------------------------------------------------------------------------------------------------------------- */
#latest{}

#latest > li:last-child{margin-bottom:0;}/* Used when elements stack in small viewports */
article{}
article img{width:100%;}/* Force the image to have the full width of parent at all times */
.excerpt{padding:30px 0 0;}
.excerpt time{display:block; margin:0 0 30px 0; padding:0 0 15px 0; font-style:normal; font-size:.8rem; line-height:1; border-bottom:1px solid;}
.excerpt time i{margin-right:5px;}
.excerpt .heading{margin:0 0 10px 0; font-size:1.3rem;}
.excerpt .meta{margin:0 0 30px 0; padding:0; list-style:none; text-align:left;}
.excerpt .meta li{display:inline-block; font-size:.8rem;}
.excerpt .meta li::after{margin-left:5px; content:"|";}
.excerpt .meta li:last-child::after{margin:0; content:"";}
.excerpt p{}
.excerpt footer{margin-top:30px;}

.latestimg{}
.latestimg > li{display:inline-block; float:left; width:30%; margin:0 0 5% 5%;}
.latestimg > li:nth-last-child(-n+3){margin-bottom:0;}/* Removes bottom margin from the last three items - margin is restored in the media queries when items stack */
.latestimg > li:nth-child(3n+1){margin-left:0; clear:left;}/* Removes the need to add class="first" */
.latestimg > li img{width:100%;}/* Force the image to resize to take the full space - may have to be changed for tablets, depends on personal preference */
.latestimg > li a.imgover{display:block;}

.carousel-inner > .item > img {
  top: 0;
  left: 0;
  min-width: 100%;
  max-height: 500px;
} 

/* [cook LIST] 폰트 적용 */
.wrapper{
font-family: 'Tiro Devanagari Sanskrit', serif;
}

/* 검색, 정렬조건 css */
.condition{
font-family: 'Gowun Batang', serif;
width: 100px;
float:right;
border-color:#D7D7D7;
}


/* 레시피 등록 버튼 css */
.submit
 {
  display: block;
  border: none;
  width: 150px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
  margin-top: 20px;
  margin-bottom: 20px;
  background: #d4af7a;
  float: right;
  	font-family: 'Gowun Batang', serif;
  
}

/* 레시피등록 버튼이랑 hr이랑 충돌=> margin-top:20px에서 60px로 변경해서 수정*/
hr {
    margin-top: 60px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}

/* 전체 건수 표기시 레시피등록 버튼과 간격 조절 margin: 10px 0 0 에서 0 0 0으로 변경 */
p {
    margin: 0 0 0px;
}
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	$(function() {	
	

	 
		 $( "button:contains('확인')"  ).on("click" , function() {

			 self.location = "/cook/listCook?menu=search"
			});
	 
});
	
	</script>
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
	<div class="page-header">
	        <h3 class="font-x2 nospace" align="center"><br>| 신청내역확인 | </h3>
	      
	    </div>
	
	

		<div class="row">
				<div class="col-xs-12 col-md-12" align="center">
    	
			<c:choose>
		    	<c:when test="${cook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${cook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<video width="400" height="300" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="300" height="300" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${cook.cookFilename}" width="300" height="300" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose></div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스번호</strong>
			</div>
			<div class="col-xs-8 col-md-4"><strong>${apply.classCook.cookNo}</strong></div>
		</div>

		<hr/>
		
		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>쿠킹클래스가격</strong>
			</div>
			<div class="col-xs-8 col-md-4"><strong>${apply.classCook.cookPrice}</strong></div>
		</div>

		<hr/>
		
			

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>수업시간</strong>
			</div>
			 <div class="col-sm-2 col-md-2">
		    <strong> ${cook.startTime}~ ${cook.endTime}</strong>
		    </div>

		</div>

		<hr/>		
				<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>신청자아이디</strong>
			</div>
			<div class="col-xs-8 col-md-4"><strong>${apply.applier.userId}</strong></div>
		</div>

		<hr/>
		

	
	
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자연락처</strong></div>
			<div class="col-xs-8 col-md-4"><strong>${user.phone}</strong></div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>구매자주소</strong></div>
			<div class="col-xs-8 col-md-4"><strong>${user.addr}</strong></div>
		</div>
		
		<hr/>
			<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>신청자수</strong></div>
			<div class="col-xs-8 col-md-4"><strong>${apply.cookStatus }명</strong></div>
		</div>
		
		<hr/>

		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  	
	  			<button type="button" class="btn-b">확인</button>
	  		
		
	  		</div>
		</div>
		
		<br/>
		</form>	
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
</html>