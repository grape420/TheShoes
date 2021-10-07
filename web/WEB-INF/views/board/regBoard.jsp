<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/board/regBoard.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>

		<div class="container">
			<h2 style="font-weight: 900;">공지사항</h2>
			<hr>
			<form class="needs-validation" novalidate>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="firstName">제목</label> <input type="text"
							class="form-control" id="firstName" placeholder="" value=""
							required>
						<div class="invalid-feedback"></div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="lastName">작성자</label> <input type="text"
							class="form-control" id="lastName" placeholder="" value=""
							required>
						<div class="invalid-feedback"></div>
					</div>
					<div class="col-md-12">
						<label for="exampleFormControlTextarea1">내용</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="20"></textarea>
					</div>
					<button type="submit" class="btn btn-outline-secondary">등록</button>
				</div>
			</form>
		</div>

	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>