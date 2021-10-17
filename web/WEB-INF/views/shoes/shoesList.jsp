<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/shoes/shoesList.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<!-- title -->
		<div class="div-title mt-3 mb-3">
			<p class="title">THE DRAW</p>
		</div>
		<hr>
		<!-- album -->
		<div class="album-main row mt-5">
			<c:forEach var="list" items="${requestScope.list}" begin="${ selectCriteria.startRow - 1 }" end="${ selectCriteria.endRow - 1 }">
					<div class="col-md-4 border-0">
						<div class="card mb-4 border-0">
							<div class="launch-time ta-sm-l d-sm-h d-md-b z10 mod-bg-grey pt6-sm pl6-sm">
								<div class="launch-caption ta-sm-c">
									<p class="headline-4" data-qa="draw-startDate"><fmt:formatDate value="${ list.startDate }" pattern="MM"/>월</p>
									<p class="headline-1" data-qa="draw-day"><fmt:formatDate value="${ list.startDate }" pattern="dd"/></p>
								</div>
							</div>
							<img src="/TheShoes/resources/upload/image/shoes/${list.thumbList[0].savedName}">
							
							<div class="card-body">
								<div class="card-text">
									<p class="none-hover">
										<span class="tit"><fmt:formatDate value="${ list.startDate }" pattern="a hh:mm"/> 응모 시작</span> <span class="color">${list.shoesModel }</span>
									</p>
									<p class="hover">
										<a href="javascript:void(0)">THE DRAW <b>추첨예정</b></a>
									</p>
								</div>
								<a class="stretched-link" href="/TheShoes/shoes/detail?no=${list.shoesNo }" ></a>
							</div>
						</div>
					</div>
				</c:forEach>
			
		</div>
		<!-- paging -->
		<jsp:include page="paging.jsp"/>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>