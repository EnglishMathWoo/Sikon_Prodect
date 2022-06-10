<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<div class="container text-center">
		 
		 <nav>
		  <!-- ũ������ :  pagination-lg pagination-sm-->
		  <ul class="pagination" >
		    
		    <!--  <<== ���� nav -->
		  	<c:if test="${ issuePage.currentPage <= issuePage.pageUnit }">
		 		<li class="disabled">
		 			<span aria-hidden="true">&laquo;</span>
		 		</li>
			</c:if>
			<c:if test="${ issuePage.currentPage > issuePage.pageUnit }">
				<li>
		      		<a href="javascript:fncGetIssueList('${ issuePage.currentPage-1}')" aria-label="Previous">
		        	<span aria-hidden="true">&laquo;</span>
		      		</a>
		    	</li>
		    </c:if>
		    
		    <!--  �߾�  -->
			<c:forEach var="i"  begin="${issuePage.beginUnitPage}" end="${issuePage.endUnitPage}" step="1">
				
				<c:if test="${ issuePage.currentPage == i }">
					<!--  ���� page ����ų��� : active -->
				    <li class="active">
				    	<a href="javascript:fncGetIssueList('${ i }');">${ i }<span class="sr-only">(current)</span></a>
				    </li>
				</c:if>	
				
				<c:if test="${ issuePage.currentPage != i}">	
					<li>
						<a href="javascript:fncGetIssueList('${ i }');">${ i }</a>
					</li>
				</c:if>
			</c:forEach>
		    
		     <!--  ���� nav==>> -->
		     <c:if test="${ issuePage.endUnitPage >= issuePage.maxPage }">
		  		<li class="disabled">
		  			<span aria-hidden="true">&raquo;</span>
		  		</li>
			</c:if>
			<c:if test="${ issuePage.endUnitPage < issuePage.maxPage }">
				<li>
				    <a href="javascript:fncGetIssueList('${issuePage.endUnitPage+1}')" aria-label="Next">
		        	<span aria-hidden="true">&raquo;</span>
		      		</a>
		    	</li>
		    </c:if>
		  </ul>
		</nav>
		
</div>