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
				<input type="password" name="password" id="password" class="form-control" placeholder="비밀번호"> <br>
				<button type="submit" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="로그인">로그인</button>
			</form>
			<br>
			<ul class="row">
				<li><a href="#">회원가입</a></li>
				<li><a href="#">아이디 찾기</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
			</ul>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>