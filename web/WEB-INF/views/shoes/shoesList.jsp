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
		<div class="orderby">
			<label class="select m-0"> <select>
					<option>신상품순</option>
					<option>인기순</option>
					<option>높은 가격순</option>
					<option>낮은 가격순</option>
			</select>
			</label>
		</div>
		<!-- title -->
		<hr>
		<div class="div-title">
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
									<p class="headline-4" data-qa="draw-startDate"><fmt:formatDate value="${ list.startDate }" pattern="MM"/></p>
									<p class="headline-1" data-qa="draw-day"><fmt:formatDate value="${ list.startDate }" pattern="dd"/></p>
								</div>
							</div>
							<!--   <img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/search01.jpg"> -->
							<img src="/TheShoes/resources/upload/image/shoes/${list.thumbList[0].savedName}">
							
							<div class="card-body">
								<div class="card-text">
									<p class="none-hover">
										<!-- <span class="tit">오전 10:00 응모 시작</span> <span class="color">${list.shoesModel }</span>  -->
										<span class="tit"><fmt:formatDate value="${ list.startDate }" pattern="a hh:mm"/> 응모 시작</span> <span class="color">${list.shoesModel }</span>
									</p>
									<p class="hover">
										<a href="javascript:void(0)">THE DRAW <b>추첨예정</b></a>
									</p>
								</div>
								<a class="stretched-link" href="/TheShoes/shoes/shoesDetail.jsp?no=${list.shoesNo }" ></a>
							</div>
						</div>
					</div>
				</c:forEach>
			
			<!--<c:forEach var="i" begin="1" end="12">
				<div class="col-md-4 border-0">
					<div class="card mb-4 border-0">
						<div class="launch-time ta-sm-l d-sm-h d-md-b z10 mod-bg-grey pt6-sm pl6-sm">
							<div class="launch-caption ta-sm-c">
								<p class="headline-4" data-qa="draw-startDate">10월</p>
								<p class="headline-1" data-qa="draw-day">2</p>
							</div>
						</div>
						<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/search01.jpg">
						<div class="card-body">
							<div class="card-text">
								<p class="none-hover">
									<span class="tit">오전 10:00 응모 시작</span> <span class="color">에어포스 1 미드</span>
								</p>
								<p class="hover">
									<a href="javascript:void(0)">THE DRAW <b>추첨예정</b></a>
								</p>
							</div>
							<a class="stretched-link" href="#"></a>
						</div>
					</div>
				</div>
			</c:forEach> -->
		</div>
		<!-- paging -->
		<jsp:include page="paging.jsp"/>
		<!--   <div class="paging">
			<a href="#" class="btn_arr first"><i class="fa fa-chevron-left"
				aria-hidden="true"></i><span class="hide">처음페이지</span></a> <a href="#"
				class="btn_arr prev"><i class="fa fa-chevron-left"
				aria-hidden="true"></i><span class="hide">이전페이지</span></a> <a href="#"
				class="on">1</a> -->
			<!-- D : 활성화페이지일 경우 : on 처리 -->
		<!-- 	<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
			<a href="#" class="btn_arr next"><i class="fa fa-chevron-right"
				aria-hidden="true"></i><span class="hide">다음페이지</span></a> <a href="#"
				class="btn_arr last"><i class="fa fa-chevron-right"
				aria-hidden="true"></i><span class="hide">마지막페이지</span></a>
		</div> -->
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>