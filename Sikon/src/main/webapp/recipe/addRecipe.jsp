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

<!--  /////////////////////////summernote////////////////////////// -->

<script src="/resources/javascript/summernote-lite.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script src="/resources/javascript/lang/summernote-ko-KR.js"></script>
<!--  -->



<style>

* {

	margin: 0;
	padding: 0;
	box-sizing: border-box;
	
}


.container {
font-family: 'Gowun Batang', serif;
	padding: 20px 50px;
	min-height: 450px;
		background-color: #fff;
	
}

.fa-yoast {
	color: #ac1f32;
	font-weight: bold
}

.h4 {
	font-family: 'Gowun Batang', serif;
}

a {
	color: #333
}

a:hover {
	text-decoration: none;
	color: #444
}


div.btn, button.btn {
	background-color: #ac1f32;
	color: #eee
}

div.btn:hover, button.btn:hover {
	background-color: #ac1f32d7
}

.navbar-light .navbar-nav .nav-link {
	color: #333
}

nav {
	float: left
}

#language {
	float: right
}

#language select {
	border: none;
	outline: none
}

.wrapper {
	width: 85%;
	margin: 20px auto;
}

.h3 {
	padding-top: 40px;
	font-size: 34px
}

label {
	display: block;
	font-size: 0.8rem;
	font-weight: 700;
	 text-align: left;
}

input {
	border: none;
	outline: none;
	border-bottom: 2px solid #ddd;
	width: 100%;
	padding-bottom: 10px
}

.wrapper {

	clear: both
}

#country {
	border: none;
	outline: none;
	width: 100%;
	padding-bottom: 12px;
	border-bottom: 2px solid #ddd
}

.wrapper .col-md-6:hover label {
	color: #ac1f32
}

.wrapper .col-md-6:hover input, .wrapper .col-md-6:hover #country {
	border-color: #ac1f32;
	cursor: pointer
}

.wrapper .col-md-6 input:focus {
	border-color: #ac1f32
}

.option {
	position: relative;
	padding-left: 30px;
	display: block;
	cursor: pointer;
	color: #888
}

.option input {
	display: none
}

.checkmark {
	position: absolute;
	top: -1px;
	left: 0;
	height: 20px;
	width: 20px;
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 50%
}

.option input:checked ~ .checkmark:after {
	display: block
}

.option .checkmark:after {
	content: "\2713";
	width: 10px;
	height: 10px;
	display: block;
	position: absolute;
	top: 30%;
	left: 50%;
	transform: translate(-50%, -50%) scale(0);
	transition: 200ms ease-in-out 0s
}

.option:hover input[type="radio"] ~ .checkmark {
	background-color: #f4f4f4
}

.option input[type="radio"]:checked ~ .checkmark {
	background: #ac1f32;
	color: #fff;
	transition: 300ms ease-in-out 0s
}

.option input[type="radio"]:checked ~ .checkmark:after {
	transform: translate(-50%, -50%) scale(1);
	color: #fff
}

@media ( min-width : 992px) {
	.navbar-expand-lg .navbar-nav .nav-link {
		padding-right: 1.5rem;
		padding-left: 0rem
	}
	.navbar {
		padding: 0.5rem 0rem;
		width: 75%
	}
}

@media ( max-width : 991px) {
	.dropdown-menu {
		border: none
	}
	#language {
		padding-top: 20px
	}
	.navbar {
		padding: 0.5rem 0rem
	}
}

@media ( max-width : 767px) {
	.search input {
		width: 90%
	}
	.search {
		margin-bottom: 10px
	}
	div.btn {
		width: 100%
	}
	.h3 {
		font-size: 25px
	}
	.brand {
		text-align: center
	}
	.container {
		padding: 20px;
		margin-left: 0px
	}
	.navbar {
		padding: 0.5rem 0rem
	}
}

@media ( max-width : 374px) {
	.h3 {
		font-size: 21px
	}
}

</style>


<style>
.file {
  padding: 0px 0;
}


.box {
  position: relative;
  background: #ffffff;
  width: 100%;
}

.box-header {
  color: #444;
  display: block;
  padding: 10px;
  position: relative;
  border-bottom: 1px solid #f4f4f4;
  margin-bottom: 10px;
}

.box-tools {
  position: absolute;
  right: 10px;
  top: 5px;
}

.dropzone-wrapper {
  border: 2px dashed #91b0b3;
  color: #92b0b3;
  position: relative;
  height: 150px;
  width: 800px;
    margin-left: 200px;
}

.dropzone-desc {
  position: absolute;
  margin: 0 auto;
  left: 0;
  right: 0;
  text-align: center;
  width: 40%;
  top: 50px;
  font-size: 16px;
}

.dropzone,
.dropzone:focus {
  position: absolute;
  outline: none !important;
  width: 100%;
  height: 150px;
  cursor: pointer;
  opacity: 0;
}

.dropzone-wrapper:hover,
.dropzone-wrapper.dragover {
  background: #ecf0f5;
}

.preview-zone {
  text-align: center;
}

.preview-zone .box {
  box-shadow: none;
  border-radius: 0;
  margin-bottom: 0;
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
		$("form").attr("method", "POST").attr("enctype", "multipart/form-data")
				.attr("action", "/recipe/addRecipe").submit();
		//$("form").attr("method", "POST").attr("action", "/recipe/addRecipe").submit();
	}
</script>

<script>
	$(document)
			.ready(
					function() {
						$('#summernote')
								.summernote(
										{
											height : 300, // 에디터 높이
											minHeight : null, // 최소 높이
											maxHeight : null, // 최대 높이
											focus : true, // 에디터 로딩후 포커스를 맞출지 여부
											placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
											callbacks : { //여기 부분이 이미지를 첨부하는 부분
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
			success : function(JSONData, status) {
				//항상 업로드된 파일의 url이 있어야 한다.
				console.log('성공');
				console.log(JSONData.url);
				$(editor).summernote('insertImage', JSONData.url);
			}
		});
	}
</script>

<script>
	function tableCreate() {
		var tc = new Array();
		var html = '';

		var ingredientName = $("#ingredientName").val();
		var ingredientAmount = $("#ingredientAmount").val();

		html += '<tr>';
		html += '<td>' + ingredientName + '</td>';
		html += '<input type="hidden" name="ingredientName" value="'+ingredientName+'"/>';
		html += '<td>' + ingredientAmount + '</td>';
		html += '<input type="hidden" name="ingredientAmount" value="'+ingredientAmount+'"/>';
		html += '</tr>';

		$("#dynamicTable").append(html);

		$("#ingredientName").val('');
		$("#ingredientAmount").val('');
		console.log('왜이러니' + $("#dynamicTable tr").find("td").length);
	}

	function tableDelete() {
		$('#dynamicTable tbody tr:last').remove();
	}
</script>

<!-- drag and drop -->
<script>
function readFile(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();

	    reader.onload = function(e) {
	      var htmlPreview =
	        '<img width="200" src="' + e.target.result + '" />' +
	        '<p>' + input.files[0].name + '</p>';
	      var wrapperZone = $(input).parent();
	      var previewZone = $(input).parent().parent().find('.preview-zone');
	      var boxZone = $(input).parent().parent().find('.preview-zone').find('.box').find('.box-body');

	      wrapperZone.removeClass('dragover');
	      previewZone.removeClass('hidden');
	      boxZone.empty();
	      boxZone.append(htmlPreview);
	    };

	    reader.readAsDataURL(input.files[0]);
	  }
	}

	function reset(e) {
	  e.wrap('<form>').closest('form').get(0).reset();
	  e.unwrap();
	}

	$(".dropzone").change(function() {
	  readFile(this);
	  alert('고');
	});

	$('.dropzone-wrapper').on('dragover', function(e) {
	  e.preventDefault();
	  e.stopPropagation();
	  $(this).addClass('dragover');
	});

	$('.dropzone-wrapper').on('dragleave', function(e) {
	  e.preventDefault();
	  e.stopPropagation();
	  $(this).removeClass('dragover');
	});

	$('.remove-preview').on('click', function() {
	  var boxZone = $(this).parents('.preview-zone').find('.box-body');
	  var previewZone = $(this).parents('.preview-zone');
	  var dropzone = $(this).parents('.form-group').find('.dropzone');
	  boxZone.empty();
	  previewZone.addClass('hidden');
	  reset(dropzone);
	});


</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container bg-white mt-sm-4 mb-5">
		<div
			class="wrapper d-flex justify-content-center flex-column px-md-5 px-1">
			<div class="h3 text-center font-weight-bold">레시피등록</div><br/>
			<!--  
      <div class="inner" id="inner">드래그하거나 클릭해서 업로드하세요</div>
    <input id="input" class="input" accept="image/*" type="file" required="true" multiple="true" hidden="true">
    <p class="preview-title">preview</p>
    <div class="preview" id="preview"></div>
			</div>
			-->

<section>
  <form action="" method="POST" enctype="multipart/form-data">
    <div class="file">
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label class="control-label">Upload File</label>
            <div class="preview-zone hidden">
              <div class="box box-solid">
                <div class="box-header with-border">
                  <div><b>Preview</b></div>
                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-danger btn-xs remove-preview">
                      <i class="fa fa-times"></i> Reset This Form
                    </button>
                  </div>
                </div>
                <div class="box-body"></div>
              </div>
            </div>
            <div class="dropzone-wrapper">
              <div class="dropzone-desc">
                <i class="glyphicon glyphicon-download-alt"></i>
                <p>Choose an image file or drag it here.</p>
              </div>
              <input type="file" name="img_logo" class="dropzone">
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <button type="submit" class="btn btn-primary pull-right">Upload</button>
        </div>
      </div>
    </div>
  </form>
</section>

</div>
			<div class="row my-4">
				<div class="col-md-6">
					<label>레시피명</label> <input type="text"
					>
				</div>
				
				<div class="col-md-6 pt-md-0 pt-4">
					<label>레시피간략설명</label> <input type="text" >
				</div>
			</div>
			
			<br/>
			
			<div class="row my-4">
				<div class="col-md-6">
					<label>소요시간</label> <input type="number" placeholder="5분 단위로 입력하세요." >
				</div>
				<div class="col-md-6 pt-md-0 pt-4">
					<label>영상</label> <input type="file"
						>
				</div>
			</div>
			
			<br/>
			
			<div class="row my-4">
				<div class="col-md-6 pt-md-0 pt-4">
					<label>테마</label> <select name="country" id="country">
						<option value="ind">한식</option>
						<option value="us">중식</option>
						<option value="uk">양식</option>
						<option value="aus">일식</option>
						<option value="aus">간식</option>
					</select>
				</div>
				<div class="col-md-6 pt-md-0 pt-4">
					<label>난이도</label> <select name="country" id="country">
						<option value="ind">초급</option>
						<option value="us">중급</option>
						<option value="uk">고급</option>
					</select>
				</div>
			</div>
			
			<br/>
			
		
			
			
			
			
			
			<div class="d-flex justify-content-end">
			<br/><br/>
				<button class="btn">등록하기</button>
			</div>
		</div>
	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>