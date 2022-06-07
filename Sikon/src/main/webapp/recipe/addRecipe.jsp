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

.search {
	background-color: #fdfbfc
}

.search input {
	width: 100px;
	border: none;
	outline: none;
	padding-top: 2px;
	padding-bottom: 2px;
	background-color: #fdfbfc
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
	box-shadow: 1px 1px 30px 10px rgba(250, 250, 250, 0.8)
}

.h3 {
	padding-top: 40px;
	font-size: 34px
}

label {
	display: block;
	font-size: 0.8rem;
	font-weight: 700
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

<!-- drag and drop css-->
<style>

:root {
  --bgColor: #3a3a3a;
  --hoverBg: #616161;
  --text: #bbb;
}

.container {
  width: clamp(0px, 100%, 1170px);
  margin: 32px auto;
  text-align: center;
}

.label {
  width: 100%;
  height: 100%;
  margin: 0px auto;
  cursor: pointer;
  background-color: var(--bgColor);
}

.inner {
  width: 100%;
  height: 128px;
  margin: 64px auto;
  border-radius: 8px;
  font-size: 16px;
  line-height: 128px;
  background-color: #F7F7F7;
  color: var(--text);
  text-align: center;
}

@media (any-hover: hover){
  .inner:hover{
    background-color: var(--hoverBg);
  }
}

.label--hover{
  background-color: var(--hoverBg);
}

.preview-title{
  font-size: 32px;
  margin-bottom: 8px;
}

.preview {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 16px;
  padding: 16px;
  margin-bottom: 16px;
  border-radius: 8px;
  align-items: center;
  background-color: #F7F7F7;
}

.embed-img{
  width: 100%;
  height: 128px;
  object-position: center;
  object-fit: cover;
  border-radius: 8px;
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
var input = document.getElementById("input");
var initLabel = document.getElementById("label");

input.addEventListener("change", (event) => {
  const files = changeEvent(event);
  handleUpdate(files);
});

initLabel.addEventListener("mouseover", (event) => {
  event.preventDefault();
  const label = document.getElementById("label");
  label?.classList.add("label--hover");
});

initLabel.addEventListener("mouseout", (event) => {
  event.preventDefault();
  const label = document.getElementById("label");
  label?.classList.remove("label--hover");
});

document.addEventListener("dragenter", (event) => {
  event.preventDefault();
  console.log("dragenter");
  if (event.target.className === "inner") {
    event.target.style.background = "#616161";
  }
});

document.addEventListener("dragover", (event) => {
  console.log("dragover");
  event.preventDefault();
});

document.addEventListener("dragleave", (event) => {
  event.preventDefault();
  console.log("dragleave");
  if (event.target.className === "inner") {
    event.target.style.background = "#3a3a3a";
  }
});

document.addEventListener("drop", (event) => {
  event.preventDefault();
  console.log("drop");
  if (event.target.className === "inner") {
    const files = event.dataTransfer?.files;
    event.target.style.background = "#3a3a3a";
    handleUpdate([...files]);
  }
});

function changeEvent(event){
  const { target } = event;
  return [...target.files];
};

function handleUpdate(fileList){
  const preview = document.getElementById("preview");

  fileList.forEach((file) => {
    const reader = new FileReader();
    reader.addEventListener("load", (event) => {
      const img = el("img", {
        className: "embed-img",
        src: event.target?.result,
      });
      const imgContainer = el("div", { className: "container-img" }, img);
      preview.append(imgContainer);
    });
    reader.readAsDataURL(file);
  });
};

function el(nodeName, attributes, ...children) {
  const node =
    nodeName === "fragment"
      ? document.createDocumentFragment()
      : document.createElement(nodeName);

  Object.entries(attributes).forEach(([key, value]) => {
    if (key === "events") {
      Object.entries(value).forEach(([type, listener]) => {
        node.addEventListener(type, listener);
      });
    } else if (key in node) {
      try {
        node[key] = value;
      } catch (err) {
        node.setAttribute(key, value);
      }
    } else {
      node.setAttribute(key, value);
    }
  });

  children.forEach((childNode) => {
    if (typeof childNode === "string") {
      node.appendChild(document.createTextNode(childNode));
    } else {
      node.appendChild(childNode);
    }
  });

  return node;
}
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
			
      <div class="inner" id="inner">드래그하거나 클릭해서 업로드하세요</div>
    <input id="input" class="input" accept="image/*" type="file" required="true" multiple="true" hidden="true">
    <p class="preview-title">preview</p>
    <div class="preview" id="preview"></div>
			</div>
			
			
			
			
			
			
			
			<div class="row my-4">
				<div class="col-md-6">
					<label>레시피명</label> <input type="text"
						placeholder="Jhon Smith">
				</div>
				<div class="col-md-6 pt-md-0 pt-4">
					<label>레시피간략설명</label> <input type="text" placeholder="Manager">
				</div>
			</div>
			<div class="row my-md-4 my-2">
				<div class="col-md-6">
					<label>소요시간</label> <input type="email"
						placeholder="jhon19@mail.com">
				</div>
				<div class="col-md-6 pt-md-0 pt-4">
					<label>영상</label> <input type="file"
						placeholder="+7 483 779 90 60">
				</div>
			</div>
			<div class="row my-md-4 my-2">
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
			<label class="mt-md-0 mt-2">Company Size</label>
			<div
				class="d-lg-flex justify-content-between align-items-center pb-4">
				<div class="size">
					<label class="option"> <input type="radio" name="radio">&lt;
						250 <span class="checkmark"></span>
					</label>
				</div>
				<div class="size">
					<label class="option"> <input type="radio" name="radio">251
						- 1000 <span class="checkmark"></span>
					</label>
				</div>
				<div class="size">
					<label class="option"> <input type="radio" name="radio">1001
						- 5000 <span class="checkmark"></span>
					</label>
				</div>
				<div class="size">
					<label class="option"> <input type="radio" name="radio">5001
						- 10,000 <span class="checkmark"></span>
					</label>
				</div>
				<div class="size">
					<label class="option"> <input type="radio" name="radio">&gt;
						10,000 <span class="checkmark"></span>
					</label>
				</div>
			</div>
			<div class="d-flex justify-content-end">
				<button class="btn">Request a demo</button>
			</div>
		</div>
	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>