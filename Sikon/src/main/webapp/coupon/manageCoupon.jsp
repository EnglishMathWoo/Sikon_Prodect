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
	
	<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">
	<script src="resources/js/plugin/datepicker/bootstrap-datepicker.js"></script>
	<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>
	
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
		body{
			padding-top : 50px;
			font-family: 'Nanum Myeongjo', serif;
		}
			
		h1.text-center {
			font-family: 'Nanum Myeongjo', serif;
		}
	
		div.form-group{
			font-family: 'Nanum Myeongjo', serif;
		}
      		
		.tabTitle li {
		  list-style: none;
		  float: left;
		  width: 100px;
		  padding: 10px 15px;
		  cursor: pointer;
		  text-align: center;
		  border: 1px solid #bebebe;
		}
		
		.tabTitle li.on {
		  background-color: #FAEBD7;
		  font-weight: bold;
		}
		
		.tabContent {
		  clear: both;
		  border: 1px solid #dedede;
		}
		
		.tabContent div {
		  display: none;
		  text-align: center;
		}
		
		.tabContent div.on {
		  display: block;
		}
		
		.buttonDiv{
        	display:flex;
        	flex-direction: row-reverse;        	
        }
        .buttonDiv button{
        	margin-right:10px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		$(document).ready(function() {
		  var $tablink = $(".tabTitle li").click(function() {
		    var idx = $(this).index();
		    $(".tabTitle li").removeClass("on");
		    $(".tabTitle li").eq(idx).addClass("on");
		    $(".tabContent > div").hide();
		    $(".tabContent > div").eq(idx).show();
		  })
		});
			
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/user/listUser").submit();
		}
		
		
		//============= "검색"  Event  처리 =============	
		 $(function() {
			$( "button.btn.btn-default" ).on("click" , function() {
				fncGetList(1);
			});
		 });
		
		 $(function() {
				
			$("#addCoupon").on("click" , function() {
						
				self.location = "/coupon/addCoupon.jsp";
			});
		});
		 
		 $(function() {
				
				$("#issueCoupon").on("click" , function() {
							
					self.location = "/coupon/issueCoupon";
				});
			});
		 		 
		 $(function() {
				
				$("button.delete").on("click" , function() {
					
					var checkCount = $("input[name='couponCheck']:checked").length;
				    var array = new Array();
					$("input[name='couponCheck']:checked").each(function() {
						array.push($(this).attr('id'));
				    });
					
					//Debug..
					if(checkCount != 0) {
						alert("쿠폰을 삭제하시겠습니까?")
						self.location = "/coupon/deleteCoupon?checkCount="+checkCount+"&checkList="+array;
					} else {
						alert("선택된 쿠폰이 없습니다.")						
					}
				});
			});
	
		 
		 $(function() {
				
				$("button.cancel").on("click" , function() {
							
					self.location = "/coupon/updateIssueStatus?issueNo="+$(this).attr("value");
				});
			});
		
	</script>
	
</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	<div class="container">
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="page-header text-info">
		<h3>쿠폰관리</h3>
	</div>
	
	<div class="tab">
	
    <ul class="tabTitle">
      <li class="on">생성</li>
      <li>발급</li>
    </ul>
    
    <div class="tabContent">
    
      <div class="on">
      	    
	    <input type="hidden" id="issueStatus" name="issueStatus" value="사용가능"/>
	    
		 <p class="text-primary" align="left">
		 <br>
		 &nbsp;&nbsp;	전체  ${couponPage.totalCount } 건수, 현재 ${couponPage.currentPage}  페이지
		 </p>
		
		<button type="button" class="btn btn-primary delete" style="float: right;  margin-right: 10px;" >삭&nbsp;제</button>
		<button type="button" class="btn btn-primary" id="addCoupon" style="float: right; margin-right: 10px;">생 &nbsp;성</button>
				
      <table class="table table-hover table-striped" >
      
        <thead>
          <tr>
          	<th align="center"></th>
            <th align="center">쿠폰번호</th>
            <th align="left" >쿠폰이름</th>
            <th align="left">할인율</th>
            <th align="left">할인금액</th>
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="coupon" items="${couponList}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="left"><input type="checkbox" name="couponCheck" id="${coupon.couponNo}"></td>
			  <td align="left">${coupon.couponNo}</td> 
			  <td align="left">${coupon.couponName}</td>
			  <td align="left">${coupon.discountRate}</td>
			  <td align="left">${coupon.discountValue}</td>
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
	
		<jsp:include page="../common/pageNavigator_coupon.jsp"/>
 
       </div>
      
      <div>
        
	 	<p class="text-primary">
		&nbsp;&nbsp;	전체  ${issuePage.totalCount } 건수, 현재 ${issuePage.currentPage}  페이지
		</p>
		
		<input type="hidden" id="currentPage" name="currentPage" value=""/>
		
		<button type="button" class="btn btn-primary" id="issueCoupon">발 &nbsp;급</button>
		  
	
      <table class="table table-hover table-striped" >
      
        <thead>
          <tr>
            <th align="center"></th>
            <th align="center">발급번호</th>
            <th align="left" >발급쿠폰</th>
            <th align="left">쿠폰보유 회원</th>
            <th align="left">발급날짜</th>
            <th align="left">만료날짜</th>
            <th align="left">현재상태</th>
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="coupon" items="${issueList}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <c:if test = "${coupon.issueStatus != '회수'}">
			  <td align="left"><input type="checkbox"></td>
			  </c:if>
			  <c:if test = "${coupon.issueStatus == '회수'}">
			  <td align="left"></td>
			  </c:if>
			  <td align="left">${coupon.issueNo}</td>
			  <td align="left">${coupon.couponName}</td>
			  <td align="left">${coupon.couponUser.userId}</td> 
			  <td align="left">${coupon.startDate}</td>
			  <td align="left">${coupon.endDate}</td>
			  <td align="left">${coupon.issueStatus}</td>
			  <c:if test = "${coupon.issueStatus != '회수'}">
			  <td align="left"><button type="button" class="btn btn-primary cancel" name="issueNo" value = "${coupon.issueNo}" >회수</button></td>
			  </c:if>
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
 </div>
 	<!--  화면구성 div End /////////////////////////////////////-->
		<jsp:include page="../common/pageNavigator_coupon.jsp"/>
	
      </div>
      
    </div>
    
  </div>
	
	</form>
</body>

</html>