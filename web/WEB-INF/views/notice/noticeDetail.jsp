<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/notice/noticeDetail.css">
<link rel="shortcut icon"
	href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
			<div class="bonmun">
				2021.09.13
				<p>[공지]추석 연휴 판매자 정산 일정 안내</p>
				<div class="realBonmun">
					안녕하세요. THE SHOES입니다.<br>
					<br> 추석 연휴로 인해 관계사의 업무 일정이 조정될 예정이며, 이에 따라 변경될 판매 대급의 정산 일정을
					안내드립니다.<br>
					<br> 정산 일정 변경 대상 | 9월 17일 (금) ~ 9월 23일 (목) 검수 합격 건 정산 예정일 | 9월
					24일 (금)<br>
					<br> 판매 거래 전, 안내드린 정산 일정 참고 부탁드립니다.<br> 감사합니다.<br>
					<br>
				</div>
				<button type="button" class="btn btn-outline-secondary" id="listBtn"
					onclick="listBtn_click();">목록보기</button>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>