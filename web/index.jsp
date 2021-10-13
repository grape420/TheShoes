<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 메인페이지로 포워드 -->
	<script>
		location.replace("${ pageContext.servletContext.contextPath }/common/mainPage");
	</script> 
	
	<!-- <script>
		location.replace("${ pageContext.servletContext.contextPath }/manager/manager");
	</script> -->
</body>
</html>