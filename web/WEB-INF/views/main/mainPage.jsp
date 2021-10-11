<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/main/mainPage.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<!-- carousel -->
		<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div style="width: 70%; margin: 0 auto;">
					<div class="carousel-item active">
						<c:forEach var="thumb" items="${ shoesList[0].thumbList }">
							<c:if test="${ thumb.fileType eq 'TITLE' }">
								<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ thumb.savedName }" class="d-block w-100 carouselImg" alt="...">
								</a>
								<div class="carousel-caption d-none d-md-block">
									<h2 class="text-black">${ shoesList[0].shoesModel }</h2>
									<p class="text-black"></p>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="carousel-item">
						<c:forEach var="thumb" items="${ shoesList[1].thumbList }">
							<c:if test="${ thumb.fileType eq 'TITLE' }">
								<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ thumb.savedName }" class="d-block w-100 carouselImg" alt="...">
								</a>
								<div class="carousel-caption d-none d-md-block">
									<h2 class="text-black">${ shoesList[1].shoesModel }</h2>
									<p class="text-black"></p>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="carousel-item">
						<c:forEach var="thumb" items="${ shoesList[2].thumbList }">
							<c:if test="${ thumb.fileType eq 'TITLE' }">
								<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ thumb.savedName }" class="d-block w-100 carouselImg" alt="...">
								</a>
								<div class="carousel-caption d-none d-md-block">
									<h2 class="text-black">${ shoesList[2].shoesModel }</h2>
									<p class="text-black"></p>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev"> 
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
			<span class="sr-only">Previous</span>
			</a> 
			<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next"> 
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
			</a>
		</div>

		<!-- album -->
		<div class="row mt-5">
			<c:forEach var="shoes" items="${ shoesList }" end="12">
				<div class="col-md-4">
					<div class="card mb-4 border-0">
						<c:forEach var="thumb" items="${ shoes.thumbList }">
							<c:if test="${ thumb.fileType eq 'TITLE' }">
								<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ thumb.savedName }">
								<div class="card-body ">
									<div class="card-text">
										<p class="none-hover">
											<span class="tit">${ shoes.category.shoesCategoryName }</span> <span class="color">${ shoes.shoesModel }</span>
										</p>
										<p class="hover">
											<a href="${ pageContext.servletContext.contextPath }/shoes/detail?shoesCode=${ shoes.shoesNo }">Buy</a>
										</p>
									</div>
									<a class="stretched-link" href="${ pageContext.servletContext.contextPath }/shoes/detail?shoesCode=${ shoes.shoesNo }"></a>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>