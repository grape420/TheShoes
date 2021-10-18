<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/resell/resellList.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div class="reselltitle">
			<p class="title" style="border-top: 1px solid rgba(0,0,0,.1); margin-top: 1rem; margin-bottom: 1rem; border: 0;">RESELL SHOP</p>
		</div>
		<hr style="border-top: 1px solid rgba(0,0,0,.1);">
		<div class="row mt-5" id="resellTable" style="width:70%;">
			<c:forEach var="resellList" items="${ requestScope.board }" begin="${ selectCriteria.startRow -1}" end="${ selectCriteria.endRow -1}">
				<div class="col-md-4" style="border: 0!important">
					<div class="card mb-4 border-0" id="resellArea">
						<img id="rsImg" src="/TheShoes/resources/upload/image/resellShoes/${resellList.resellThumb[0].savedName }">
						<div class="card-body ">
							<div class="card-text">
								<p class="none-hover">
									<span class="tit"><c:out value="${ resellList.boardTitle }"/></span> 
								</p>
								<p class="hover">
									<a href="${ pageContext.servletContext.contextPath }/resell/detail?no=${ resellList.boardNo }">Resell</a>
								</p>
							</div>
							<a class="stretched-link" href="${ pageContext.servletContext.contextPath }/resell/detail?no=${ resellList.boardNo }"></a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<jsp:include page="paging.jsp"/>
		<c:if test="${ entryMember.role eq 'MEMBER' }">
			<div class="regArea" style="text-align: center; margin: 20px;">
				<a href="#" id="regButton" onclick="location.href='${ pageContext.servletContext.contextPath }/resell/regResell';">등록하기</a>
			</div>
		</c:if>
	</section>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>