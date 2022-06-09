<%@ page contentType="text/html; charset=euc-kr"%>

<html lang="ko">
<head>
<meta charset="EUC-KR">

<link rel="stylesheet" href="/resources/css/admin.css" type="text/css">


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
body {
	padding-top: 50px;
	font-family: 'Gowun Batang', serif;
}
</style>


<style>
.page-header {
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
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
        width: 350px;
                text-align: center;
    
}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
        width: 350px;
        text-align: center;
    
}
table.type09 tbody th {
    width: 350px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>

<script type="text/javascript">
	$(function() {
		//여기서 또 상품/레시피/클래스 조건 걸어줘야됨
		$("button:contains('취소')").on("click", function() {
			self.location = "/recipe/listRecipe"
		});
		$("button:contains('레시피등록')").on("click", function() {
			fncAddRecipe();
		});
		
		$("button:contains('재료추가')").on("click", function() {
			tableCreate();
		});
		$("button:contains('재료빼기')").on("click", function() {
			tableDelete();
		});
	});
	$("button:contains('레시피등록')").css("color", "red")
	function fncAddRecipe() {
		$("form").attr("method", "POST").attr("enctype", "multipart/form-data").attr("action", "/recipe/addRecipe").submit();
		//$("form").attr("method", "POST").attr("action", "/recipe/addRecipe").submit();
	}
	
</script>


<script>
function tableCreate(){
	var tc = new Array();
	var html = '';
				
	var ingredientName = $("#ingredientName").val();
	var ingredientAmount = $("#ingredientAmount").val();
				
	html += '<tr>';
	html += '<td>'+'<input type="text" placeholder="재료명" id="ingredientName" name="ingredientName">'+'</td>';
	html += '<td>'+'<input type="text" placeholder="재료양" id="ingredientAmount" name="ingredientAmount">'+'</td>';
	html += '</tr>';
				
	
	$("#dynamicTable").append(html);
				
	console.log('왜이러니'+$("#dynamicTable tr").find("td").length);
	}
	
function tableDelete(){
	$('#dynamicTable tbody tr:last').remove();
	}
	
</script>


</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">

		<div class="page-header">

			<h3 class=" text-info" style="color: #75574B;">레시피 등록</h3>
		</div>



		<div class="form-group" >
			<form enctype="multipart/form-data">
				<div class="form-group">
					<label for="recipeName"
						class="col-lg-offset-1 col-lg-2 control-label ">제목</label>
					<div class="col-lg-9">
						<input type="text" class="form-control" id="recipeName"
							name="recipeName" placeholder="제목">
					</div>
				</div>

				<div class="form-group">
					<label for="recipeDetail"
						class="col-lg-offset-1 col-lg-2 control-label">간략정보</label>
					<div class="col-lg-9">
						<input type="text" class="form-control" id="recipeDetail"
							name="recipeDetail" placeholder="50자 이내로 입력하세요.">
					</div>
				</div>


				<div class="form-group">
					<label for="recipeImg"
						class="col-lg-offset-1 col-lg-2 control-label">대표이미지</label>
					<div class="col-lg-9">
						<input type="file" multiple="multiple" class="form-control" id="recipeImg"
							name="multiImg" placeholder="레시피이미지">

					</div>
				</div>


				<div class="form-group">
					<label for="recipeDifficulty"
						class="col-lg-offset-1 col-lg-2 control-label">난이도</label>
					<div class="col-lg-9">
						<select name="recipeDifficulty" class="form-control">
							<option value="1" selected="selected">초급</option>
							<option value="2">중급</option>
							<option value="3">고급</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="cookingTime"
						class="col-lg-offset-1 col-lg-2 control-label">소요시간</label>
					<div class="col-lg-9">
						<input type="number" class="form-control" id="cookingTime"
							name="cookingTime" placeholder="소요시간">
					</div>
				</div>
	
	
	
				<div class="form-group">
					<label for="ingredient"
						class="col-lg-offset-1 col-lg-2 control-label">재료</label>

			<div class="col-lg-9">
				<table class="type09" style="border: 1px;" id="dynamicTable">
					<thead>
						<tr>
							<th>재료명</th>
							<th>재료양</th>
						</tr>
					</thead>
					</tbody>
				</table>
				<button type="button" 
							style="float: right; ">재료추가</button>
				<button type="button" 
							style="float: right; ">재료빼기</button>
			</div>
			</div>




				<div class="form-group">
					<label for="recipeTheme" class="col-lg-offset-1 col-lg-2 control-label">카테고리</label>
					<div class="col-lg-9">
						<select name="recipeTheme" class="form-control">
							<option value="1" selected="selected">카테고리</option>
							<option value="2">한식</option>
							<option value="3">중식</option>
							<option value="4">양식</option>
							<option value="5">일식</option>
							<option value="6">간식</option>
						</select>
					</div>
				</div>
				<br />
				<div class="form-group">
					<div class="col-lg-offset-1 col-lg-11">
						<br />

						<textarea id="summernote" class="form-control" name="recipeOrder">
      
     </textarea>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-1  col-lg-11 text-right">
						<br />
						<button type="button" class="btn btn-default"
							style="float: right;">레시피등록</button>
						<button type="button" class="btn btn-default"
							style="float: right;">취소</button>
					</div>
				</div>


			</form>
			
		</div>

	</div>
	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
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
													uploadSummernoteImageFile(
															files[0], this);
												},
												onPaste : function(e) {
													var clipboardData = e.originalEvent.clipboardData;
													if (clipboardData
															&& clipboardData.items
															&& clipboardData.items.length) {
														var item = clipboardData.items[0];
														if (item.kind === 'file'
																&& item.type
																		.indexOf('image/') !== -1) {
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
		url : "/recipe/json/uploadSummernoteImageFile",
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
</html>