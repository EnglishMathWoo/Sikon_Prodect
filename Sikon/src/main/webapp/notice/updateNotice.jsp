<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
    <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
	<!-- jQuery UI toolTip 사용 CSS-->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- jQuery UI toolTip 사용 JS-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
	body {
        padding-top : 50px;
    }
        	
	h1.text-center {
		font-family: 'Nanum Myeongjo', serif;
	}
		
	div.form-group {
		font-family: 'Nanum Myeongjo', serif;
	}
		
	.container {
		font-family: 'Nanum Myeongjo', serif;
		padding-top : 180px;
	}
		
	.btn-b {
		cursor: pointer;
	    background-color: #937062;
	    color: #fff;
	    padding: 12px 0;
	    width:20%;
	    height: 34px;
	    justify-content: center;
        display: flex;
        align-items: center;
	    font-size: 17px;
	    border-radius: 5px;
	    border: 1px solid #d7d7d7;
	    margin: 0 10px;
	}

	.btn-b:hover {
		background-color: #937062d4;
	}
	
	#button {
		margin-top:15px;
		margin-bottom:15px;
		display: flex;
 			justify-content: center;	
	}
</style>
    
 <!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">				
	
	//SummerNote
	$(function() {
	     $('#summernote').summernote({
	             height: 300,                 
	             minHeight: null,       
	             maxHeight: null,        
	             focus: true,                
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
	
	//SummerNote 이미지 Drop
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "/notice/json/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
				$(editor).summernote('insertImage', data.url);
			}
		});
	}
	 
	//공지사항 수정
	$(function() {
		$( "#edit" ).on("click" , function() {
			$("form").attr("method", "POST").attr("action", "/notice/updateNotice").submit();
		});
	});
	 
 	//뒤로가기
	$(function() {
		$( "#previous" ).on("click" , function() {
			history.go(-1);
		});
	});

</script>
	
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">
	
		<div class="page-header text-info">
	       <h3 style="color:#bc8f8f">공지사항수정</h3>
	    </div>
	    
	    <form class="form-horizontal" name="detailForm"  enctype="multipart/form-data" >
		    <div class="row">
			    <input type="hidden" class="form-control" id="noticeNo" name="noticeNo"  value="${notice.noticeNo}" />
			    <input type="text" class="form-control" id="noticeTitle" name="noticeTitle"  value="${notice.noticeTitle}" />
		    </div>
		    <br>
		    
		    <div class="row">
	 			<textarea class="summernote" id ="summernote" name="noticeContent">${notice.noticeContent}</textarea>    
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4  col-sm-4 text-center" id="button">
			    <button type="button" class="btn-b" id="edit">수 &nbsp;정</button>
				<a class="btn-b" role="button" id="previous">취&nbsp;소</a>
			 </div>
			</div>
		</form>
	</div>
		
</body>

</html>