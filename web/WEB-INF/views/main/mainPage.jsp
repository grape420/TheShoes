<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mainPage.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
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
				<div class="carousel-item active">
					<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/first.png" class="d-block w-100 carouselImg" alt="...">
					</a>
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-black">First slide label</h5>
						<p class="text-black">Some representative placeholder content for the first slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/third.png" class="d-block w-100 carouselImg" alt="...">
					</a>
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-black">Second slide label</h5>
						<p class="text-black">Some representative placeholder content for the second slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<a href="#"> <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/first.png" class="d-block w-100 carouselImg" alt="...">
					</a>
					<div class="carousel-caption d-none d-md-block">
						<h5 class="text-black">Third slide label</h5>
						<p class="text-black">Some representative placeholder content for the third slide.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev"> 
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
			<span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next"> 
			<span class="carousel-control-next-icon" aria-hidden="true"></span> 
			<span class="sr-only">Next</span>
			</a>
		</div>

		<!-- album -->
		<div class="row mt-5">
			<c:forEach var="i" begin="1" end="12">
				<div class="col-md-4">
					<div class="card mb-4 border-0">
						<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/search01.jpg">
						<div class="card-body ">
							<div class="card-text">
								<p class="none-hover">
									<span class="tit">에어포스 1 미드</span> <span class="color">NYC Cool Grey</span>
								</p>
								<p class="hover">
									<a href="javascript:void(0)">Buy</a>
								</p>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>