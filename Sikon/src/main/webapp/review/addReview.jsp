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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<!-- include css/js -->
<link href="/resources/css/animate.min.css" rel="stylesheet">
<link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>
<!-- font awesome-->
<script src="https://kit.fontawesome.com/ef3e0db941.js" crossorigin="anonymous"></script>

<style>

.container{
background-color: #F7F7F7;
}


@media(min-width:568px){
    .end{
        margin-left: auto;
    }
}

@media(max-width:768px){
    #post{
        width: 100%;
    }
}


/* 버튼 css */

#post{
    margin: 10px;
    padding: 6px;
    padding-top: 2px;
    padding-bottom: 2px;
    text-align: center;
    background-color: #dc3545;
    color: WHITE;
    border-radius: 13px;
    width: 50%;
    margin-left: 80px;
}

body{
    background-color: #F7F7F7;
}


h4{
    color: #424242;
    font-weight: bold;
}
label{
    color: #424242;
}


.form-group p a{
color: #424242;}


.form-group textarea{
    background-color: #F7F7F7;
    border: 1px solid rgba(16, 46, 46, 0.973);
    border-radius: 12px;
}

.form-group input{
background-color: #F7F7F7;
}


form{
    border: rgba(16, 46, 46, 0.973);
    background-color: #F7F7F7;
    border-radius: 5px;
    padding: 20px;
    margin-top:15px;
 }
 
 img {
    vertical-align: middle;
    max-width: 400px;
    max-height: 250px;
    margin-bottom: 30px;
}
.drop-zone{
width:837px;
height:200px;
margin-top:0px;
margin-bottom: 10px;
}


.drop-zone {
  max-width: 620px;
    height: 200px;
    padding: 25px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    font-family: "Quicksand", sans-serif;
    font-weight: 500;
    font-size: 20px;
    cursor: pointer;
    color: #cccccc;
    border: 2px dashed #eee;
    border-radius: 10px;
}

.drop-zone--over {
  border-style: solid;
}

.drop-zone__input {
  display: none;
}

.drop-zone__thumb {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  overflow: hidden;
  background-color: #cccccc;
  background-size: cover;
  position: relative;
}

.drop-zone__thumb::after {
  content: attr(data-label);
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: 5px 0;
  color: #ffffff;
  background: rgba(0, 0, 0, 0.75);
  font-size: 14px;
  text-align: center;
}

.yes {
	display: flex;
	align-items: flex-start;
	margin-top: 10px !important;
}

.btn_upload {
  cursor: pointer;
  overflow: hidden;
  position: relative;
  padding: 5px 10px;
}


.btn_upload input {
  cursor: pointer;
  height: 100%;
  position: absolute;
  filter: alpha(opacity=1);
  -moz-opacity: 0;
  opacity: 0;
}

.it {
  height: 100px;
  margin-left: 10px;
}

.btn-rmv1,
.btn-rmv2,
.btn-rmv3,
.btn-rmv4,
.btn-rmv5 {
  display: none;
}

.rmv {
  cursor: pointer;
  color: #fff;
  border-radius: 30px;
  border: 1px solid #fff;
  display: inline-block;
  background: rgba(255, 0, 0, 1);
  margin: -5px -10px;
}

.rmv:hover {
  background: rgba(255, 0, 0, 0.5);
}

</style>


</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
                <form id="algin-form" enctype="multipart/form-data">
                
                    <div class="form-group">
                        <h4>리뷰작성</h4>
                        <label for="message">후기를 남겨주세요!</label>
                        <textarea name="reviewContent" id="reviewContent" cols="30" rows="5" class="form-control" placeholder="최소 15자 이상 입력해주세요." style="background-color: #F7F7F7;"></textarea>
                    </div>
                    
                    <div class="yes">
							     <span class="btn_upload">
							      <input  multiple="multiple" type="file"   id="reviewImg"  name="fileArray" class="input-img"/>
							     <i class="fa-solid fa-camera"> 이미지첨부</i><br/>
							      </span>
							    <img id="ImgPreview" src="" class="preview1" />
							    <input type="button" id="removeImage1" value="x" class="btn-rmv1" />
                    </div>
                    <br/>
                    <div class="form-group">
                        <p class="text-secondary">상품과 무관한 사진 및 욕설/비속어가 포함된 리뷰는 고지 없이 삭제될 수 있습니다.
							구매하신 상품을 직접 촬영한 사진만 리뷰 등록 및 포인트 지급이 가능합니다.
							해당 사유들로 인해 고지없이 리뷰 및 사진이 삭제되는 경우, 지급 포인트 일부 또는 전액이 회수될 수 있습니다.
							상품 반품/취소 시, 리뷰 삭제 및 지급 포인트가 회수 됩니다.</p>
                    </div>
                    <div class="form-group">
                        <button type="button" id="post" class="btn">리뷰등록</button>
                    </div>
                    
                    <input type="hidden" name="category" value="${param.category }"/>
                    <input type="hidden" name="textNo" value="${param.textNo }"/>
                    <input type="hidden" name="textNo2" value="${param.textNo2 }"/>
                    
                </form>
            </div>
        </div>
    </div>
</section>

</body>
<script type="text/javascript">
	$(function() {
	
		$("button:contains('리뷰등록')").on("click", function() {
			fncAddReview();

		});

	});


	function fncAddReview() {
		$("form").attr("method", "POST").attr("enctype", "multipart/form-data").attr("accept-charset", "euc-kr").attr("action","/review/addReview").submit();
		setTimeout(function() {   
            window.close();
         }, 3);

	      }
	
	function readURL(input, imgControlName) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      $(imgControlName).attr('src', e.target.result);
		    }
		    reader.readAsDataURL(input.files[0]);
		  }
		}

		$("#reviewImg").change(function() {
		  // add your logic to decide which image control you'll use
		  var imgControlName = "#ImgPreview";
		  readURL(this, imgControlName);
		  $('.preview1').addClass('it');
		  $('.btn-rmv1').addClass('rmv');
		});
	
		$("#removeImage1").click(function(e) {
			  e.preventDefault();
			  $("#imag").val("");
			  $("#ImgPreview").attr("src", "");
			  $('.preview1').removeClass('it');
			  $('.btn-rmv1').removeClass('rmv');
			});
</script>

</html>