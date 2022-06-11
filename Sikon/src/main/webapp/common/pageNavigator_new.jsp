<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

.pagination>.active>a, .pagination>.active>a:focus,
.pagination>.active>a:hover, .pagination>.active>span,
.pagination>.active>span:focus, .pagination>.active>span:hover{
	background-color: #937062;
    border-color: #937062;
}

.pagination>li>a, .pagination>li>span {
	color: #937062;
}
a {
	color: #937062;
}
a:focus, a:hover{
	color: #937062;
}
</style> 

<div class="container text-center">
		 
		 <nav>
		  <!-- 크기조절 :  pagination-lg pagination-sm-->
		  <ul class="pagination" >
		    
		    <!--  <<== 좌측 nav -->
		  	<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
		 		<li class="disabled">
		 			<span aria-hidden="true">&laquo;</span>
		 		</li>
			</c:if>
			<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
				<li>
					<a href="javascript:fncGetList('${ resultPage.currentPage-1}')" aria-label="Previous">
		        	<span aria-hidden="true">&laquo;</span>
		      		</a>
		    	</li>
		    </c:if>
		    
		    <!--  중앙  -->
			<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
				
				<c:if test="${ resultPage.currentPage == i }">
					<!--  현재 page 가르킬경우 : active -->
				    <li class="active">
				    	<a href="javascript:fncGetList('${ i }');">${ i }<span class="sr-only">(current)</span></a>
				    </li>
				</c:if>	
				
				<c:if test="${ resultPage.currentPage != i}">	
					<li>
						<a href="javascript:fncGetList('${ i }');">${ i }</a>
					</li>
				</c:if>
			</c:forEach>
		    
		     <!--  우측 nav==>> -->
		     <c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
		  		<li class="disabled">
		 			<span aria-hidden="true">&raquo;</span>
		 		</li>
			</c:if>
			<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
				<li>
				    <a href="javascript:fncGetList('${resultPage.endUnitPage+1}')" aria-label="Next">
		        	<span aria-hidden="true">&raquo;</span>
		      		</a>
		    	</li>
		    </c:if>
		  </ul>
		</nav>
		
</div>
 

