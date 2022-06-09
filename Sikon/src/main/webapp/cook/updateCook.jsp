<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>상품수정</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />







<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.js"></script>
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
    
    
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>

</style>

<style>

#usik{
width:38px;
height:38px;
}

body {
  padding: 0;
  margin: 0; }

a {
  transition: .3s; }
  a:hover {
    text-decoration: none; }

select {
  cursor: pointer; }

.btn {
  font-weight: 700;
  -webkit-font-smoothing: antialiased; }

.btn-primary {
  background-color: #ff8a3d;
  border-color: #ff8a3d; }
  .btn-primary:hover, .btn-primary:active {
    background-color: #DF732D !important;
    border-color: #DF732D !important; }
  .btn-primary:focus, .btn-primary:active {
    box-shadow: 0 0 0 0.2rem #FFC13D !important; }

.btn-light {
  color: #ff8a3d;
  background-color: #F7F7FB; }
  .btn-light:hover, .btn-light:active {
    color: #DF732D;
    background-color: #FFEADD !important;
    border-color: #FFEADD !important; }
  .btn-light:focus, .btn-light:active {
    color: #DF732D !important;
    background-color: #FFEADD !important;
    border-color: #FFEADD !important;
    box-shadow: none !important; }

.text-muted {
  color: #98A8B9 !important; }

.form-group {
  margin-bottom: 24px; }
  .form-group > label {
    display: block;
    font-size: 14px;
    margin-bottom: 4px; }

.form-control::-webkit-input-placeholder {
  /* Edge */
  color: #CDD7E0; }
.form-control:-ms-input-placeholder {
  /* Internet Explorer 10-11 */
  color: #CDD7E0; }
.form-control::placeholder {
  color: #CDD7E0; }

.form-check-inline {
  margin-right: 24px; }

.form-check-label {
  cursor: pointer;
  line-height: 1; }

.modal .modal-header,
.modal .modal-body,
.modal .modal-footer {
  padding: 24px;
  border: 0; }
.modal .modal-title {
  font-weight: 700; }

.container-sm {
  max-width: 680px; }

.form-control {
  border-color: #E9ECF3; }

.fixed-top + .container {
  padding-top: 120px; }

footer {
  margin-top: 80px;
  padding: 80px 0;
  border-top: 1px solid #E9ECF3;
  background-color: #FBFBFD;
  color: #98A8B9; }
  footer a {
    color: #263747;
    font-weight: 700; }
    footer a:hover {
      color: #ff8a3d; }
  footer a, footer h6 {
    font-size: 14px;
    line-height: 1.6; }

@media (min-width: 576px) {
  .container-sm ~ footer .container {
    max-width: 680px; } }

.nav-global {
  background-color: white;
  box-shadow: 0 3px 5px rgba(20, 20, 50, 0.12);
  padding-top: 12px;
  padding-bottom: 12px;
  height: 71px; }
  .nav-global .navbar-brand {
    display: inline-flex;
    font-size: 20px;
    line-height: 1;
    color: #ff8a3d;
    font-weight: 700; }
    .nav-global .navbar-brand i {
      font-size: 20px; }
  .nav-global .img-brand {
    transform: translateY(-3px); }
  .nav-global .navbar-nav {
    flex-direction: row; }
    .nav-global .navbar-nav .nav-item + .nav-item {
      margin-left: 16px; }
    .nav-global .navbar-nav .nav-item a, .nav-global .navbar-nav .nav-item button {
      transition: .3s;
      display: inline-flex;
      vertical-align: middle;
      color: white;
      padding: 4px 16px;
      border-radius: 3px;
      background-color: #ff8a3d;
      border: 0; }
      .nav-global .navbar-nav .nav-item a:hover, .nav-global .navbar-nav .nav-item button:hover {
        background-color: #DF732D; }
      .nav-global .navbar-nav .nav-item a:focus, .nav-global .navbar-nav .nav-item button:focus {
        outline: none; }
      .nav-global .navbar-nav .nav-item a i, .nav-global .navbar-nav .nav-item button i {
        font-size: 20px; }

.nav-global-sign {
  box-shadow: none; }

.container-headline {
  font-size: 32px;
  text-align: center;
  margin: 0; }
  .container-headline::after {
    content: '';
    width: 80px;
    height: 2px;
    background-color: #ff8a3d;
    display: block;
    margin: 40px auto; }

.categories-group {
  text-align: center; }
  .categories-group .btn-category {
    padding: 4px 20px;
    border-radius: 100px;
    border: 1px solid #E9ECF3;
    margin-bottom: 8px; }
    @media (max-width: 767px) {
      .categories-group .btn-category {
        padding: 2px 16px;
        font-size: 14px; } }
    .categories-group .btn-category:hover {
      color: #ff8a3d;
      background-color: #FBFBFD; }
    .categories-group .btn-category:focus {
      box-shadow: none; }

.list-products {
  list-style: none;
  padding: 0;
  margin-top: 40px; }
  .list-products .list-products-item {
    padding-bottom: 30px; }
    @media (max-width: 767px) {
      .list-products .list-products-item {
        padding-bottom: 16px; }
        .list-products .list-products-item + .list-products-item {
          border-top: 1px solid #E9ECF3;
          padding-top: 16px; } }
  .list-products a {
    transition: .3s;
    display: block;
    color: #263747; }
    @media (min-width: 768px) {
      .list-products a:hover {
        transform: translateY(-4px);
        box-shadow: 0 16px 16px -8px rgba(20, 20, 50, 0.12); } }
  .list-products .card {
    border: 0;
    box-shadow: inset 0 0 0 1px #E9ECF3; }
    .list-products .card .card-img-top {
      box-shadow: inset 0 0 0 1px rgba(20, 20, 50, 0.12); }
    .list-products .card .title {
      font-size: 20px;
      font-weight: 700;
      line-height: 1.4;
      min-height: 72px; }
    .list-products .card .category {
      font-size: 14px;
      margin-bottom: 0;
      display: inline-block;
      color: #98A8B9; }
    .list-products .card time {
      float: right; }
    .list-products .card .price {
      color: #ff8a3d;
      font-weight: 700; }
    .list-products .card .text-muted {
      font-size: 14px;
      background-color: transparent;
      border-top: 0;
      padding-top: 0; }
    @media (max-width: 767px) {
      .list-products .card {
        flex-direction: row;
        box-shadow: none; }
        .list-products .card .card-img-top {
          min-width: 80px;
          max-width: 80px;
          min-height: 80px;
          max-height: 80px; }
        .list-products .card .card-body {
          padding-top: 0;
          padding-bottom: 0; }
        .list-products .card .title {
          min-height: unset; }
        .list-products .card .text-muted {
          padding-bottom: 0; } }

.container-detail img {
  border-radius: 3px; }
.container-detail .product-title {
  margin-top: 40px;
  font-size: 24px;
  font-weight: 700;
  line-height: 1.4; }
.container-detail .product-price {
  margin-top: 12px;
  font-size: 20px;
  font-weight: 700;
  color: #ff8a3d; }
.container-detail .list-product-information {
  list-style: none;
  margin-top: 24px;
  padding: 0;
  border-top: 1px solid #E9ECF3;
  font-size: 0; }
  .container-detail .list-product-information .list-item {
    display: inline-block;
    width: 50%;
    font-size: 12px;
    color: #98A8B9;
    padding: 8px 0;
    border-bottom: 1px solid #E9ECF3; }
    .container-detail .list-product-information .list-item span {
      display: block;
      color: #263747;
      font-weight: 700;
      font-size: 16px; }
.container-detail .description {
  margin-top: 40px; }
  .container-detail .description p {
    font-size: 16px;
    line-height: 1.8; }

.btn-filter {
  position: relative; }
  .btn-filter.active::after {
    content: '';
    position: absolute;
    right: -2px;
    top: -2px;
    width: 8px;
    height: 8px;
    border-radius: 10px;
    border: 2px solid white;
    background-color: #ff8a3d;
    box-shadow: 0 0 0 2px #ff8a3d; }

.modal-filter .slider {
  display: block;
  width: calc(100% - 16px);
  margin: 0 8px; }
  .modal-filter .slider .slider-track-low,
  .modal-filter .slider .slider-track-high,
  .modal-filter .slider .slider-handle,
  .modal-filter .slider .slider-selection {
    background-image: none;
    box-shadow: none; }
  .modal-filter .slider .slider-track-low, .modal-filter .slider .slider-track-high {
    background-color: #E9ECF3; }
  .modal-filter .slider .slider-handle {
    background-color: #ff8a3d;
    cursor: pointer;
    background-image: none; }
    .modal-filter .slider .slider-handle:hover {
      background-color: #DF732D;
      box-shadow: 0 0 0 3px #DF732D; }
    .modal-filter .slider .slider-handle:focus {
      outline: none; }
  .modal-filter .slider .slider-selection {
    background-color: #FFC13D;
    box-shadow: none; }

.file-box input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0; }

.file-box label {
  margin-bottom: 0;
  cursor: pointer; }

.file-box .upload-name {
  margin-right: 12px;
  display: inline-block;
  padding: 9px 12px;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #FBFBFD;
  border: 1px solid #E9ECF3;
  border-radius: 3px;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none; }

.form-car-smoking > label {
  color: #98A8B9;
  margin-bottom: 12px; }

.form-item-create .btn-submit {
  display: block;
  margin: 80px auto 0; }

.container-sign {
  max-width: 400px; }

.form-sign {
  margin: 80px 0;
  padding: 16px;
  border-radius: 16px; }

.form-headline {
  text-align: center;
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 24px; }

.txt-terms {
  margin-top: 56px;
  text-align: center;
  font-size: 14px;
  color: #98A8B9; }
  .txt-terms a {
    color: #263747; }
    .txt-terms a:hover {
      color: #ff8a3d; }

/*# sourceMappingURL=style.css.map */
    </style>
	<script type="text/javascript">



function fncUpdateCook(){

	
		


	//$("form").attr("method" , "POST").attr("action" , "/cook/updatecook").submit();	
	$("form").attr("method", "POST").attr("enctype","multipart/form-data").attr("action", "/cook/updateCook").submit();
}



$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
	$( "button.btn.btn-primary" ).on("click" , function() {
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
	  	  focus : true,
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
	
 <h5 class="container-headline">식탁의 온도</h5>
		
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
		    <label for="cookStock" class="col-sm-offset-1 col-sm-3 control-label">모집인원재고</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="cookStock" name="cookStock" value="${cook.cookStock}" placeholder="모집인원재고">
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
				  <option value="1" selected="selected">초급</option>
				  <option value="2">중급</option>
				  <option value="3">고급</option>

				    				  
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
		    
		      <input type="DATE" class="form-control" id="aplstarTime" name="aplstarTime"value="${cook.aplstarTime}" placeholder="모집시작기간">
		 
		  </div>		  

		    <div class="col-sm-2">
		      <input type="DATE" class="form-control" id="aplendTime" name="aplendTime"value="${cook.aplendTime}" placeholder="모집종료기간">
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
     <select class="form-control" name="cookTheme" id="cookTheme">
				  <option value="KO" selected="selected">한식</option>
				  <option value="JA">일식</option>
				  <option value="AM">양식</option>
				  <option value="CH">중식</option>
				  <option value="DE">간식</option>
				    				  
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

    <div class="container">
 		 <textarea class="summernote" id ="summernote" name="cookContent" value="${cook.cookContent}"></textarea>    
		</div>		  
	
		  
		
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >수&nbsp;정</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
</body>

</html>