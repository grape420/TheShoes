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
		<div class="orderby">
			<span> <select class="filter">
					<option>필터</option>
					<option>최신순</option>
					<option>저가순</option>
					<option>고가순</option>
			</select> <i class="fa fa-sliders" aria-hidden="true"> </i>
			</span> <label class="select"> <select>
					<option>제목 + 내용</option>
					<option>작성자</option>
					<option>제목</option>
					<option>내용</option>
			</select>
			</label>
		</div>
	
		<hr style="border-top: 1px solid rgba(0,0,0,.1); margin-top: 1rem; margin-bottom: 1rem; border: 0;">
		<div class="reselltitle">
			<p class="title">RESELL SHOP</p>
		</div>
		<div class="sc-ciodno jeBajc">
			<div class="sc-bYwvMP dsPtbr">
				<div class="sc-gGCbJM aZXoH">
					<span class="sc-crNyjn fCkOBf">신발</span>의 검색결과 <span
						class="sc-lcpuFF llJACf">51개 </span>
				</div>
			</div>
		</div>
		<div class="row mt-5" id="resellTable" style="width:70%;">
			<c:forEach var="resellList" items="${ requestScope.board }" begin="${ selectCriteria.startRow -1}" end="${ selectCriteria.endRow -1}">
				<div class="col-md-4" style="border: 0!important">
					<div class="card mb-4 border-0" id="resellArea">
						<img id="rsImg" src="/TheShoes/resources/upload/image/resellShoes/${resellList.resellThumb[0].savedName }">
						<div class="card-body ">
							<div class="card-text">
								<p class="none-hover">
									<span class="tit"><c:out value="${ resellList.boardTitle }"/></span> 
									<span class="color"><c:out value="${ resellList.boardContent }"/></span>
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
		<%-- <div class="paging">

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
		<div class="regArea" style="text-align: center; margin: 20px;">
			<a href="#" style="margin: 20px auto;text-decoration: none !important;color: black !important;border: 1px solid gray;padding: 10px 20px;border-radius: 20px;" id="regButton" onclick="location.href='${ pageContext.servletContext.contextPath }/resell/regResell';">게시글 등록</a>
		</div> --%>
		<div class="regArea" style="text-align: center; margin: 20px;">
			<a href="#" id="regButton" onclick="location.href='${ pageContext.servletContext.contextPath }/resell/regResell';">등록하기</a>
		</div>
	</section>
	
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>