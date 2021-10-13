<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function () {
			const successCode = "${ requestScope.successCode }";
			
			let successMessage = "";
			let movePath = "";
			
			switch(successCode) {
				case "insertShoes" :
					movePath = "${ pageContext.servletContext.contextPath }/manager/shoes";
					break;
				case "updateShoes" :
					movePath = "${ pageContext.servletContext.contextPath }/manager/shoes";
					break;
				case "updateMember" :
					movePath = "${ pageContext.servletContext.contextPath }/manager/memberList";
					break;
				case "mainPage" :
					movePath = "${ pageContext.servletContext.contextPath }/common/mainPage";
					break;
			}
			
			location.replace(movePath);
		})();
	</script>

</body>
</html>