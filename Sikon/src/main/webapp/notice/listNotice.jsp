<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
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
	  body {
			font-family: 'Nanum Myeongjo', serif;
            padding-top : 50px;
        }
        	
		h1.text-center {
			font-family: 'Nanum Myeongjo', serif;
		}
		
		div.form-group{
			font-family: 'Nanum Myeongjo', serif;
		}
		              
    </style>
    
    
	<script type="text/javascript">

	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage);
	  	$("form").attr("method" , "POST").attr("action", "/product/listProduct").submit();
	}

	
	//===== 기존Code 주석 처리 후  jQuery 변경 ======//
	 $(function() {
		$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1); 
		});
	 });
	
	
	 $(function() {
			
			$("#addNotice").on("click" , function() {
						
				self.location = "/notice/addNotice.jsp";
			});
		});
	
			
	 $(function() {
			
			$("button.delete").on("click" , function() {
				
				var checkCount = $("input[name='noticeCheck']:checked").length;
			    var array = new Array();
				$("input[name='noticeCheck']:checked").each(function() {
					array.push($(this).attr('id'));
			    });
				
				if(checkCount != 0) {
					alert("게시물을 삭제하시겠습니까?")
					self.location = "/notice/deleteNotice?checkCount="+checkCount+"&checkList="+array;
				} else {
					alert("선택된 게시물이 없습니다.")	
				}
			});
		});
	

	$(function() {
	
		$("td[name='manageNoticeTitle']").on("click", function() {
			
			//Debug..
			console.log($(this).find("[name='noticeNo']").val());
			self.location = "/notice/updateNotice?noticeNo="+$(this).find("[name='noticeNo']").val();
		});
		
	});	
		
	$(function() {
		$("td[name='searchNoticeTitle']").on("click", function() {
			
			console.log($(this).find("[name='noticeNo']").val());
		
			self.location = "/notice/getNotice?noticeNo="+$(this).find("[name='noticeNo']").val();
		});

	});	
		

</script>

</head>

<body>
	
<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
	
	<div class="container">
	
		<div class="page-header text-info">
			<c:if test = "${menu == 'manage'}">
				<h3>공지사항관리</h3>
			</c:if>
			<c:if test = "${menu == 'search'}">
				<h3>공지사항목록</h3>
			</c:if>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
	    <div class="row">
	    	<form class="form-inline" name="detailForm">
		    	<p class="text-primary">
		    		&nbsp;&nbsp;전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
			<c:if test = "${menu == 'manage'}">
		    	<button type="button" class="btn btn-primary delete" value="${notice.noticeNo}" style="float: right;  margin-right: 10px;">삭&nbsp;제</button>
				<button type="button" class="btn btn-primary" id="addNotice" style="float: right;  margin-right: 10px;">등&nbsp;록</button>
			</c:if>
			
		</div>
		
		
		
		 <input type="hidden" id="currentPage" name="currentPage" value=""/>
		
		<!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped" >
      
        <thead>
          <tr>
          	<c:if test = "${menu == 'manage'}">
          	<th align="center"></th>
          	</c:if>
            <th align="center">공지번호</th>
            <th align="center"></th>
            <th align="left" >공지제목</th>
            <th align="center"></th>
            <th align="left">공지시간</th>
          </tr>
        </thead>
       
		<tbody>
		
		<c:set var="i" value="0" />
	<c:forEach var="notice" items="${list}">
		<c:set var="i" value="${ i+1 }" />
		<tr class="ct_list_pop">
			<c:if test = "${menu == 'manage'}">
				<td align="left"><input type="checkbox" name="noticeCheck" id="${notice.noticeNo}"/></td>
				<td align="left"> ${notice.noticeNo}</td>
				<td></td>
				<td align="left" name="manageNoticeTitle" id="manageNoticeTitle">
				${notice.noticeTitle}
				<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
				</td>
				<td></td>
				<td align="left"> ${notice.noticeDate} </td>
			</c:if>
			<c:if test = "${menu == 'search'}">
				<td align="left"> ${notice.noticeNo}</td>
				<td></td>
				<td align="left" name="searchNoticeTitle" id="searchNoticeTitle">
				${notice.noticeTitle}
				<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
				</td>
				<td></td>
				<td align="left"> ${notice.noticeDate} </td>
				<td></td>
			</c:if>
			
		</tr>
	</c:forEach>
        
        </tbody>
      
      </table>
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	<!--  화면구성 div End /////////////////////////////////////-->

 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->

	</form>
</body>

</html>