<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

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
div.container {
	padding-top: 225px;
	font-family: 'Gowun Batang', serif;
}

table.type09 {
	border-collapse: collapse;
	line-height: 1.5;
	width: 360px;
	text-align: center;
	font-size: 14px
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #424242;
	width: 180px;
	text-align: center;
}

table.type09 tbody th {
	width: 180px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 180px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

body {
	padding: 0;
	margin: 0;
}

a {
	transition: .3s;
}

a:hover {
	text-decoration: none;
}

select {
	cursor: pointer;
}

.btn {
	font-weight: 700;
	-webkit-font-smoothing: antialiased;
}

.btn-primary {
	background-color: #ff8a3d;
	border-color: #ff8a3d;
}

.btn-primary:hover, .btn-primary:active {
	background-color: #DF732D !important;
	border-color: #DF732D !important;
}

.btn-primary:focus, .btn-primary:active {
	box-shadow: 0 0 0 0.2rem #FFC13D !important;
}

.btn-light {
	color: #ff8a3d;
	background-color: #F7F7FB;
}

.btn-light:hover, .btn-light:active {
	color: #DF732D;
	background-color: #FFEADD !important;
	border-color: #FFEADD !important;
}

.btn-light:focus, .btn-light:active {
	color: #DF732D !important;
	background-color: #FFEADD !important;
	border-color: #FFEADD !important;
	box-shadow: none !important;
}

.text-muted {
	color: #98A8B9 !important;
}

.form-group {
	margin-bottom: 24px;
}

.form-group>label {
	display: block;
	font-size: 14px;
	margin-bottom: 4px;
}

.form-control::-webkit-input-placeholder {
	/* Edge */
	color: #CDD7E0;
}

.form-control:-ms-input-placeholder {
	/* Internet Explorer 10-11 */
	color: #CDD7E0;
}

.form-control::placeholder {
	color: #CDD7E0;
}

.form-check-inline {
	margin-right: 24px;
}

.form-check-label {
	cursor: pointer;
	line-height: 1;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 24px;
	border: 0;
}

.modal .modal-title {
	font-weight: 700;
}

.container-sm {
	max-width: 680px;
}

.form-control {
	border-color: #E9ECF3;
}

.fixed-top+.container {
	padding-top: 120px;
}

footer {
	margin-top: 80px;
	padding: 80px 0;
	border-top: 1px solid #E9ECF3;
	background-color: #FBFBFD;
	color: #98A8B9;
}

footer a {
	color: #263747;
	font-weight: 700;
}

footer a:hover {
	color: #ff8a3d;
}

footer a, footer h6 {
	font-size: 14px;
	line-height: 1.6;
}

@media ( min-width : 576px) {
	.container-sm ~ footer .container {
		max-width: 680px;
	}
}

.nav-global {
	background-color: white;
	box-shadow: 0 3px 5px rgba(20, 20, 50, 0.12);
	padding-top: 12px;
	padding-bottom: 12px;
	height: 71px;
}

.nav-global .navbar-brand {
	display: inline-flex;
	font-size: 20px;
	line-height: 1;
	color: #ff8a3d;
	font-weight: 700;
}

.nav-global .navbar-brand i {
	font-size: 20px;
}

.nav-global .img-brand {
	transform: translateY(-3px);
}

.nav-global .navbar-nav {
	flex-direction: row;
}

.nav-global .navbar-nav .nav-item+.nav-item {
	margin-left: 16px;
}

.nav-global .navbar-nav .nav-item a, .nav-global .navbar-nav .nav-item button
	{
	transition: .3s;
	display: inline-flex;
	vertical-align: middle;
	color: white;
	padding: 4px 16px;
	border-radius: 3px;
	background-color: #ff8a3d;
	border: 0;
}

.nav-global .navbar-nav .nav-item a:hover, .nav-global .navbar-nav .nav-item button:hover
	{
	background-color: #DF732D;
}

.nav-global .navbar-nav .nav-item a:focus, .nav-global .navbar-nav .nav-item button:focus
	{
	outline: none;
}

.nav-global .navbar-nav .nav-item a i, .nav-global .navbar-nav .nav-item button i
	{
	font-size: 20px;
}

.nav-global-sign {
	box-shadow: none;
}

.container-headline {
	font-size: 32px;
	text-align: center;
	margin: 0;
}

.container-headline::after {
	content: '';
	width: 80px;
	height: 2px;
	background-color: #937062;
	display: block;
	margin: 40px auto;
}

.categories-group {
	text-align: center;
}

.categories-group .btn-category {
	padding: 4px 20px;
	border-radius: 100px;
	border: 1px solid #E9ECF3;
	margin-bottom: 8px;
}

@media ( max-width : 767px) {
	.categories-group .btn-category {
		padding: 2px 16px;
		font-size: 14px;
	}
}

.categories-group .btn-category:hover {
	color: #ff8a3d;
	background-color: #FBFBFD;
}

.categories-group .btn-category:focus {
	box-shadow: none;
}

.list-products {
	list-style: none;
	padding: 0;
	margin-top: 40px;
}

.list-products .list-products-item {
	padding-bottom: 30px;
}

@media ( max-width : 767px) {
	.list-products .list-products-item {
		padding-bottom: 16px;
	}
	.list-products .list-products-item+.list-products-item {
		border-top: 1px solid #E9ECF3;
		padding-top: 16px;
	}
}

.list-products a {
	transition: .3s;
	display: block;
	color: #263747;
}

@media ( min-width : 768px) {
	.list-products a:hover {
		transform: translateY(-4px);
		box-shadow: 0 16px 16px -8px rgba(20, 20, 50, 0.12);
	}
}

.list-products .card {
	border: 0;
	box-shadow: inset 0 0 0 1px #E9ECF3;
}

.list-products .card .card-img-top {
	box-shadow: inset 0 0 0 1px rgba(20, 20, 50, 0.12);
}

.list-products .card .title {
	font-size: 20px;
	font-weight: 700;
	line-height: 1.4;
	min-height: 72px;
}

.list-products .card .category {
	font-size: 14px;
	margin-bottom: 0;
	display: inline-block;
	color: #98A8B9;
}

.list-products .card time {
	float: right;
}

.list-products .card .price {
	color: #ff8a3d;
	font-weight: 700;
}

.list-products .card .text-muted {
	font-size: 14px;
	background-color: transparent;
	border-top: 0;
	padding-top: 0;
}

@media ( max-width : 767px) {
	.list-products .card {
		flex-direction: row;
		box-shadow: none;
	}
	.list-products .card .card-img-top {
		min-width: 80px;
		max-width: 80px;
		min-height: 80px;
		max-height: 80px;
	}
	.list-products .card .card-body {
		padding-top: 0;
		padding-bottom: 0;
	}
	.list-products .card .title {
		min-height: unset;
	}
	.list-products .card .text-muted {
		padding-bottom: 0;
	}
}

.container-detail img {
	border-radius: 3px;
}

.container-detail .product-title {
	margin-top: 40px;
	font-size: 24px;
	font-weight: 700;
	line-height: 1.4;
}

.container-detail .product-price {
	margin-top: 12px;
	font-size: 20px;
	font-weight: 700;
	color: #ff8a3d;
}

.container-detail .list-product-information {
	list-style: none;
	margin-top: 24px;
	padding: 0;
	border-top: 1px solid #E9ECF3;
	font-size: 0;
}

.container-detail .list-product-information .list-item {
	display: inline-block;
	width: 50%;
	font-size: 12px;
	color: #98A8B9;
	padding: 8px 0;
	border-bottom: 1px solid #E9ECF3;
}

.container-detail .list-product-information .list-item span {
	display: block;
	color: #263747;
	font-weight: 700;
	font-size: 16px;
}

.container-detail .description {
	margin-top: 40px;
}

.container-detail .description p {
	font-size: 16px;
	line-height: 1.8;
}

.btn-filter {
	position: relative;
}

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
	box-shadow: 0 0 0 2px #ff8a3d;
}

.modal-filter .slider {
	display: block;
	width: calc(100% - 16px);
	margin: 0 8px;
}

.modal-filter .slider .slider-track-low, .modal-filter .slider .slider-track-high,
	.modal-filter .slider .slider-handle, .modal-filter .slider .slider-selection
	{
	background-image: none;
	box-shadow: none;
}

.modal-filter .slider .slider-track-low, .modal-filter .slider .slider-track-high
	{
	background-color: #E9ECF3;
}

.modal-filter .slider .slider-handle {
	background-color: #ff8a3d;
	cursor: pointer;
	background-image: none;
}

.modal-filter .slider .slider-handle:hover {
	background-color: #DF732D;
	box-shadow: 0 0 0 3px #DF732D;
}

.modal-filter .slider .slider-handle:focus {
	outline: none;
}

.modal-filter .slider .slider-selection {
	background-color: #FFC13D;
	box-shadow: none;
}

.file-box input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.file-box label {
	margin-bottom: 0;
	cursor: pointer;
}

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
	appearance: none;
}

.form-car-smoking>label {
	color: #98A8B9;
	margin-bottom: 12px;
}

.form-item-create .btn-submit {
	display: block;
	margin: 80px auto 0;
}

.container-sign {
	max-width: 400px;
}

.form-sign {
	margin: 80px 0;
	padding: 16px;
	border-radius: 16px;
}

.form-headline {
	text-align: center;
	font-size: 24px;
	font-weight: 700;
	margin-bottom: 24px;
}

.txt-terms {
	margin-top: 56px;
	text-align: center;
	font-size: 14px;
	color: #98A8B9;
}

.txt-terms a {
	color: #263747;
}

.txt-terms a:hover {
	color: #ff8a3d;
}


/*# sourceMappingURL=style.css.map */
</style>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">

		<h5 class="container-headline">레시피 수정</h5>

		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">

			<div class="form-group">
				<label for="recipeName"
					class="col-sm-offset-1 col-sm-3 control-label">레시피명</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" id="recipeName" value="${recipe.recipeName }"
					name="recipeName">
				</div>
			<input type="hidden" name="recipeNo" value="${recipe.recipeNo }"/>

			</div>

			<div class="form-group">
				<label for="recipeDetail"
					class="col-sm-offset-1 col-sm-3 control-label">레시피간략설명</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="recipeDetail" name="recipeDetail"  value="${recipe.recipeDetail }" 
						placeholder="레시피상세설명">
				</div>
			</div>

			<div class="form-group">
				<label for="detail" class="col-sm-offset-1 col-sm-3 control-label">레시피상세설명</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="detail" name="detail"  value="${recipe.detail }" 
						placeholder="레시피상세설명">
				</div>
			</div>

			<div class="form-group">
				<label for="cookingTime"
					class="col-sm-offset-1 col-sm-3 control-label">소요시간</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="cookingTime" value="${recipe.cookingTime }"
							name="cookingTime">
				</div>
			</div>

			<div class="form-group">
				<label for="recipeDifficulty"
					class="col-sm-offset-1 col-sm-3 control-label">레시피 난이도</label>
				<div class="col-sm-4">
					<select name="recipeDifficulty" class="form-control">
						<option value="초급" ${!empty recipe.recipeDifficulty && recipe.recipeDifficulty=="초급" ? "selected" : ""}>초급</option>
						<option value="중급" ${!empty recipe.recipeDifficulty && recipe.recipeDifficulty=="중급" ? "selected" : ""}>중급</option>
						<option value="고급" ${!empty recipe.recipeDifficulty && recipe.recipeDifficulty=="고급" ? "selected" : ""}>고급</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="recipeTheme"
					class="col-sm-offset-1 col-sm-3 control-label">레시피 테마</label>
				<div class="col-sm-4">
					<select name="recipeTheme" class="form-control" id="recipeTheme" required>
						<option value="0" ${!empty recipe.recipeTheme && recipe.recipeTheme=="" ? "selected" : ""}>카테고리</option>
						<option value="KO"  ${!empty recipe.recipeTheme && recipe.recipeTheme=="KO" ? "selected" : ""}>한식</option>
						<option value="CH"  ${!empty recipe.recipeTheme && recipe.recipeTheme=="CH" ? "selected" : ""}>중식</option>
						<option value="FR"  ${!empty recipe.recipeTheme && recipe.recipeTheme=="FR" ? "selected" : ""}>양식</option>
						<option value="JP"  ${!empty recipe.recipeTheme && recipe.recipeTheme=="JP" ? "selected" : ""}>일식</option>
						<option value="DES" >간식</option>
					</select>
				</div>
			</div>




			<div class="form-group">
				<label for="uploadfile"
					class="col-sm-offset-1 col-sm-3 control-label">대표이미지</label>
				<div class="col-sm-4">
					<input type="file" multiple="multiple" class="form-control" id="recipeImg" value="${recipe.recipeImg }"
							name="multiImg" >

				</div>
			</div>




			<div class="form-group">
				<label for="ingredient"
					class="col-sm-offset-1 col-sm-3 control-label">재료</label>
				<div class="col-sm-4">
					<table class="type09" style="border: 1px;" id="dynamicTable">
					<thead>
						<tr>
							<th>재료명</th>
							<th>재료양</th>
						</tr>
						<c:set var="i" value="0" />
					<c:forEach var="ingredient" items="${ingredient}">
						<tr>
						<td><input type="text" name="ingredientName" value="${ingredient. ingredientName}" >		
						<input type="hidden" name="ingredientNo" value="${ingredient.ingredientNo }"></td>
						<td><input type="text" name="ingredientAmount" value="${ingredient. ingredientAmount} "></td>
				
						</tr>
						
						</c:forEach>						
					</thead>
					<tbody id="dynamicTbody">
						</tbody>
					</table>


				</div>
			</div>


			<div class="summer">
				<textarea id="summernote" class="form-control" name="recipeOrder">${recipe.recipeOrder}</textarea>
			</div>



			<div class="form-group">
				<div class="col-sm-offset-4  col-sm-4 text-center">
					<button type="button">레시피수정</button>
					<button type="button">취소</button>
				</div>
			</div>
		</form>
		<!-- form Start /////////////////////////////////////-->

	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

	




</body>
<script type="text/javascript">
	$(function() {
		$("button:contains('취소')").on("click", function() {
			self.location = "/recipe/listRecipe"
		});
		$("button:contains('재료추가')").on("click", function() {
			tableCreate();
		});
		$("button:contains('재료빼기')").on("click", function() {
			tableDelete();
		});
		
		function tableCreate() {
			var tc = new Array();
			var html = '';

			var ingredientName = $("#ingredientName").val();
			var ingredientAmount = $("#ingredientAmount").val();

			html += '<tr>';
			html += '<td>'
					+ '<input type="text" placeholder="재료명" id="ingredientName" name="ingredientName">'
					+ '</td>';
			html += '<td>'
					+ '<input type="text" placeholder="재료양" id="ingredientAmount" name="ingredientAmount">'
					+ '</td>';
			html += '</tr>';

			$("#dynamicTable").append(html);

		}

		function tableDelete() {
			$('#dynamicTable tbody tr:last').remove();
		}
	});
	
	$("button:contains('레시피수정')").on("click", function() {
		
		//FORM 유효성 검증
		var recipeName = $("input[name='recipeName']").val();
		var recipeDetail = $("input[name='recipeDetail']").val();
		var detail = $("input[name='detail']").val();
		var cookingTime = $("input[name='cookingTime']").val();
		var recipeDifficulty = $("input[name='recipeDifficulty']").val();
		var recipeTheme = $("[name='recipeTheme']").val();
		var recipeImg = $("input[name='multiImg']").val();
		var recipeOrder = $("input[name='recipeOrder']").val();
		var ingredientName = $("input[name='ingredientName']").val();
		var ingredientAmount =  $("input[name='ingredientAmount']").val();
		
		if (recipeName == null || recipeName.length < 1) {
			alert("레시피명은 반드시 입력하여야 합니다.");
			return;
		}
		if (recipeDetail == null || recipeDetail.length < 1) {
			alert("레시피간략정보는 반드시 입력하여야 합니다.");
			return;
		}
		if (detail == null || detail.length < 1) {
			alert("레시피상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if (recipeTheme == "" || recipeTheme.length < 1) {
			alert("레시피 테마는 반드시 입력하여야 합니다.");
			return;
		}
		if (cookingTime == null || cookingTime.length < 1) {
			alert("소요시간은 반드시 입력하셔야 합니다.");
			return;
		}
		if (recipeImg == null || recipeImg.length < 1) {
			alert("대표이미지는 반드시 입력하셔야 합니다.");
			return;
		}
	if (ingredientName == null || ingredientName.length < 1) {
		alert("재료명은 최소 1가지 입력하셔야 합니다.");
		return;
	}
	if (ingredientAmount == null || ingredientAmount.length < 1) {
		alert("재료양은 최소 1가지 입력하셔야 합니다.");
		return;
	}
	$("form").attr("method", "POST").attr("enctype", "multipart/form-data").attr("action", "/recipe/updateRecipe").submit();
	});
</script>
<script>
$(document).ready(function() {
	$('#summernote').summernote(
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
success : function(data) {
console.log('썸머노트');
console.log(data.url);
$(editor).summernote('insertImage', data.url);
}
});
}
</script>

</html>