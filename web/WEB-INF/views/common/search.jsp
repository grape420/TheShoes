<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/common/search.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div class="orderby">
			<label class="select"> <select>
					<option>신상품순</option>
					<option>인기순</option>
					<option>높은 가격순</option>
					<option>낮은 가격순</option>
			</select>
			</label>
		</div>

		<div class="reselltitle">
			<h2>SHOP</h2>
		</div>
		<div class="sc-ciodno jeBajc">
			<div class="sc-bYwvMP dsPtbr">
				<div class="sc-gGCbJM aZXoH">
					<span class="sc-crNyjn fCkOBf">신발</span>의 검색결과 <span
						class="sc-lcpuFF llJACf">51개 </span>
				</div>
			</div>
		</div>
		<div class="album-body row p-0 mt-5">
			<c:forEach var="i" begin="1" end="12">
				<div class="col-4">
					<div class="card mb-4 border-0">
						<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/sample/search01.jpg">
						<div class="card-body ">
							<div class="card-text">
								<p class="none-hover">
									<span class="tit">우먼스 덩크 하이 레벨</span> <span class="color">Pastels</span>
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
		<div class="paging">

			<a href="#" class="btn_arr first"><i class="fa fa-chevron-left"
				aria-hidden="true"></i><span class="hide">처음페이지</span></a> <a href="#"
				class="btn_arr prev"><i class="fa fa-chevron-left"
				aria-hidden="true"></i><span class="hide">이전페이지</span></a> <a href="#"
				class="on">1</a>
			<!-- D : 활성화페이지일 경우 : on 처리 -->
			<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
			<a href="#" class="btn_arr next"><i class="fa fa-chevron-right"
				aria-hidden="true"></i><span class="hide">다음페이지</span></a> <a href="#"
				class="btn_arr last"><i class="fa fa-chevron-right"
				aria-hidden="true"></i><span class="hide">마지막페이지</span></a>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>