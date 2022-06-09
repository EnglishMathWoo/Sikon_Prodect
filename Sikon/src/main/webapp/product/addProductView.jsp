<%@ page contentType="text/html; charset=euc-kr"%>

<html lang="ko">
<head>
<meta charset="EUC-KR">

<link rel="stylesheet" href="/css/admin.css" type="text/css">


<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>


<!-- jQuery UI toolTip 사용 CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip 사용 JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">

<!--  ///////////////////////// SummerNote ////////////////////////// -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

<style>



body>div.container {
	padding-top: 200px;
	font-family: 'Nanum Myeongjo', serif;
}
h1.text-center {
	font-family: 'Nanum Myeongjo', serif;
}
#prodDetail {
	font-family: 'Nanum Myeongjo', serif;
}
div.form-group{
	font-family: 'Nanum Myeongjo', serif;
}
</style>

<script type="text/javascript">



	function fncAddProduct() {
		
		var summernote=$("#summernote").val();
		
		if(id == null || id.length <1){
			alert("아이디는 반드시 입력하셔야 합니다.");
			return;
		}
		
		$("form").attr("method", "POST").attr("enctype","multipart/form-data").attr("action", "/product/addProduct").submit();
		
	}


	$(function() {
		$("button.btn.btn-warning").on("click", function() {
			
			console.log($('input[name=prodDisRate]').val());
			alert($("button.btn.btn-primary").text());
			fncAddProduct();
		})
	})

	$(function() {
		$("a[href='#' ]").on("click", function() {
			// resetData();
			$("form")[0].reset();
		})
	})
</script>
</head>

<body>
<div>
	<jsp:include page="/layout/toolbar.jsp" />
</div>

	<div class="container">

		<h1 class="text-center"  style="color:#bc8f8f">상품등록</h1>
		<br>
		<form class="form-horizontal" enctype="multipart/form-data">
		

			<div class="form-group">
		    <label for="prodName" class="col-sm-3 control-label">상품명</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="상품명">
		    </div>
		  </div>

			<div class="form-group">
		    <label for="prodDetail" class="col-sm-3 control-label">상품간략정보</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품간략정보 입력">
		    </div>
		  </div>

		  <div class="form-group">
		    <label for="prodTheme" class="col-sm-3 control-label">상품테마</label>
		    <div class="col-sm-6">
		      <select class="form-control" name="prodTheme" id="prodTheme">
				  <option value="TW" selected="selected">식기류</option>
				  <option value="CW">조리도구</option>
				  <option value="MK">밀키트</option>
			  </select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodStatus" class="col-sm-3 control-label">판매여부</label>
		    <div class="col-sm-6">
		       <div class="btn-group" data-toggle="buttons">
				    <input type="radio" name="prodStatus" id="option1" value="Y" checked> 판매중
				    <input type="radio" name="prodStatus" id="option2" value="N"> 판매중지
				</div>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="couponApply" class="col-sm-3 control-label">쿠폰적용여부</label>
		    <div class="col-sm-6">
		       <div class="btn-group" data-toggle="buttons">
				    <input type="radio" name="couponApply" id="option1" value="Y" checked> 적용가능
				    <input type="radio" name="couponApply" id="option2" value="N"> 적용불가
				</div>
		    </div>
		  </div>

			<div class="form-group">
			    <label for="prodStock" class="col-sm-3 control-label">상품재고량</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="prodStock" name="prodStock" placeholder="개수입력">
			    </div>
			  </div>

			<div class="form-group">
		    <label for="prodPrice" class="col-sm-3 control-label">정상가</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="prodPrice" name="prodPrice" placeholder="정상가">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDisRate" class="col-sm-3 control-label">할인율</label>
		    <div class="col-sm-6">
		      <input type="number" step="0.1" class="form-control" id="prodDisRate" name="prodDisRate" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDisPrice" class="col-sm-3 control-label">할인가</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="prodDisPrice" name="prodDisPrice" placeholder="할인가">
		    </div>
		  </div>

			<div class="form-group">
		    <label for="fileName" class="col-sm-3 control-label">상품썸네일</label>
		    <div class="col-sm-6">
		      <input type="file" id="fileName" name="uploadfiles[]" multiple="multiple" >
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="prodContent" class="col-sm-3 control-label">상품상세내용</label>
		    <div class="col-sm-6 text-center" height=100px>
	      <textarea id="summernote" class="form-control col-sm-5" rows="5" name="prodContent"
					placeholder="내용" style="resize: none"></textarea>
	    </div>
		</div>
		
		


			<div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-warning"  >등록</button>
			  <button type="button" class="btn btn-default" href="#" >초기화</button>
		    </div>
		  </div>

		</form>


	</div>


<script>
 
   $(document).ready(function() {

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
		url : "/product/uploadSummernoteImageFile",
		contentType : false,
		processData : false,
		success : function(data) {
			console.log('썸머노트');
			console.log(data.url);
           	//항상 업로드된 파일의 url이 있어야 한다.
			$(editor).summernote('insertImage', data.url);
		}
	});
}
     
</script>


</body>
</html>
