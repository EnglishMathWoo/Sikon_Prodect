<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
	<script type="text/javascript">		
	
	document.location.href=${url};
	
	Swal.fire({
		  position: 'top-end',
		  icon: 'success',
		  title: '멘토 승인이 완료되었습니다.',
		  showConfirmButton: false,
		  timer: 1500
		});
		
	
	</script>
</body>
</html>