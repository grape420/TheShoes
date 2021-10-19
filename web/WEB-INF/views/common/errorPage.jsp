<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/common/errorPage.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div>
			<div>
				<h1 class="headline-2">NOT AVAILABLE</h1>
				<div>
					<h2 class="headline-3 m10-sm ta-sm-c">더 이상 확인 할 수 없는 페이지 입니다.</h2>
					<c:choose>
						<c:when test="${ message eq 'login' }">
							<div>
								<p class="summary">
									로그인이 필요한 페이지 입니다., <br>로그인 후 사용해 주세요.
								</p>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<p class="summary">
									이용에 불편을 드린 점 진심으로 사과 드리며, <br>고객 여러분의 양해 부탁 드립니다.
								</p>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>