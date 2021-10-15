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
						
			let movePath = "";
			
			switch(successCode) {
				case "insertShoes" :
					movePath = "${ pageContext.servletContext.contextPath }/manager/shoes";
					break;
					
				case "myAddressCode" : 
					movePath = "${ pageContext.servletContext.contextPath }/myPage/myAddress";
					break;
					
				case "updateAddress" : 
					movePath = "${ pageContext.servletContext.contextPath }/myPage/myAddress";
					break;
					
				case "insertNotice" :
				case "updateNotice" :
					movePath = "${ pageContext.servletContext.contextPath }/board/list";
					break;
					
				case "insertFaq" :
				case "updateFaq" :
					movePath = "${ pageContext.servletContext.contextPath }/faq/list";
					break;	
					
				case "insertQuestion" :
				case "registRequest" :
					movePath = "${ pageContext.servletContext.contextPath }/cs/list";
					break;
			}
			
		
	}
			
			location.replace(movePath);
		})();
	</script>

</body>
</html>