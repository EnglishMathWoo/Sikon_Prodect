<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	
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
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
 <!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
    <style>

        .bi-heart{
            font-size: 30px;
            line-height: 30px;
            color:crimson;
        }

        .bi-heart-fill{
            font-size: 30px;
            line-height: 30px;
            color:crimson;
        }

    </style>
    <!--  댓글 -->
<style>
h3{
margin-left: 60px;
}
.reviewHeader{
	font-family: 'Nanum Myeongjo', serif;
 	width: 800px;
	margin-left: 60px;
	border-bottom: 2px solid rgb(147, 112, 98);
    font-size: 18px;
    line-height: 28px;
    letter-spacing: 0px;
    padding-bottom: 8px;
    border-bottom: 2px solid rgb(147, 112, 98);
    text-align: start;
    font-weight: bold;
    height:5;
}

.panel{
    width: 800px;
    text-align:left;
    margin-left: 60px;
}
.img-sm {
    width: 46px;
    height: 46px;
}

.panel {
    box-shadow: 0 2px 0 rgba(0,0,0,0.075);
    border-radius: 0;
    border: 0;
    margin-bottom: 15px;
}

.panel .panel-footer, .panel>:last-child {
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}

.panel .panel-heading, .panel>:first-child {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

.panel-body {
    padding: 25px 20px;
}


.media-block .media-left {
    display: block;
    float: left
}

.media-block .media-right {
    float: right
}

.media-block .media-body {
    display: block;
    overflow: hidden;
    width: auto
}

.middle .media-left,
.middle .media-right,
.middle .media-body {
    vertical-align: middle
}

.thumbnail {
    border-radius: 0;
    border-color: #e9e9e9
}

.tag.tag-sm, .btn-group-sm>.tag {
    padding: 5px 10px;
}

.tag:not(.label) {
    background-color: #fff;
    padding: 6px 12px;
    border-radius: 2px;
    border: 1px solid #cdd6e1;
    font-size: 12px;
    line-height: 1.42857;
    vertical-align: middle;
    -webkit-transition: all .15s;
    transition: all .15s;
}
.text-muted, a.text-muted:hover, a.text-muted:focus {
    color: #acacac;
}
.text-sm {
    font-size: 0.9em;
}
.text-5x, .text-4x, .text-5x, .text-2x, .text-lg, .text-sm, .text-xs {
    line-height: 1.25;
}

.btn-trans {
    background-color: transparent;
    border-color: transparent;
    color: #929292;
}

.btn-icon {
    padding-left: 9px;
    padding-right: 9px;
}

.btn-sm, .btn-group-sm>.btn, .btn-icon.btn-sm {
    padding: 5px 10px !important;
}

.mar-top {
    margin-top: 15px;
}


.btn-w {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:40%;
  font-size: large;
}
.btn-w:hover {
  background-color: #e7e2e2;
}


.btn-b {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  width:40%;
  font-size: large;
}
.btn-b:hover {
  background-color: #937062d4;
}
</style>
<style>

.container {
	padding-top: 150px;
} 
</style> 

<style>
body>div.container{
	padding-top : 200px;
	font-family: 'Nanum Myeongjo', serif;
}
div.row{
	font-family: 'Nanum Myeongjo', serif;
}
div.page-header{
	font-family: 'Nanum Myeongjo', serif;
}
div.image{
	padding-top : 30px;
}
</style>
 <!-- //////////////////////////////////공유하기////////////////////////////// -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
 
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">



//=========================================================================================//	
	$( document ).ready( function() {
		 
		
		
		 $('#cookStatus').change( function() {
			 var quantity = $('#cookStatus').val();
			 $('#cookStatus').val(cookStatus)
			 console.log('신청인원: '+cookStatus);
		 });
		
		 $( "#check" ).on("click" , function() {
			 self.location = "/cook/listCook?menu=manage"
		});
		 
		 $( "#cancel" ).on("click" , function() {
			 self.location = "/cook/listCook?menu=search"
		});
		 
		 $( "#mentor" ).on("click" , function() {
			 self.location = "/cook/listCook?menu=search"
		}); 
		 
		 $( ".addPurchase" ).on("click" , function() {
			 var quantity = $('#quantity').val();
			 self.location = "/apply/addApply?menu=${param.menu}&cookNo=${cook.cookNo}"
		});
		 
		 $( "#listMyCook" ).on("click" , function() {
			 self.location = "/cook/mentor?mentorId=${cook.mentor.userId}"
		}); 		 

		 
		 $( ".updateCook" ).on("click" , function() {
			 var cookNo = $('#cookNo').val();
			 self.location = "/cook/updateCook?cookNo="+cookNo
		});
		 
	});
//=========================================장바구니=========================================//	
	
function fncAddWish() {
	
	var cookStock=$("#cookStock").val();
	var cookStatus=$("input[name='cookStatus']").val();
	console.log(cookStock);
	console.log(cookStatus);
	if (cookStock < cookStatus) {
		alert("장바구니 담기가능 개수가 초과되었습니다");
		return;
	}
	
	
	$("form").attr("method" , "POST").attr("action" , "/wish/addWish").submit();
	
}
	 
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$( "#wish" ).on("click" , function() {
		console.log('장바구니');
		fncAddWish();
	});
});
//=========================================================================================//	
	
		
	
	</script>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	



	<div class="container">
	
				<div class="row">
					<input type="hidden" name="cookNo" id="cookNo" value="${cook.cookNo}"/>
					  <input type="hidden" id="menu" name = "menu" value="${param.menu }"/>
				</div>		 
	
		<div class="row">
		
	
				<div class="col-xs-6 col-md-6 text-center image">				
   	<c:choose>
		    	<c:when test="${cook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${cook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${cook.cookFilename.split('/')}">
								<video width="400" height="400" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
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
		    	</c:choose>
				</div>	
			

				<div class="col-xs-4 col-md-4">
			
				<div class="row">
					<input type="hidden" name="cookNo" id="cookNo" value="${cook.cookNo }"/>
					<input type="hidden" name="cookRegdate" id="cookRegdate" value="${cook.cookRegdate }"/>
				</div>
				
				<hr/>
				
				<div class="row">
				
					<div class="text-right">
						<a id="kakao-link-btn" href="javascript:kakaoShare()">
					    	<img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" width="30" height="30"/>
					    </a>
					</div>
				
				
					
					<div><h4><strong>${cook.cookName}</strong></h4></div><br>
				
					<div><strong>${cook.cookBrief }</strong></div>
						<br/>

					<div  id="listMyCook"><h5><strong>쿠킹멘토 ${cook.mentor.userNickname }</strong></h5></div>
					
					
					<input type="hidden" name="cookBrief" value="${cook.cookBrief }"/>
					<input type="hidden" name="cookName" value="${cook.cookName}"/>
					
					
				</div>
				
				<br/>
				
				
				
				
				<div class="row">
					<div><h6>${cook.cookPrice } 원</h6></div>
					<div><h5><strong>모집인원${cook.cookRecruit}명</strong></h5></div>
				</div>
				
				<br/>
				
				<div class="row">
			<c:if test = "${cook.cookTheme =='KO'}">
			 <h5><strong>테마 : 한식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'JA'}">
			 <h5><strong>테마 : 일식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'AM'}">
		 <h5><strong>테마 : 양식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'CH'}">
			 <h5><strong>테마 : 중식</strong></h5>
			</c:if>
			<c:if test = "${cook.cookTheme == 'DE'}">
			 <h5><strong>테마 : 간식</strong></h5>
			</c:if>		
				</div>
				

				<div class="row">
			
					<div id="cookLocation" value="${cook.cookLocation}"><h5><strong>장소 : ${cook.cookLocation}</strong></h5></div>
				</div>				
				
			
				
				<div class="row">
				<div><h5><strong>모집기간 : ${cook.aplstarTime}&emsp;~&emsp;${cook.aplendTime}</strong></h5></div>				
				</div>
				
				<div class="row">
				<div><h5><strong>수업시간 : ${cook.startTime}&emsp;~&emsp;${cook.endTime}</strong></h5></div>				
				</div>
		
				
		
				
				
				<div class="form-group">
			  		<div class="text-right">	
			  			
			  				<button type="button" class="btn-b addPurchase" id="buy" >신청하기</button>
			  				
			  				
			  			<c:if test="${sessionScope.user.role == 'mentor'}">
			  				<button type="button" class="btn-w updateCook"  >수정하기</button>
			  			  </c:if>	
			  			
				  			<c:if test="${sessionScope.user.role == 'admin'}">
			  				<button type="button" class="btn-w updateCook"  >수정하기</button>
			  			  </c:if>			  				
			  		</div>
				</div>
		
				
		 	</div>
		 	
		 	<div class="col-xs-2 col-md-2">
		 	</div>
		 	
		 	</div>
		 	
		 	<hr/>

		<div class="col-xs-10 col-md-10 text-center">

			<div><h4><strong>클래스 정보</strong></h4> 
			
				
				</br>
					</br>
			<div>
			
			${cook.cookContent}
			</div>
			
			</div>
</br>
					</br>					 
		<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
    
        </a>
    </em>
</p>

<div class="row text-center"><h5><strong>쿠킹클래스 장소</strong></h5>
<div id="map" style="width:700px;height:500px; text-align: center; margin:36px auto;" ></div>
</div>
	<hr/>
	<br/>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdc66313a731d6cd370ddce26735db6a&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var cookLocation = $("#cookLocation").attr('value');
console.log(cookLocation);
// 주소로 좌표를 검색합니다
geocoder.addressSearch(cookLocation, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">만나는 장소!</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>	
				
			<h4 class="reviewHeader">리뷰</h4>
			
			<c:forEach var="review" items="${review}">
				<div class="panel">
					<div class="panel-body">
						<div class="media-block">
							<a class="media-left" href="#"><img class="img-circle img-sm"
								alt="Profile Picture" src="/resources/images/168939.jpg"></a>
							<div class="media-body">
								<div class="mar-btm">
									<a href="#"
										class="btn-link text-semibold media-heading box-inline">${review.writerNickname }</a>
									<p class="text-muted text-sm">
										<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${review.reviewRegdate}" />
									</p>
								</div>
								<c:if test="${review.reviewImg != null }">
									<img src="/resources/images/uploadFiles/${review.reviewImg }"
										width="200" height="200">
								</c:if>
								<p>${review.reviewContent }</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			
			
		</div>
		

		 	</div>
	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>		 	
<script type="text/javascript">	
		///*
	Kakao.init('bdc66313a731d6cd370ddce26735db6a');
	  // SDK 초기화 여부를 판단합니다.
	  console.log(Kakao.isInitialized());
	  
	  function kakaoShare() {
		  
		  var image = $("input:hidden[name='image']").val();
		  console.log(image);
		  var cookName = $("input:hidden[name='cookName']").val();
		  console.log(cookName);
		  var cookBrief = $("input:hidden[name='cookBrief']").val();
		  console.log(cookBrief);
		  var cookNo = $("input:hidden[name='cookNo']").val();
		 console.log(cookNo);
		  
	    Kakao.Link.sendDefault({
	      objectType: 'feed',
	      content: {
	        title: cookName,
	        description: cookBrief,
	        imageUrl: 'http://192.168.0.50:8080/resources/images/uploadFiles/'+image ,
	        link: {
	          mobileWebUrl: 'http://192.168.0.50:8080/cook/getCook?cookNo='+cookNo,
	          webUrl: 'http://192.168.0.50:8080/cook/getCook?cookNo='+cookNo,
	        },
	      },
	      buttons: [
	        {
	          title: '웹으로 보기',
	          link: {
	            mobileWebUrl: 'http://192.168.0.50:8080/cook/getCook?cookNo='+cookNo,
	            webUrl: 'http://192.168.0.50:8080/cook/getCook?cookNo='+cookNo,
	          },
	        },
	      ],
	      // 카카오톡 미설치 시 카카오톡 설치 경로이동
	      installTalk: true,
	    })
	  }
//*/	
	//=====================공유하기====================================	 	
	$(document).ready(function() {
	});
</script>
 	<!--  모달창 띄우기 /////////////////////////////////////-->
 
 	<div id="my_modal">
 		<a class="modal_close_btn"><i class="bi bi-x"></i></a>
 		<br>

	    <br>
	</div>		 	


</body>
</html>