<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>쿠킹클래스수정</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />





<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  ///////////////////////// SummerNote ////////////////////////// -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
 <!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Open+Sans:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">


<style>

html {
  line-height: 1;
  font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
  
  
}

ol, ul {
  list-style: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: none;
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
  content: none;
}



a img {
  border: none;
}

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
  display: block;
}

/* Colors */
/* ---------------------------------------- */
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
  font-weight: 400;
}

a {
  text-decoration: none;
}


.info-text {
  text-align: left;
  width: 100%;
}

.form-group {
  margin-bottom: 20px;
}

h2.heading {
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 300;
  text-align: left;
  color: #937062;
  border-bottom: 1px solid #937062;
  padding-bottom: 3px;
  margin-bottom: 20px;
}

.controls {
  text-align: left;
  position: relative;
}
.controls input[type=text],
.controls input[type=email],
.controls input[type=number],
.controls input[type=date],
.controls input[type=tel],
.controls textarea,
.controls button,
.controls select {
  padding: 12px;
  font-size: 14px;
  border: 1px solid #c6c6c6;
  width: 100%;
  margin-bottom: 18px;
  color: #888;
  font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
  font-size: 16px;
  font-weight: 300;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -ms-border-radius: 2px;
  -o-border-radius: 2px;
  border-radius: 2px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}
.controls input[type=text]:focus, .controls input[type=text]:hover,
.controls input[type=email]:focus,
.controls input[type=email]:hover,
.controls input[type=number]:focus,
.controls input[type=number]:hover,
.controls input[type=date]:focus,
.controls input[type=date]:hover,
.controls input[type=tel]:focus,
.controls input[type=tel]:hover,
.controls textarea:focus,
.controls textarea:hover,
.controls button:focus,
.controls button:hover,
.controls select:focus,
.controls select:hover {
  outline: none;
  border-color: #937062;
}

.controls .fa-sort {
  position: absolute;
  right: 10px;
  top: 17px;
  color: #999;
}
.controls select {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  cursor: pointer;
}

.controls textarea {
  resize: none;
  height: 200px;
}

input:-webkit-autofill {
   -webkit-box-shadow: 0 0 0 1000px #fff inset;
}

.submit {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
}
.submit:hover {
  background-color: #937062d4;
}

.cancel {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
}
.cancel:hover {
  background-color: #e7e2e2;
}
.clear:after {
  content: "";
  display: table;
  clear: both;
}

.grid {
  background: #f7f7f7;
}
.grid:after {
  /* Or @extend clearfix */
  content: "";
  display: table;
  clear: both;
}

.grid [class*=col-]:last-of-type {
  padding-right: 0;
}

.col-2-3 {
  width: 66.66%;
}

.col-1-3 {
  width: 33.33%;
}

.col-1-2 {
  width: 50%;
}

.size {
  width: 25%;
}

[class*=col-] {
  float: left;
  padding-right: 10px;
}

@media (max-width: 760px) {
  .col-1-4-sm,
.col-1-3,
.col-2-3 {
    width: 100%;
  }

  [class*=col-] {
    padding-right: 0px;
  }
}
.col-1-8 {
  width: 12.5%;
}

.formall{
	padding:220px;
}
.pltitle{

	text-align: center;
	color: #333;
	padding-top: 30px;
	font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
}
div.container {
	padding-top: 200px;
	
}

.btn-w {
  cursor: pointer;
  background-color: #f7f7f7;
  border: 1px solid #937062;
  color: #937062;
  padding: 11px 0;
  width:100px;
  font-size: small;
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
    </style>
    
 <style>

.pltitle{
	text-align: center;
	color: #937062;
	padding-top: 35px;
}


/*# sourceMappingURL=style.css.map */
    </style>   
	<script type="text/javascript">



function fncUpdateCook(){

	var startDate = $("input[name='aplstarTime']").val();
	var endDate = $("input[name='aplendTime']").val();
	var cookStock = $("input[name='cookStock']").val();
	var cookRecruit = $("input[name='cookRecruit']").val();


	if (cookStock != cookRecruit) {
		alert("신청가능인원과 모집인원은 같아야합니다");
		return;
	}
	

	

	if (cookName == null || cookName.length < 1) {
		alert("쿠킹클래스명은 반드시 입력하여야 합니다.");
		return;
	}
	if (cookBrief == null || cookBrief.length < 1) {
		alert("쿠킹클래스간략설며은 반드시 입력하여야 합니다.");
		return;
	}


	if (cookStock == null || cookStock.length < 1) {
		alert("모집인원가능인원은 반드시 입력하셔야 합니다.");
		return;
	}	

	
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var dateString = year + '-' + month  + '-' + day;

	if(dateString <= startDate && dateString+1 <= endDate && startDate <= endDate) {
		$("form").attr("method", "POST").attr("enctype","multipart/form-data").attr("action", "/cook/updateCook").submit();	
	} else if(dateString > startDate) {
		alert("모집시작기간은 금일 이후로 설정하셔야 합니다.")
	} else if(dateString+1 > endDate) {
		alert("모집종료기간은 익일 이후로 설정하셔야 합니다.")
	} else if (startDate > endDate ) {
		alert("모집시작기간은 모집종료기간 이후로 설정하셔야 합니다.")
	}		


	//$("form").attr("method" , "POST").attr("action" , "/cook/updatecook").submit();	
	$("form").attr("method", "POST").attr("enctype","multipart/form-data").attr("action", "/cook/updateCook").submit();
}



$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
	$( ".btn-b" ).on("click" , function() {
		//Debug..
		//alert(  $( "td.ct_btn01:contains('수정')" ).html() );
		fncUpdateCook();
	});
});	

$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$("a[href='#' ]").on("click" , function() {
		$("form")[0].reset();
	});
});	

$(document).ready(function() {
	
	var user = $('#user').val();
	console.log(user);
	
	
	 $('#summernote').summernote({
	        placeholder: '내용을 입력해주세요.',
	        tabsize: 2,
	        height: 500,
	        lang : 'ko-KR',
	        maximumImageFileSize : 20 * 1024 * 1024,
	  	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)


	  	  ///*
	  	  toolbar: [
	  		    // 글꼴 설정
	  		    ['fontname', ['fontname']],
	  		    // 글자 크기 설정
	  		    ['fontsize', ['fontsize']],
	  		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	  		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	  		    // 글자색
	  		    ['color', ['forecolor','color']],
	  		    // 표만들기
	  		    ['table', ['table']],
	  		    // 글머리 기호, 번호매기기, 문단정렬
	  		    ['para', ['ul', 'ol', 'paragraph']],
	  		    // 줄간격
	  		    ['height', ['height']],
	  		    // 그림첨부, 링크만들기, 동영상첨부
	  		    ['insert',['picture','link','video']],
	  		    // 코드보기, 확대해서보기, 도움말
	  		    ['view', ['codeview','fullscreen', 'help']]
	  		  ],
	  		  // 추가한 글꼴
	  		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
	  		 // 추가한 폰트사이즈
	  		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
	  		//*/
	  		callbacks: {	//이미지 첨부하는 부분
	               onImageUpload : function(files) {
	                    uploadSummernoteImageFile(files[0],this);
	                },
	                onPaste: function (e) {
						var clipboardData = e.originalEvent.clipboardData;
						if (clipboardData && clipboardData.items && clipboardData.items.length) {
							var item = clipboardData.items[0];
							if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
								e.preventDefault();
							}
						}
					}
	  	  
	            }
	  	  
       });
});	 


 function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		
		$.ajax({
			data : data,
			type : "POST",
			url : "/cook/json/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
				console.log(data.url);
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	}

</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
  <h3 class="pltitle">| 쿠킹클래스 수정 |</h3>
   <br><br>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">
		
		 <input type="hidden" name="cookNo" value="${cook.cookNo}"/>
		 <input type="hidden" name="menu"  value="${param.menu}">
		      
		  <div class="form-group">
		    <label for="cookName" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="cookName" name="cookName" value="${cook.cookName}" placeholder="쿠킹클래스명">
		      
		    </div>
		  
		  </div>
		  
		  <div class="form-group">
		    <label for="cookStock" class="col-sm-offset-1 col-sm-3 control-label">모집인원가능인원</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="cookStock" name="cookStock" value="${cook.cookStock}" placeholder="모집인원가능인원">
		    </div>
		  </div>
		  
		    <div class="form-group">
			    <label for="cookRecruit" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스모집인원</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="cookRecruit" name="cookRecruit" value="${cook.cookRecruit}" placeholder="쿠킹클래스모집인원">
			    </div>
			  </div>
			  
		    <div class="form-group">
			    <label for="cookDifficuty" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스난이도</label>
			    <div class="col-sm-4">
			         <select class="form-control" name="cookDifficuty" id="cookDifficuty">
				  <option value="1" ${!empty cook.cookDifficuty && cook.cookDifficuty=="1" ? "selected" : ""}>초급</option>
				  <option value="2" ${!empty cook.cookDifficuty && cook.cookDifficuty=="2" ? "selected" : ""}>중급</option>
				  <option value="3" ${!empty cook.cookDifficuty && cook.cookDifficuty=="3" ? "selected" : ""}>고급</option>

				    				  
			  </select>
			     
			    </div>
			  </div>			  
		  
		  <div class="form-group">
		    <label for="text" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스간략설명</label>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="cookBrief"  name="cookBrief" value="${cook.cookBrief}" placeholder="쿠킹클래스간략설명">
		    </div>
		      </div>
		  <div class="form-group">
		    <label for="aplstarTime" class="col-sm-offset-1 col-sm-3 control-label">모집기간</label>
		    <div class="col-sm-2">
		    
		      <input type="DATE" class="form-control" id="aplstarTime" name="aplstarTime" value="${cook.aplstarTime}" placeholder="모집시작기간">
		 
		  </div>		  

		    <div class="col-sm-2">
		      <input type="DATE" class="form-control" id="aplendTime" name="aplendTime" value="${cook.aplendTime}" placeholder="모집종료기간">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="startTime" class="col-sm-offset-1 col-sm-3 control-label">수업시간</label>
		    <div class="col-sm-2">
		      <input type="time" class="form-control" id="startTime" name="startTime"value="${cook.startTime}" placeholder="수업시작시간">
		    </div>

		    <div class="col-sm-2">
		      <input type="time" class="form-control" id="endTime" name="endTime"value="${cook.endTime}" placeholder="수업종료시간">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="cookPrice" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="cookPrice" name="cookPrice"value="${cook.cookPrice}" placeholder="쿠킹클래스가격">
		    </div>
		  </div>	
		  <div class="form-group">
		    <label for="cookTheme" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스테마</label>
		    <div class="col-sm-4">
     <select class="form-control" name="cookTheme" id="cookTheme" required>
     			 <option value="0"  ${!empty cook.cookTheme && cook.cookTheme=="" ? "selected" : ""}>카테고리</option>	
				  <option value="KO"  ${!empty cook.cookTheme && cook.cookTheme=="KO" ? "selected" : ""}>한식</option>
				  <option value="JA"  ${!empty cook.cookTheme && cook.cookTheme=="JA" ? "selected" : ""}>일식</option>
				  <option value="AM"  ${!empty cook.cookTheme && cook.cookTheme=="AM" ? "selected" : ""}>양식</option>
				  <option value="CH"  ${!empty cook.cookTheme && cook.cookTheme=="CH" ? "selected" : ""}>중식</option>
				  <option value="DE"  ${!empty cook.cookTheme && cook.cookTheme=="DE" ? "selected" : ""}>간식</option>
				    				  
			  </select>		    

		    </div>
		  </div>	
		  <div class="form-group">
		    <label for="cookLocation" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스장소</label>
		    <div class="col-sm-4">
 <input type="text" class="form-control" id="cookLocation" name="cookLocation"value="${cook.cookLocation}" placeholder="쿠킹클래스장소">
<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdc66313a731d6cd370ddce26735db6a&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("cookLocation").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>
		     
		    </div>
		  </div>			  		  		  		  
		<div class="form-group">
		    <label for="uploadfile" class="col-sm-offset-1 col-sm-3 control-label">쿠킹클래스이미지</label>
		    <div class="col-sm-4">
		    
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
		    	</c:choose>
		    	
		     <input multiple="multiple" type="file" id="uploadfile" name="uploadfile"  >
		    </div>
		  </div>

   <div class="form-group">
   
 
 		 <textarea class="summernote" id ="summernote" name="cookContent"  > ${cook.cookContent }  </textarea>    
		</div>		  
	
		  
				  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		    
			
			  	<button type="button" class="btn-b">수정</button>
	
		    </div>
		  </div>
		  

		</form>

		
 	</div>

	
</body>

</html>