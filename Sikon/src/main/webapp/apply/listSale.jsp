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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>


.container {
	padding-top: 150px;
} 
</style>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
	function fncGetList(currentPage) {
		
		$("#currentPage").val(currentPage)
		
		$("form").attr("method" , "POST").attr("action" , "/apply/listSale").submit();
		
	}
	
	$(function() {	
		
	
		
		
		$( "td.divy" ).on("click" , function() {
			console.log('물건도착');
			var message1 = $(this).attr("value1");
			console.log(message1);
			var message2 = $(this).attr("value2");
			console.log(message2);
			
			self.location ="/apply/updateApplyStatus?menu=search&applyNo="+message1+"&applyStatus="+message2;
		});
		
	$( "td.userid" ).on("click" , function() {
		
		
		var userId = $(this).attr("value");
	
			self.location ="/user/getUser?userId="+userId;
	}); 
	
		
		
		
		
	});	
	
	  $(document).ready(function(){ 
			 var totalprice = 0;
			 var cookPrice = $("td.cookPrice").attr("value");
			 var cookStatus = $("td.cookStatus").attr("value");
			 console.log(cookPrice);
			 console.log(cookStatus);
			 var list = [];
		   		<c:forEach var="apply" items="${list}" >
		   		totalprice += (Number(${apply.classCook.cookPrice})*Number(${apply.cookStatus}));
		   		</c:forEach>
		   		
			 console.log(totalprice);
			
			 $("#totalprice").val(totalprice); 
		});	
	  getGraph();
	  
	   function getGraph(){
	       	  let timeList = [];
	    	  let posList = [];
	    	  
	    	  var cookPrice = $("#cookPrice").attr("value");
	    	  console.log(cookPrice);
	    	  var checkDate = $("#checkDate").attr("value");
	    	  var totalprice = $("input[name='totalprice']").val();
	    	  console.log(totalprice);
	    	  $.ajax({
	    		  url : "/apply/json/listSale",
	    		  type:"get",
	    		  data:{'checkDate' : checkDate, 'cookPrice' : cookPrice },
	    		  dataType:"json",
	    		  success:function(data){
	    			  // console.log(data[0].pos_count);
	    			  // 그래프로 나타낼 자료 리스트에 담기
	    			  for (let i = 0; i<data.length;i++){    				  
							timeList.push(data[i].check_date);    				  
							posList.push(data[i].totalprice);    				  
	    			  }
	    			  console.log(timeList);
	    			   console.log(posList);  	
					  // 그래프
	    			  new Chart(document.getElementById("line-chart"), {
	    		    	  type: 'line',
	    		    	  data: {
	    		    	    labels: timeList, // X축 
	    		    	    datasets: [{ 
	    		    	        data: posList, // 값
	    		    	        label: "거북목",
	    		    	        borderColor: "#3e95cd",
	    		    	        fill: false
	    		    	      }
	    		    	    ]
	    		    	  },
	    		    	  options: {
	    		    	    title: {
	    		    	      display: true,
	    		    	      text: '주간 거북목'
	    		    	    }
	    		    	  }
	    		    	}); //그래프
	    		  },
	    		  error:function(){
	    			  alert("실패");
	    		  }  
		     		  
	    	  }) // ajax	  
	      } // getGraph
	      	  
			 
</script>	
	


	</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	       <h3>판매목록관리</h3>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
	   <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm">
			    
		
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				   	<input type="hidden" name="cookStatus" value="${apply.cookStatus}"/>	
				  
				</form>
	    	</div>
	    	
		</div>
		
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped">
      
        <thead>
          <tr>
             <th align="center">No</th>
            <th align="center">가격</th>
            <th align="center">수량</th>
            <th align="center">결제날짜</th>
            <th align="center">상품번호</th>
            <th align="center">배송현황</th>
            <th align="center">현재상태</th>
            <th align="center">구매회원</th>
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="apply" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="center">${ i }</td>
			  <td align="center" value="${apply.classCook.cookPrice }" id="cookPrice">${apply.classCook.cookPrice}</td>
			   <td align="center"value="${apply.cookStatus}" id="cookStatus">${apply.cookStatus}</td>
			    <td align="center"value="${apply.checkDate}" id="checkDate">${apply.checkDate}</td>
			  <td align="center" class="prodNum" value1="${apply.classCook.cookNo }" value2="${param.menu}" >
				${apply.classCook.cookNo }
			  
			  	<input type="hidden" value="${apply.classCook.cookNo}">
			 	 </td>
			  <c:choose>
				<c:when test="${apply.applyStatus.equals('000')}">
					<td align="center">현재 신청취소 상태입니다.</td>
				</c:when>
				<c:when test="${apply.applyStatus.equals('100')}">
					<td align="center">현재 신청완료 상태입니다.</td>
				</c:when>
				<c:when test="${apply.applyStatus.equals('200')}">
					<td align="center">현재 수강완료 상태입니다.</td>
				</c:when>
			
			  </c:choose>
			  
			  <c:choose>
					<c:when test="${apply.applyStatus.equals('000') }">
						<td align="center" > 구매취소 </td>
					</c:when>
					<c:when test="${apply.applyStatus.equals('100') }">
						<td align="center" class="divy" value1="${apply.applyNo }" value2="${apply.applyStatus}">수강완료 시 눌러주세요</td>			
					</c:when>
					<c:when test="${apply.applyStatus.equals('200') }">
						
						<td align="center"> 수강완료</td>
					</c:when>
				
			
				</c:choose>
			
			  	<td align="center" class="user" value="${apply.applier.userId}">${apply.applier.userId}</td>
				
				
				
				</tr>
          </c:forEach>

	      	       
        </tbody>
  	      <div align="right">
	        총 매출 : <input type="text" id="totalprice" value="" name ="totalprice"style="border:none;width:100px;text-align:right;" min="0" readonly/> 원
	      </div>	    
      </table>
	  <!--  table End /////////////////////////////////////-->
	  
 </div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>

</html>