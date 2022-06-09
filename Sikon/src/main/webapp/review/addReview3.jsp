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
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  /////////////////////////summernote////////////////////////// -->

<script src="/resources/javascript/summernote-lite.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script src="/resources/javascript/summernote-ko-KR.js"></script>
<!--  -->



<style>
body {
	padding-top: 20px;
		font-family: 'Gowun Batang', serif;
	
}
textarea.form-control {
    height: 250px;
        width: 390px;
}

body {
	background-color: #eee
}

.card {
	width: 400px;
	border: none;
	border-radius: 8px
}

.height-100 {
	height: 100vh
}

.form-control {
	resize: none;
	height: 430px;
	width:
	border: 2px solid #eee
}

.form-control:focus {
	box-shadow: none;
	border: 2px solid #337AB7
}

img {
    vertical-align: middle;
    max-width: 400px;
    max-height: 250px;
    margin-bottom: 30px;
}
</style>



</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div
		class="container height-100 d-flex justify-content-center align-items-center">
		<div class="card p-3">
			<h5><b>리뷰작성</b></h5>
			
				<div><input type="file"/></div>
                          
			<textarea id="textarea" class="form-control"> </textarea>
			<div class="mt-3 d-flex justify-content-between align-items-center">
				<span id="count"></span>
				<button class="btn btn-sm btn-danger">등록</button>
			</div>
		</div>
	</div>
	<!--  화면구성 div Start /////////////////////////////////////-->

</body>
<script type="text/javascript">
	$(function() {
		//여기서 또 상품/레시피/클래스 조건 걸어줘야됨

		$("button:contains('취소')").on("click", function() {
			//self.location = "/product/listProduct?menu=manage"
		});

		$("button:contains('리뷰등록')").on("click", function() {
			fncAddReview();

		});

	});

	$("button:contains('리뷰등록')").css("color", "red")

	function fncAddReview() {

		$("form").attr("method", "POST").attr("action",
				"/review/addReview?textNo=10000&category=100").submit();

	}
	
	$(document).ready(function () {
		var fileTypes = ['jpg', 'jpeg', 'png'];  //acceptable file types
		$("input:file").change(function (evt) {
		    var parentEl = $(this).parent();
		    var tgt = evt.target || window.event.srcElement,
		                    files = tgt.files;

		    // FileReader support
		    if (FileReader && files && files.length) {
		        var fr = new FileReader();
		        var extension = files[0].name.split('.').pop().toLowerCase(); 
		        fr.onload = function (e) {
		        	success = fileTypes.indexOf(extension) > -1;
		        	if(success)
			        	$(parentEl).append('<img src="' + fr.result + '" class="preview"/>');
		        }
		        fr.onloadend = function(e){
		            console.debug("Load End");
		        }
		        fr.readAsDataURL(files[0]);
		    }   
		});
	});
</script>
</html>