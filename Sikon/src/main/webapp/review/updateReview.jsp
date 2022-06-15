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
</style>

<style>
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
                <form id="algin-form">
                
                    <div class="form-group">
                        <h4>리뷰수정</h4>
                        <label for="message">후기를 남겨주세요!</label>
                        <textarea name="reviewContent" id="reviewContent" cols="30" rows="5" class="form-control" placeholder="${review.reviewContent }" style="background-color: #F7F7F7;"></textarea>
                    </div>
                    <div class="form-group">
                    
                        <label for="reviewImg">이미지</label>
                        <div><input type="file" name="reviewImg" /></div>
                         
                        
                        <!-- 
                        <div class="drop-zone">
    						<span class="drop-zone__prompt">Drop file here or click to upload</span>
 						 </div>
                        -->
                        
                    </div>
                    <input type="hidden" name="reviewNo" value="${param.reviewNo }">
                    
                    <div class="form-group">
                        <p class="text-secondary">상품과 무관한 사진 및 욕설/비속어가 포함된 리뷰는 고지 없이 삭제될 수 있습니다.
							구매하신 상품을 직접 촬영한 사진만 리뷰 등록 및 마일리지 지급이 가능합니다.
							해당 사유들로 인해 고지없이 리뷰 및 사진이 삭제되는 경우, 지급 마일리지 일부 또는 전액이 회수될 수 있습니다.
							상품 반품/취소 시, 리뷰 삭제 및 지급 마일리지가 회수 됩니다.</p>
                    </div>
                    <div class="form-group">
                        <button type="button" id="post" class="btn">리뷰수정</button>
                    </div>
                    
                    
                </form>
            </div>
        </div>
    </div>
</section>

</body>
<script type="text/javascript">
	$(function() {

		$("button:contains('리뷰수정')").on("click", function() {
			fncUpdateReview();

		});

	});


	function fncUpdateReview() {
		//$("form").attr("method", "POST").attr("action","/review/addReview").submit();
		
		  $("form").attr("method", "POST").attr("action","/review/updateReview").submit();
		  setTimeout(function() {   
	             window.close();

	          }, 3);
	      }
	
	// 이미지 미리보기
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