<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/member/login.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div class="section-main-div">
			<img class="logo-form rounded mx-auto d-block" src="${ pageContext.servletContext.contextPath }/resources/uses/Logo.png">
			<br><br><br>
			<form action="${ pageContext.servletContext.contextPath }/member/login" method="POST">
				<input type="text" name="id" id="id" class="form-control" placeholder="아이디" autofocus> <br> 
				<input type="password" name="password" id="password" class="form-control" placeholder="비밀번호">
				<label class="id-result mb-0" id="id-result"></label><br><br>
				<button type="button" id="login-btn" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="로그인">로그인</button>
			</form>
			<br>
			<ul class="row">
				<li><a href="${ pageContext.servletContext.contextPath }/member/signup">회원가입</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/member/findId">아이디 찾기</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/member/findPassword">비밀번호 찾기</a></li>
			</ul>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$("#login-btn").click(function() {
			const id = $("#id").val();
			const password = $("#password").val();
			
			$.ajax({
				url: "${ pageContext.servletContext.contextPath }/member/login",
				type: "POST",
				data: {
					id : id,
					password : password},
				success: function(data) {
					if(data == "fail") {
						$("#id-result").text("아이디 또는 비밀번호가 잘못 입력되었습니다.").css("color", "red");
					} else {
						$("#id-result").text("").css("color", "blue");
						location.replace("${ pageContext.servletContext.contextPath }/common/mainPage");
					}
				},
				error: function(request, status, error) {
					alert("code:" + request.responseText + "\n"
						+ "message:" + request.responseText + "\n"
						+ "error:" + error);
				}
			});
		});
	</script>
	
</body>
</html>