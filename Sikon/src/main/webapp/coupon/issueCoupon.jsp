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

	body {
		padding-top : 50px;
	}
	
	.container {
		font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial,
		"sans-serif";
	}
        
	.form-control {
  		float:left;
    	width:200px;
    	margin-left:30px;
    }
      
    label {
     	float:left;
      	margin-left:30px;
    }
      
    p {
    	margin-bottom: 40px;
	}
      
	.table {
    	margin-top:20px;
    }
      
    #couponName {
     	margin-left:59px;
    }
      
    #userId {
    	width:325.08px;
    }
      
    .soo {
		padding-top : 170px;
		}
	  
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
 </style>
    
<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">	
	
	//검색 & 페이지
	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "/coupon/issueCouponView").submit();
	}
	
	$(function() {
		$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1);
		});
	});
	
	//체크박스 전체 선택
	$(document).ready(function() {
				
		$("#checkall").click(function(){
					
			if($("#checkall").prop("checked")){
				
				$("input[name=userId]").prop("checked",true);			
			} else{			
				
				$("input[name=userId]").prop("checked",false);
			}		
		})
				 
		$("input[name=userId]").click(function(){
			
			if($("#checkall").prop("checked")){		
			
				$("#checkall").prop("checked",false);
			}		
		})	
	 });	
	
	//쿠폰발급
	$(function() {
		$("#issueCoupon").on("click" , function() {
							
			var startDate = $("input[name='startDate']").val();
			var endDate = $("input[name='endDate']").val();
			
			if(startDate == ""){
				alert("쿠폰시작일자는 반드시 입력하셔야 합니다.");
				return;
			}
			
			if(endDate == ""){
				alert("쿠폰만료일자는 반드시 입력하셔야 합니다.");
				return;
			}
			
			var checkCount = $("input[name='userId']:checked").length;
			
			//현재시간 구하기
			var today = new Date();
			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);
			var dateString = year + '-' + month  + '-' + day;

			if(dateString <= startDate && dateString+1 <= endDate && startDate <= endDate) {
				if(checkCount != 0) {
					alert("쿠폰을 발급하시겠습니까?")
					$("form").attr("method", "POST").attr("action", "/coupon/issueCoupon").submit();
				} else {
					alert("선택된 회원이 없습니다.")						
				}
			} else if(dateString > startDate) {
				alert("쿠폰발급일자는 금일 이후로 설정하셔야 합니다.")
			} else if(dateString+1 > endDate) {
				alert("쿠폰만료일자는 익일 이후로 설정하셔야 합니다.")
			} else if (startDate > endDate ) {
				alert("쿠폰발급일자는 쿠폰만료일자 이후로 설정하셔야 합니다.")
			}
			
		});
	});
		
</script>
	
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container soo">
	
		<div class="page-header text-info">
	       <h3 style="color:#937062; font-family: 'Gowun Batang', serif; font-weight:bold;">쿠폰발급</h3>
	    </div>
	    
	    <div class="row">
		    <form class="form-horizontal" name="detailForm">
		    <input type="hidden" id="currentPage" name="currentPage" value=""/>
		    <input type="hidden" id="issueStatus" name="issueStatus" value="사용가능"/>
	   	
		 <p class="text-primary" style="color:gray">
		 	전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		 </p>
		  		    
		 <div class="form-group">
		 	<label for="startDate">쿠폰시작일자</label>
		    <input type="DATE" class="form-control" id="startDate"  name="startDate" placeholder="쿠폰시작일자">
		 </div>
		  
		 <div class="form-group">
		 	<label for="endDate">쿠폰만료일자</label>
		    <input type="DATE" class="form-control" id="endDate"  name="endDate" placeholder="쿠폰만료일자">
		 </div>
		    
		  <div class="form-group">
		  	<label for="couponList">쿠폰종류</label>
		    <select class="form-control" name="couponNo" id="couponName">
		    <c:forEach var="coup" items="${couponList}">
		     	<c:choose>
         		<c:when test = "${coup.couponName != null}">
         			<option value="${coup.couponNo}"> ${coup.couponName}</option>
         		</c:when>
         		<c:otherwise>
				   <option>쿠폰 없음</option>
				</c:otherwise>
      		  </c:choose>
      		</c:forEach>
         	</select>
		  </div>
		  <button type="button" class="btn-b" id="issueCoupon" style="float:right">발 &nbsp;급</button>

		</div>
		
		
      <table class="table table-hover table-striped" >
        <thead>
        
        <tr>
        	<th align="center" style="text-align:center;"><input type="checkbox" id="checkall" /></th>
            <th align="left" id="userId" style="text-align:center;">회원ID</th>
            <th align="left" style="text-align:center;">회원명</th>
            <th align="left" style="text-align:center;">닉네임</th>
         </tr>
         
         </thead>
       
		 <tbody>
		 
		 <c:set var="i" value="0" />
		 <c:forEach var="user" items="${list}">
		 <c:set var="i" value="${ i+1 }" />
			<tr class="ct_list_pop">
				<td align="left"><input type="checkbox" name="userId" value="${user.userId}"></td>
				<td align="left">${user.userId}</td>
				<td align="left">${user.userName}</td>
				<td align="left">${user.userNickname}</td>
				<td></td>
			</tr>
          </c:forEach>
 
		  </tbody>
      </table>
	
		</form>
	 
	</div>
 
	<jsp:include page="../common/pageNavigator_new.jsp"/>

</body>

</html>