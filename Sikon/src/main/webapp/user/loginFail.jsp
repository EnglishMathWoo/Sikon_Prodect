<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�˸�â</title>


    
</head>
<body>
 <script>
    alert('${msg}');
    location.href='<c:out value="${pageContext.request.contextPath}"/>${url}';
 </script>
	
	
	
  
  
</body>
</html>