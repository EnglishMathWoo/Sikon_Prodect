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
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

	.btn-b {
		cursor: pointer;
		background-color: #937062;
		border: none;
		color: #fff;
		padding: 12px 0;
		width:6%;
		height: 34px;
		justify-content: center;
		display: flex;
		align-items: center;
		font-size: 17px;
		border-radius: 5px;
		border: 1px solid #d7d7d7;
	}
	
	.btn-b:hover {
		background-color: #937062d4;
	}
	
	.container {
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	}
	        
    .table {
    	margin-top:70px;
    }
       
    #noCoupon{
      	text-align:center;
    }
       
    .soo {
		padding-top : 170px;
	}
</style>
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	
	//검색 & 페이지
	function fncGetList(currentPage) {
		
		$("#currentPage").val(currentPage);
		$("form").attr("method" , "POST").attr("action", "/coupon/listCoupon").submit();
	}
	
	$(function() {
		
		$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1); 
		});
	});
			
	//쿠폰발급 페이지 이동
	$(function() {
		
		$("#addCoupon").on("click" , function() {
			
			self.location = "/coupon/addCoupon.jsp";
		});
	});
	
	//체크박스 전체 선택
	$(document).ready(function() {
		
		$("#checkall").click(function(){
		
			if($("#checkall").prop("checked")){
				$("input[name=deleteCheck]").prop("checked",true);
			} else{
				$("input[name=deleteCheck]").prop("checked",false);
			}
					
		})
				 
		$("input[name=deleteCheck]").click(function(){
		
			if($("#checkall").prop("checked")){
					
				$("#checkall").prop("checked",false);		
			}
				
		})
	});	
	 
	//쿠폰삭제
	$(function() {
	
		$("button.delete").on("click" , function() {
					
			var checkCount = $("input[name='deleteCheck']:checked").length;
		    var array = new Array();
		    
			$("input[name='deleteCheck']:checked").each(function() {
		
				array.push($(this).attr('id'));
			});
					
			if(checkCount != 0) {
				alert("쿠폰을 삭제하시겠습니까?")
				self.location = "/coupon/deleteCoupon?checkCount="+checkCount+"&checkList="+array;
			} else {
				alert("선택된 쿠폰이 없습니다.")						
			}
		});
	});
				
</script>
	
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container soo">
	
		<div class="page-header text-info">
			<h3 style="color:#937062; font-family: 'Gowun Batang', serif; font-weight:bold;">쿠폰목록</h3>
		</div>
			
		<form class="form-inline" name="detailForm">
	    	<input type="hidden" id="currentPage" name="currentPage" value=""/>
		</form>
		
		<p class="text-primary" align="left" style="color:gray">
			전체  ${resultPage.totalCount} 건수, 현재 ${resultPage.currentPage} 페이지
		</p>
			
		<button type="button" class="btn-b delete" style="float: right;  margin-right: 10px;" >삭&nbsp;제</button>
		<button type="button" class="btn-b" id="addCoupon" style="float: right; margin-right: 10px;">생 &nbsp;성</button>
				
	    <table class="table table-hover table-striped">
		
	    	<thead>
	        	<tr>
	           		<th align="center" style="text-align:center;"><input type="checkbox" id="checkall"/></th>
		            <th align="center" style="text-align:center;">쿠폰번호</th>
		            <th align="center" style="text-align:center;">쿠폰이름</th>
		            <th align="center" style="text-align:center;">할인율</th>
		            <th align="center" style="text-align:center;">할인금액</th>
	          </tr> 
	        </thead>
	       
			<tbody>
				<c:if test="${!empty list}">
				  	<c:forEach var="coupon" items="${list}">
					<c:set var="i" value="${ i+1 }" />
						<tr>
							<td align="left"><input type="checkbox" name="deleteCheck" id="${coupon.couponNo}"></td>
						  	<td align="left">${coupon.couponNo}</td> 
							<td align="left">${coupon.couponName}</td>
							<td align="left">${coupon.discountRate}</td>
							<td align="left">${coupon.discountValue}</td>
						</tr>
		          	</c:forEach>
	        	</c:if>
	        </tbody>
	                 
	      </table>
	      
	     <c:if test="${empty list}">
	      	<h3 id="noCoupon">생성된 쿠폰이 없습니다.</h3>
	      	<br>
	     </c:if>
	     
	</div>
	               
	<jsp:include page="../common/pageNavigator_new.jsp"/>
     
</body>

</html>